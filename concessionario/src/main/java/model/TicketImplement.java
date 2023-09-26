package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


import bean.Ticket;
import connessione.Connessione;

public class TicketImplement implements TicketModel {
	
	private Connection con = null;

	@Override
	public void doSave(Ticket ticket) throws SQLException {
		String query = " INSERT INTO ticket(id_ticket,titolo,messaggio,risposta,email_utente)"
				+ "values (?,?,?,?,?)";
		try {
			con = Connessione.getInstance().getConnection();
			PreparedStatement p = con.prepareStatement(query);
			p.setInt(1, ticket.getId_ticket());
			p.setString(2, ticket.getTitolo());
			p.setString(3, ticket.getMessaggio());
			p.setString(4, ticket.getRisposta());
			p.setString(5, ticket.getEmail_utente());
			
			


			p.executeUpdate();
		} catch (SQLException | ClassNotFoundException e) {
			System.out.println(e.getMessage());
		}
		
		
	}

	@Override
	public void doUpdate(Ticket ticket) throws SQLException {
		String query = "UPDATE ticket SET titolo=?, messaggio=?, risposta=?, email_utente=? WHERE id_ticket=?";
		try {
			con = Connessione.getInstance().getConnection();
			PreparedStatement p = con.prepareStatement(query);
			p.setString(1, ticket.getTitolo());
			p.setString(2, ticket.getMessaggio());
			p.setString(3, ticket.getRisposta());
			p.setString(4, ticket.getEmail_utente());
			p.setInt(5, ticket.getId_ticket());
			p.executeUpdate();
		} catch (SQLException | ClassNotFoundException e) {
			System.out.println(e.getMessage());
			}
		
	}

	@Override
	public void doDelete(Ticket ticket) throws SQLException {
		 String query = "DELETE FROM ticket WHERE id_ticket ='"+ticket.getId_ticket()+"'";
	        
	        try {
	            con = Connessione.getInstance().getConnection();
	            PreparedStatement pst = con.prepareStatement(query);
	            pst.executeUpdate();
	        } catch (SQLException | ClassNotFoundException e) {
	            System.out.println(e.getMessage());
	        }
		
	}

	@Override
	public Ticket doRetrieveByKey(int id_ticket) throws SQLException {
		ResultSet result = null;
		Ticket m = new Ticket();
		String query = "SELECT * FROM ticket WHERE id_ticket ='"+id_ticket+"'";
		
	        
	        try {
	            con = Connessione.getInstance().getConnection();
	            PreparedStatement pst = con.prepareStatement(query);
	            result = pst.executeQuery();
	            while(result.next()) {
	            	m.setTitolo(result.getString("titolo"));
	            	m.setMessaggio(result.getString("messaggio"));
	            	m.setRisposta(result.getString("risposta"));
	            	m.setEmail_utente(result.getString("email_utente"));
	            	m.setId_ticket(id_ticket);
	            	
	            }
	        } catch (SQLException | ClassNotFoundException e) {
	            System.out.println(e.getMessage());
	        }
		return m;
		
	}

	@Override
	public ArrayList<Ticket> doRetrieveAll() throws SQLException {
		
		ResultSet result = null;
		Ticket m = new Ticket();
		ArrayList<Ticket> allTicket =  new ArrayList<Ticket>();
		String query = "SELECT * FROM ticket ";
	        
	        try {
	            con = Connessione.getInstance().getConnection();
	            PreparedStatement pst = con.prepareStatement(query);
	            result = pst.executeQuery();
	            
	            while(result.next()) {
	            	m.setTitolo(result.getString("titolo"));
	            	m.setMessaggio(result.getString("messaggio"));
	            	m.setRisposta(result.getString("risposta"));
	            	m.setEmail_utente(result.getString("email_utente"));
	            	
	            	
	            	allTicket.add(m);
	            }
	        } catch (SQLException | ClassNotFoundException e) {
	            System.out.println(e.getMessage());
	        }
		return allTicket;
	}

	@Override
	public ArrayList<Ticket> doRetrieveByEmail(String email) throws SQLException {
		ResultSet result = null;
		
		ArrayList<Ticket> allTicket =  new ArrayList<Ticket>();
		String query = "SELECT * FROM ticket WHERE email_utente ='"+email+"'";
	        
	        try {
	            con = Connessione.getInstance().getConnection();
	            PreparedStatement pst = con.prepareStatement(query);
	            result = pst.executeQuery();
	            
	            while(result.next()) {
	            	
	            	Ticket m = new Ticket();
	            	
	            	m.setId_ticket(result.getInt("id_ticket"));
	            	m.setTitolo(result.getString("titolo"));
	            	m.setMessaggio(result.getString("messaggio"));
	            	m.setRisposta(result.getString("risposta"));
	            	m.setEmail_utente(result.getString("email_utente"));
	            	
	            	
	            	allTicket.add(m);
	            }
	        } catch (SQLException | ClassNotFoundException e) {
	            System.out.println(e.getMessage());
	        }
		return allTicket;
		
	}

	@Override
	public ArrayList<Ticket> doRetrieveByRisposta(String risposta) throws SQLException {
		ArrayList<Ticket> allTicket = new ArrayList<>();
		ResultSet result = null;
		
		String query = "SELECT * FROM ticket WHERE risposta ='"+risposta+"'";
	        
	        try {
	            con = Connessione.getInstance().getConnection();
	            PreparedStatement pst = con.prepareStatement(query);
	            result = pst.executeQuery();
	            while(result.next()) {
	            	Ticket m = new Ticket();
	            	m.setId_ticket(result.getInt("id_ticket"));
	            	m.setTitolo(result.getString("titolo"));
	            	m.setMessaggio(result.getString("messaggio"));
	            	m.setRisposta(result.getString("risposta"));
	            	m.setEmail_utente(result.getString("email_utente"));
	            	allTicket.add(m);
	            }
	        } catch (SQLException | ClassNotFoundException e) {
	            System.out.println(e.getMessage());
	        }
		return allTicket;
		
	}

	}


