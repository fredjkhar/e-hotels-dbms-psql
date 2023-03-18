package com.ehotels.server.repository;

import com.ehotels.server.model.HotelGroup;

import java.util.List;

public interface HotelGroupRepo {
    List<HotelGroup> selectAll();

    HotelGroup select(int id);

    void insert(HotelGroup hotelGroup);

    int update(HotelGroup hotelGroup);

    int deleteAll();

    int delete(int id);
}
