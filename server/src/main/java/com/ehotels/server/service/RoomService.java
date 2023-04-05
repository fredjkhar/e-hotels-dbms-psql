package com.ehotels.server.service;

import com.ehotels.server.model.Room;
import com.ehotels.server.repository.RoomRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class RoomService implements RoomRepo {

    private final JdbcTemplate jdbcTemplate;

    @Autowired
    public RoomService(JdbcTemplate jdbcTemplate){ this.jdbcTemplate = jdbcTemplate; }

    @Override
    public List<Room> selectAll() {
        String query = "SELECT * from room";
        return jdbcTemplate.query(query, BeanPropertyRowMapper.newInstance(Room.class));
    }

    @Override
    public Room select(int room_number) {
        String query = "SELECT * from room WHERE room_number=?";
        return jdbcTemplate.queryForObject(query, BeanPropertyRowMapper.newInstance(Room.class), room_number);
    }

    @Override
    public int insert(Room room) {
        String query = "INSERT INTO room (room_number, price, view, capacity, problems, hotel_id)" +
                "VALUES(?, ?, ?, ?, ?, ?)";
        return jdbcTemplate.update(query, room.getRoom_number(), room.getPrice(), room.getView(), room.getCapacity(), room.getProblems(), room.getHotel_id());
    }

    @Override
    public int update(Room room) {
        String query = "UPDATE room SET price=? view=? capacity=? problems=? hotel_id=? WHERE room_number=?";
        return jdbcTemplate.update(query, room.getPrice(), room.getView(), room.getCapacity(), room.getProblems(), room.getHotel_id(), room.getRoom_number());

    }

    @Override
    public int deleteAll() {
        String query = "DELETE FROM room";
        return jdbcTemplate.update(query);
    }

    @Override
    public int delete(int room_number) {
        String query = "DELETE FROM room where room_number=?";
        return jdbcTemplate.update(query, room_number);
    }

    public List<Room> customSelectQuery(String query) {
        return jdbcTemplate.query(query, BeanPropertyRowMapper.newInstance(Room.class));
    }

    public int customUpdateQuery(String query) {
        return jdbcTemplate.update(query);
    }
}
