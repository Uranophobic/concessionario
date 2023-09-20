package model;

import java.sql.SQLException;
import java.util.ArrayList;

import bean.Macchina;

public interface MacchinaModel {

	
	public void doSave(Macchina macchina) throws SQLException;
	
	public void doUpdate(Macchina macchina) throws SQLException;
	
	public void doDelete(Macchina macchina) throws SQLException;
	
	public Macchina doRetrieveByKey(String id_auto) throws SQLException;
	
	public ArrayList<Macchina> doRetrieveAll() throws SQLException;
}


