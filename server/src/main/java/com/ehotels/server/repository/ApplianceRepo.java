package com.ehotels.server.repository;


import com.ehotels.server.model.Appliance;

import java.util.List;

public interface ApplianceRepo {
    List<Appliance> selectAll();

    Appliance select(int appliance_id);

    int insert(Appliance appliance);

    int update(Appliance appliance);

    int deleteAll();

    int delete(int appliance_id);
}
