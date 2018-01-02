package com.spring.service.impl;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.spring.dao.ClientDao;
import com.spring.model.Client;
import com.spring.service.ClientService;

@Service("clientService")
@Transactional
public class ClientServiceImpl implements ClientService {
	
	@Autowired
	private ClientDao _clientDao;

	@Override
	public void saveClient(Client client) {
		// TODO Auto-generated method stub
		_clientDao.saveClient(client);
	}
	
	private Client _convertToClient(Object[] clientObj) {
		int clientId = Integer.valueOf(String.valueOf(clientObj[0]));
		String clientName = String.valueOf(clientObj[1]);
		String clientPhone = String.valueOf(clientObj[2]);
		String clientAddress = String.valueOf(clientObj[3]);
		String username = String.valueOf(clientObj[4]);
		
		Client client = new Client(clientName, clientPhone, clientAddress, username);
		client.setId(clientId);
		return client;
	}

	@Override
	public Client getClientByUsername(String username) {
		// TODO Auto-generated method stub
		Object[] clientObj = _clientDao.getClientByUsername(username);
		Client client = _convertToClient(clientObj);
		return client;
	}
	
}
