package com.ehotels.server.service;

import com.ehotels.server.model.Commodite;

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
    public List<Commodite> selectAll() {
        String query = "SELECT * from commodite";
        return jdbcTemplate.query(query, BeanPropertyRowMapper.newInstance(Commodite.class));
    }

    @Override
    public Commodite select(int idComm) {
        String query = "SELECT * from commodite WHERE idComm=?";
        return jdbcTemplate.queryForObject(query, BeanPropertyRowMapper.newInstance(Commodite.class), idComm);
    }

    @Override
    public int insert(Commodite commodite) {
        String query = "INSERT INTO commodite (idComm, name, num)"+
                "VALUES(?, ?, ?)";
        return jdbcTemplate.update(query, commodite.getIdComm(), commodite.getName(), commodite.getNum());
    }

    @Override
    public int update(Commodite commodite) {
        String query = "UPDATE commodite SET name=? num=? WHERE commodite=?";
        return jdbcTemplate.update(query, commodite.getIdComm(), commodite.getName(), commodite.getNum());
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
