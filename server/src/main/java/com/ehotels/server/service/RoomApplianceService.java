package com.ehotels.server.service;

import com.ehotels.server.model.Reservation;
import com.ehotels.server.model.RoomAppliance;
import com.ehotels.server.repository.RoomApplianceRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoomApplianceService implements RoomApplianceRepo {

    private final JdbcTemplate jdbcTemplate;

    @Autowired
    public RoomApplianceService(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public List<RoomAppliance> selectAll() {
        String query = "SELECT * from room_appliance";
        return jdbcTemplate.query(query, BeanPropertyRowMapper.newInstance(RoomAppliance.class));
    }

    @Override
    public RoomAppliance select(int room_number, int appliance_id) {
        String query = "SELECT * from room_appliance WHERE room_number=? AND appliance_id=?";
        return jdbcTemplate.queryForObject(query, BeanPropertyRowMapper.newInstance(RoomAppliance.class), room_number, appliance_id);
    }

    @Override
    public int insert(RoomAppliance roomAppliance) {
        String query = "INSERT INTO room_appliance (room_number, appliance_id)"+
                "VALUES(?, ?)";
        return jdbcTemplate.update(query, roomAppliance.getRoom_number(), roomAppliance.getAppliance_id());
    }

    @Override
    public int update(RoomAppliance roomAppliance) {
        String query = "UPDATE room_appliance SET appliance_id=? WHERE room_number=?";
        return jdbcTemplate.update(query, roomAppliance.getAppliance_id(), roomAppliance.getRoom_number());
    }

    @Override
    public int deleteAll() {
        String query = "DELETE FROM room_appliance";
        return jdbcTemplate.update(query);
    }

    @Override
    public int delete(int room_number, int appliance_id) {
        String query = "DELETE FROM room_appliance where room_number=? AND appliance_id=?";
        return jdbcTemplate.update(query, room_number, appliance_id);
    }

    public List<RoomAppliance> customSelectQuery(String query) {
        return jdbcTemplate.query(query, BeanPropertyRowMapper.newInstance(RoomAppliance.class));
    }

    public int customUpdateQuery(String query) {
        return jdbcTemplate.update(query);
    }
}
