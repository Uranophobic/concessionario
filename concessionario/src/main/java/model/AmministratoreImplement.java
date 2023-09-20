package model;

import java.sql.SQLException;
import java.util.ArrayList;

import bean.Amministratore;

public class AmministratoreImplement implements AmministratoreModel{

	@Override
	public void doSave(Amministratore acquirente) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Amministratore doRetrieveByKey(String email_amministratore) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Amministratore> doRetrieveAll() throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Amministratore doRetrieveByRuolo(String ruolo) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

}
