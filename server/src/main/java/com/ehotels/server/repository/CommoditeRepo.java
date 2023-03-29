package com.ehotels.server.repository;


import com.ehotels.server.model.Commodite;

import java.util.List;

public interface CommoditeRepo {
    List<Commodite> selectAll();

    Commodite select(int idComm);

    int insert(Commodite commodite);

    int update(Commodite commodite);

    int deleteAll();

    int delete(int idComm);
}
