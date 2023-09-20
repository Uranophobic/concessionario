package model;

import java.sql.SQLException;
import java.util.ArrayList;

import bean.Acquirente;


public interface AcquirenteModel{

	public void doSave(Acquirente acquirente) throws SQLException;


	public Acquirente doRetrieveByKey(String email_acquirente) throws SQLException;

	public ArrayList<Acquirente> doRetrieveAll() throws SQLException;

}


