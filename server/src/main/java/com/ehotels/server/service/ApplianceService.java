package com.ehotels.server.service;

import com.ehotels.server.model.Appliance;

import com.ehotels.server.repository.CommoditeRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;


import java.util.List;
@Repository
public class CommoditeService implements CommoditeRepo {

    private final JdbcTemplate jdbcTemplate;

    @Autowired
    public CommoditeService(JdbcTemplate jdbcTemplate){this.jdbcTemplate = jdbcTemplate;}

    @Override
    public List<Appliance> selectAll() {
        String query = "SELECT * from commodite";
        return jdbcTemplate.query(query, BeanPropertyRowMapper.newInstance(Appliance.class));
    }

    @Override
    public Appliance select(int idComm) {
        String query = "SELECT * from commodite WHERE idComm=?";
        return jdbcTemplate.queryForObject(query, BeanPropertyRowMapper.newInstance(Appliance.class), idComm);
    }

    @Override
    public int insert(Appliance appliance) {
        String query = "INSERT INTO appliance (idComm, name, num)"+
                "VALUES(?, ?, ?)";
        return jdbcTemplate.update(query, appliance.getIdComm(), appliance.getName(), appliance.getNum());
    }

    @Override
    public int update(Appliance appliance) {
        String query = "UPDATE appliance SET name=? num=? WHERE appliance=?";
        return jdbcTemplate.update(query, appliance.getIdComm(), appliance.getName(), appliance.getNum());
    }

    @Override
    public int deleteAll() {
        String query = "DELETE FROM commodite";
        return jdbcTemplate.update(query);
    }

    @Override
    public int delete(int idComm) {
        String query = "DELETE FROM commodite where idComm=?";
        return jdbcTemplate.update(query, idComm);
    }
}
