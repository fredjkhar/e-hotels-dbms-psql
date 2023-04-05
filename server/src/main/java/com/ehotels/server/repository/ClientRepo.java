package com.ehotels.server.repository;
import com.ehotels.server.model.Client;

import java.util.List;

public interface ClientRepo {

    List<Client> selectAll();

    Client select(int NAS_client);

    int insert(Client client);

    int update(Client client);

    int deleteAll();

    int delete(int NAS_client);

    List<Client> customSelectQuery(String query);

    int customUpdateQuery(String query);
}
