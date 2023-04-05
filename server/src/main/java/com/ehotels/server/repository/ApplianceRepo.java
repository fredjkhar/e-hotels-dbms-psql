package com.ehotels.server.repository;


import com.ehotels.server.model.Appliance;

import java.util.List;

public interface CommoditeRepo {
    List<Appliance> selectAll();

    Appliance select(int idComm);

    int insert(Appliance appliance);

    int update(Appliance appliance);

    int deleteAll();

    int delete(int idComm);
}
