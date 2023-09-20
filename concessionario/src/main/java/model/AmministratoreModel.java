package model;

import java.sql.SQLException;
import java.util.ArrayList;

import bean.Amministratore;

public interface AmministratoreModel {
	
	
	public void doSave(Amministratore acquirente) throws SQLException;


	public Amministratore doRetrieveByKey(String email_amministratore) throws SQLException;

	public ArrayList<Amministratore> doRetrieveAll() throws SQLException;
	
	public Amministratore doRetrieveByRuolo(String ruolo) throws SQLException;



}
