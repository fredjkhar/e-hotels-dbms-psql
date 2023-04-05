package com.ehotels.server.service;

import com.ehotels.server.model.Reservation;
import com.ehotels.server.repository.ReservationRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;


import java.util.List;
@Repository
public class ReservationService implements ReservationRepo {

    private final JdbcTemplate jdbcTemplate;

    @Autowired
    public ReservationService(JdbcTemplate jdbcTemplate){this.jdbcTemplate = jdbcTemplate;}

    @Override
    public List<Reservation> selectAll() {
        String query = "SELECT * from reservation";
        return jdbcTemplate.query(query, BeanPropertyRowMapper.newInstance(Reservation.class));
    }

    @Override
    public Reservation select(int reservation_id) {
        String query = "SELECT * from reservation WHERE reservation_id=?";
        return jdbcTemplate.queryForObject(query, BeanPropertyRowMapper.newInstance(Reservation.class), reservation_id);
    }

    @Override
    public int insert(Reservation reservation) {
        String query = "INSERT INTO reservation (reservation_id, start_date, end_date, NAS_client, room_number)"+
                "VALUES(?, ?, ?, ?, ?)";
        return jdbcTemplate.update(query, reservation.getReservation_id(), reservation.getStart_date(), reservation.getEnd_date(), reservation.getNAS_client(), reservation.getRoom_number());
    }

    @Override
    public int update(Reservation reservation) {
        String query = "UPDATE reservation SET reservation_id=?, start_date=?, end_date=?, NAS_client=?, room_number=? WHERE reservation_id=?";
        return jdbcTemplate.update(query, reservation.getReservation_id(), reservation.getStart_date(), reservation.getEnd_date(), reservation.getNAS_client(), reservation.getRoom_number(), reservation.getReservation_id());
    }

    @Override
    public int deleteAll() {
        String query = "DELETE FROM reservation";
        return jdbcTemplate.update(query);
    }

    @Override
    public int delete(int reservation_id) {
        String query = "DELETE FROM reservation where reservation_id=?";
        return jdbcTemplate.update(query, reservation_id);
    }

    public List<Reservation> customSelectQuery(String query) {
        return jdbcTemplate.query(query, BeanPropertyRowMapper.newInstance(Reservation.class));
    }

    public int customUpdateQuery(String query) {
        return jdbcTemplate.update(query);
    }
}
