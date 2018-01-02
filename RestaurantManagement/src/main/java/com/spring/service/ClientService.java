package com.spring.service;

import com.spring.model.Client;

public interface ClientService {
	void saveClient(Client client);
	Client getClientByUsername(String username);
}
