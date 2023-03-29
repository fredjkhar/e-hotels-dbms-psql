package com.ehotels.server.repository;

import com.ehotels.server.model.Location;


import java.util.List;

public interface LocationRepo {

    List<Location> selectAll();

    Location select(int location_id);

    int insert(Location location);

    int update(Location location);

    int deleteAll();

    int delete(int location_id);

}
