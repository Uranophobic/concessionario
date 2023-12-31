package model;

import java.sql.SQLException;
import java.util.ArrayList;


import bean.Ticket;

public interface TicketModel {
	
	
public void doSave(Ticket ticket) throws SQLException;
	
	public void doUpdate(Ticket ticket) throws SQLException;
	
	public void doDelete(Ticket ticket) throws SQLException;
	
	public Ticket doRetrieveByKey(int id_ticket) throws SQLException;
	
	public ArrayList<Ticket> doRetrieveAll() throws SQLException;
	
	public ArrayList<Ticket> doRetrieveByEmail(String email) throws SQLException;
	
	public ArrayList<Ticket> doRetrieveByRisposta(String risposta) throws SQLException;

}
