package com.ehotels.server.service;

import com.ehotels.server.model.Client;
import com.ehotels.server.repository.ClientRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;


import java.util.List;
@Repository
public class ClientService implements ClientRepo {

    private final JdbcTemplate jdbcTemplate;

    @Autowired
    public ClientService(JdbcTemplate jdbcTemplate){this.jdbcTemplate = jdbcTemplate;}

    @Override
    public List<Client> selectAll() {
        String query = "SELECT * from client";
        return jdbcTemplate.query(query, BeanPropertyRowMapper.newInstance(Client.class));
    }

    @Override
    public Client select(int NAS_client) {
        String query = "SELECT * from client WHERE NAS_client=?";
        return jdbcTemplate.queryForObject(query, BeanPropertyRowMapper.newInstance(Client.class), NAS_client);
    }

    @Override
    public int insert(Client client) {
        String query = "INSERT INTO client (NAS_client, last_name, first_name, age, street_number, street, city, province, country, postal_code, phone_number, email, registrationDate, password)"+
                "VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        return jdbcTemplate.update(query, client.getNAS_client(), client.getLastName(), client.getFirstName(), client.getStreetNum(), client.getStreet(), client.getCity(), client.getProvince(), client.getCountry(), client.getPostalCode(), client.getPhoneNum(), client.getEmail(), client.getRegistrationDate(), client.getPassword());
    }

    @Override
    public int update(Client client) {
        String query = "UPDATE client SET NAS_client=? last_name=? first_name=? age=? street_number=? street=? city=? province=? country=? postal_code=? phone_number=? email=? registrationDate=? password=? WHERE NAS_client=?";
        return jdbcTemplate.update(query, client.getLastName(), client.getFirstName(), client.getStreetNum(), client.getStreet(), client.getCity(), client.getProvince(), client.getCountry(), client.getPostalCode(), client.getPhoneNum(), client.getEmail(), client.getRegistrationDate(), client.getPassword(), client.getNAS_client());
    }

    @Override
    public int deleteAll() {
        String query = "DELETE FROM client";
        return jdbcTemplate.update(query);
    }

    @Override
    public int delete(int NAS_client) {
        String query = "DELETE FROM client where NAS_client=?";
        return jdbcTemplate.update(query, NAS_client);
    }
}
