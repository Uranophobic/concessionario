package model;

import java.sql.SQLException;
import java.util.ArrayList;

import bean.Amministratore;

public interface AmministratoreModel {
	
	
	public void doSave(Amministratore amministratore) throws SQLException;

	public void doUpdate(Amministratore amministratore) throws SQLException;
	
	public void doDelete(Amministratore amministratore) throws SQLException;

	public Amministratore doRetrieveByKey(String email) throws SQLException;

	public ArrayList<Amministratore> doRetrieveAll() throws SQLException;
	
	public Amministratore doRetrieveByRuolo(String ruolo) throws SQLException;



}
