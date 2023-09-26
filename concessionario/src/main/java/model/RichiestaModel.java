package model;

import java.sql.SQLException;
import java.util.ArrayList;

import bean.Richiesta;



public interface RichiestaModel {

	
	
public void doSave(Richiesta richiesta) throws SQLException;
	
	public void doUpdate(Richiesta richiesta) throws SQLException;
	
	public void doDelete(Richiesta richiesta) throws SQLException;
	
	public Richiesta doRetrieveByKey(int id_richiesta) throws SQLException;
	
	public ArrayList<Richiesta> doRetrieveByEmail(String email) throws SQLException;
	
	public ArrayList<Richiesta> doRetrieveAll() throws SQLException;
	
	public ArrayList<Richiesta> doRetrieveByStatus (String status)throws SQLException;
}
