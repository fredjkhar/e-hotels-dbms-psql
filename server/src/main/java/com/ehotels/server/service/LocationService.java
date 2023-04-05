package com.ehotels.server.service;

import com.ehotels.server.model.Location;
import com.ehotels.server.repository.LocationRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;


import java.util.List;
@Repository
public class LocationService implements LocationRepo {

    private final JdbcTemplate jdbcTemplate;

    @Autowired
    public LocationService(JdbcTemplate jdbcTemplate){this.jdbcTemplate = jdbcTemplate;}

    @Override
    public List<Location> selectAll() {
        String query = "SELECT * from location";
        return jdbcTemplate.query(query, BeanPropertyRowMapper.newInstance(Location.class));
    }

    @Override
    public Location select(int location_id) {
        String query = "SELECT * from location WHERE location_id=?";
        return jdbcTemplate.queryForObject(query, BeanPropertyRowMapper.newInstance(Location.class), location_id);
    }

    @Override
    public int insert(Location location) {
        String query = "INSERT INTO location (location_id, startDate, endDate, NAS_client, NAS_employe, nbr)"+
                "VALUES(?, ?, ?, ?, ?, ?)";
        return jdbcTemplate.update(query, location.getLocation_id(), location.getStart_date(), location.getEnd_date(), location.getNAS_client(), location.getNAS_employee(), location.getNum());
    }

    @Override
    public int update(Location location) {
        String query = "UPDATE employee SET startDate=? endDate=? NAS_client=? NAS_employe=? nbr=? WHERE location_id=?";
        return jdbcTemplate.update(query, location.getStart_date(), location.getEnd_date(), location.getNAS_client(), location.getNAS_employee(), location.getNum());
    }

    @Override
    public int deleteAll() {
        String query = "DELETE FROM location";
        return jdbcTemplate.update(query);
    }

    @Override
    public int delete(int location_id) {
        String query = "DELETE FROM location where location_id=?";
        return jdbcTemplate.update(query, location_id);
    }

    public List<Location> customSelectQuery(String query) {
        return jdbcTemplate.query(query, BeanPropertyRowMapper.newInstance(Location.class));
    }

    public int customUpdateQuery(String query) {
        return jdbcTemplate.update(query);
    }
}
