package com.spring.dao;

import com.spring.model.Client;

public interface ClientDao {
	void saveClient(Client client);
	Object[] getClientByUsername(String username);
        Client getClientById(int id);
}
