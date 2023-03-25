package com.ehotels.server.service;

import com.ehotels.server.model.Hotel;
import com.ehotels.server.repository.HotelRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class HotelService implements HotelRepo {

    private final JdbcTemplate jdbcTemplate;

    @Autowired
    HotelService(JdbcTemplate jdbcTemplate){ this.jdbcTemplate = jdbcTemplate; }


    @Override
    public List<Hotel> selectAll() {
        String query = "SELECT * FROM hotel";
        return jdbcTemplate.query(query, BeanPropertyRowMapper.newInstance(Hotel.class));
    }

    @Override
    public Hotel select(int hotel_id) {
        String query = "SELECT * FROM hotel Where hotel_id=?";
        return jdbcTemplate.queryForObject(query, BeanPropertyRowMapper.newInstance(Hotel.class), hotel_id);
    }

    @Override
    public int insert(Hotel hotel) {
        String query = "INSERT INTO hotel (hotel_id, name, street_number, street, city, province, country, postal_code, phone_number, email, rating, hotel_group_id)" +
                "VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        return jdbcTemplate.update(query, hotel.getHotel_id(), hotel.getName(), hotel.getStreet_number(), hotel.getStreet(), hotel.getCity(), hotel.getProvince(), hotel.getCountry(), hotel.getPostal_code(), hotel.getPhone_number(), hotel.getEmail(), hotel.getRating(), hotel.getHotel_group_id());
    }

    @Override
    public int update(Hotel hotel) {
        String query = "UPDATE hotel SET name=? street_number=? street=? city=? province=? country=? postal_code=? phone_number=? email=? rating=? hotel_group_id=? WHERE hotel_id=?";
        return jdbcTemplate.update(query, hotel.getName(), hotel.getStreet_number(), hotel.getStreet(), hotel.getCity(), hotel.getProvince(), hotel.getCountry(), hotel.getPostal_code(), hotel.getPhone_number(), hotel.getEmail(), hotel.getRating(), hotel.getHotel_group_id(),  hotel.getHotel_id());
    }

    @Override
    public int deleteAll() {
        String query = "DELETE FROM hotel";
        return jdbcTemplate.update(query);
    }

    @Override
    public int delete(int hotel_id) {
        String query = "DELETE FROM hotel where hotel_id=?";
        return jdbcTemplate.update(query, hotel_id);
    }
}
