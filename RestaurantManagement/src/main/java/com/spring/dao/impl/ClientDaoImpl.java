package com.spring.dao.impl;

import org.hibernate.SQLQuery;
import org.springframework.stereotype.Repository;

import com.spring.dao.AbstractDao;
import com.spring.dao.ClientDao;
import com.spring.model.Client;
import com.spring.util.SQLConstant;

@Repository("clientDao")
public class ClientDaoImpl extends AbstractDao<Integer, Client> implements ClientDao {

	@Override
	public void saveClient(Client client) {
		// TODO Auto-generated method stub
		persist(client);
	}

	@Override
	public Object[] getClientByUsername(String username) {
		// TODO Auto-generated method stub
		SQLQuery sqlQuery = getSession().createSQLQuery(SQLConstant.SQL_GET_CLIENT_BY_USERNAME);
		sqlQuery.setString("username", username);
		Object[] client = (Object[]) sqlQuery.uniqueResult();
		return client;
	}

	
}
