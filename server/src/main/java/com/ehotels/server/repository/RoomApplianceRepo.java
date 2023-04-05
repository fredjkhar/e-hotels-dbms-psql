package com.ehotels.server.repository;
import com.ehotels.server.model.RoomAppliance;

import java.util.List;

public interface RoomApplianceRepo {
    List<RoomAppliance> selectAll();

    RoomAppliance select(int room_number, int appliance_id);

    int insert(RoomAppliance roomAppliance);

    int update(RoomAppliance roomAppliance);

    int deleteAll();

    int delete(int room_number, int appliance_id);

    List<RoomAppliance> customSelectQuery(String query);

    int customUpdateQuery(String query);
}
