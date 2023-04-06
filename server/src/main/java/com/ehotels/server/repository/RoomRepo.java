package com.ehotels.server.repository;

import com.ehotels.server.model.Room;

import java.util.List;

public interface RoomRepo {

    List<Room> selectAll();

    Room select(int room_number);

    int insert(Room room);

    int update(Room room);

    int deleteAll();

    int delete(int room_number);

    List<Room> customSelectQuery(String query);

    int customUpdateQuery(String query);

}
