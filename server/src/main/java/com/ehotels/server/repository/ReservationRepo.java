package com.ehotels.server.repository;


import com.ehotels.server.model.Reservation;


import java.util.List;

public interface ReservationRepo {

    List<Reservation> selectAll();

    Reservation select(int reservation_id);

    int insert(Reservation reservation_id);

    int update(Reservation reservation_id);

    int deleteAll();

    int delete(int reservation_id);

}
