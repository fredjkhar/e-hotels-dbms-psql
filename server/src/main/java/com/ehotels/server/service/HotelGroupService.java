package com.ehotels.server.service;

import com.ehotels.server.model.HotelGroup;
import com.ehotels.server.repository.HotelGroupRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class HotelGroupService implements HotelGroupRepo {

    private final JdbcTemplate jdbcTemplate;

    @Autowired
    public HotelGroupService(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public List<HotelGroup> selectAll() {
        String query = "SELECT * FROM hotel_group";
        return jdbcTemplate.query(query, BeanPropertyRowMapper.newInstance(HotelGroup.class));
    }

    @Override
    public HotelGroup select(int id) {
        String query = "SELECT * FROM hotel_group WHERE id=?";
        return jdbcTemplate.queryForObject(query, BeanPropertyRowMapper.newInstance(HotelGroup.class), id);
    }

    @Override
    public void insert(HotelGroup hotelGroup) {
        String query = "INSERT INTO hotel_group (id, name, hotels_nbr, phone_nbr, email, unit_nbr, address, city, province, postal_code, country) " +
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        jdbcTemplate.update(query, hotelGroup.getId(), hotelGroup.getName(), hotelGroup.getHotels_nbr(), hotelGroup.getPhone_nbr(), hotelGroup.getEmail(),
                hotelGroup.getUnit_nbr(), hotelGroup.getAddress(), hotelGroup.getCity(), hotelGroup.getProvince(),
                hotelGroup.getPostal_code(), hotelGroup.getCountry());
    }

    @Override
    public int update(HotelGroup hotelGroup) {
        String query = "UPDATE hotel_group SET name=? hotels_nbr=?, phone_nbr=?, email=?, unit_nbr=?, address=?, city=?, province=?, " +
                "postal_code=?, country=? WHERE id=?";
        return jdbcTemplate.update(query, hotelGroup.getHotels_nbr(), hotelGroup.getPhone_nbr(), hotelGroup.getEmail(),
                hotelGroup.getUnit_nbr(), hotelGroup.getAddress(), hotelGroup.getCity(), hotelGroup.getProvince(),
                hotelGroup.getPostal_code(), hotelGroup.getCountry(), hotelGroup.getId());
    }

    @Override
    public int deleteAll() {
        String query = "DELETE FROM hotel_group";
        return jdbcTemplate.update(query);
    }

    @Override
    public int delete(int id) {
        String query = "DELETE FROM hotel_group";
        return jdbcTemplate.update(query, id);
    }
}
