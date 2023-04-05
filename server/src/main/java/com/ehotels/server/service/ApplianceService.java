package com.ehotels.server.service;

import com.ehotels.server.model.Appliance;

import com.ehotels.server.repository.ApplianceRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;


import java.util.List;
@Repository
public class ApplianceService implements ApplianceRepo {

    private final JdbcTemplate jdbcTemplate;

    @Autowired
    public ApplianceService(JdbcTemplate jdbcTemplate){this.jdbcTemplate = jdbcTemplate;}

    @Override
    public List<Appliance> selectAll() {
        String query = "SELECT * from appliance";
        return jdbcTemplate.query(query, BeanPropertyRowMapper.newInstance(Appliance.class));
    }

    @Override
    public Appliance select(int appliance_id) {
        String query = "SELECT * from appliance WHERE appliance_id=?";
        return jdbcTemplate.queryForObject(query, BeanPropertyRowMapper.newInstance(Appliance.class), appliance_id);
    }

    @Override
    public int insert(Appliance appliance) {
        String query = "INSERT INTO appliance (appliance_id, name)"+
                "VALUES(?, ?)";
        return jdbcTemplate.update(query, appliance.getAppliance_id(), appliance.getName());
    }

    @Override
    public int update(Appliance appliance) {
        String query = "UPDATE appliance SET name=? WHERE appliance_id=?";
        return jdbcTemplate.update(query, appliance.getName(), appliance.getAppliance_id());
    }

    @Override
    public int deleteAll() {
        String query = "DELETE FROM appliance";
        return jdbcTemplate.update(query);
    }

    @Override
    public int delete(int appliance_id) {
        String query = "DELETE FROM appliance where appliance_id=?";
        return jdbcTemplate.update(query, appliance_id);
    }
}
