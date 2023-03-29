package com.ehotels.server.repository;

import com.ehotels.server.model.Hotel;

import java.util.List;

public interface  HotelRepo {

    List<Hotel> selectAll();

    Hotel select(int hotel_id);

    int insert(Hotel hotel);

    int update(Hotel hotel);

    int deleteAll();

    int delete(int hotel_id);

}
