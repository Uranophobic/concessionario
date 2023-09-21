package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import bean.Amministratore;
import connessione.Connessione;

public class AmministratoreImplement implements AmministratoreModel{
	
	private Connection con = null;

	@Override
	public void doSave(Amministratore amministratore) throws SQLException {
		String query = " INSERT INTO amministratore(email,password,nome,cognome,ruolo)"
				+ "values (?,?,?,?,?)";
		try {
			con = Connessione.getInstance().getConnection();
			PreparedStatement p = con.prepareStatement(query);
			p.setString(1, amministratore.getEmail());
			p.setString(2, amministratore.getPassword());
			p.setString(3, amministratore.getNome());
			p.setString(4, amministratore.getCognome());
			p.setString(5, amministratore.getRuolo());

			
			p.executeUpdate();
		} catch (SQLException | ClassNotFoundException e) {
			System.out.println(e.getMessage());
			}
		
	}
	
	@Override
	public void doUpdate(Amministratore amministratore) throws SQLException {
		String query = " UPDATE INTO amministratore(email,,password,nome,cognome,ruolo)"
				+ "values (?,?,?,?,?) WHERE  email ='"+ amministratore.getEmail()+"'";
		try {
			con = Connessione.getInstance().getConnection();
			PreparedStatement p = con.prepareStatement(query);
			p.setString(1, amministratore.getEmail());
			p.setString(2, amministratore.getPassword());
			p.setString(3, amministratore.getNome());
			p.setString(4, amministratore.getCognome());
			p.setString(5, amministratore.getRuolo());
			
			p.executeUpdate();
		} catch (SQLException | ClassNotFoundException e) {
			System.out.println(e.getMessage());
			}
		
	}

	@Override
	public void doDelete(Amministratore amministratore) throws SQLException {
		 String query = "DELETE FROM amministratore WHERE email ='"+amministratore.getEmail()+"'";
	        
	        try {
	            con = Connessione.getInstance().getConnection();
	            PreparedStatement pst = con.prepareStatement(query);
	            pst.executeUpdate();
	        } catch (SQLException | ClassNotFoundException e) {
	            System.out.println(e.getMessage());
	        }
		
	}

	@Override
	public Amministratore doRetrieveByKey(String email) throws SQLException {
		ResultSet result = null;
		Amministratore m = new Amministratore();
		String query = "SELECT FROM amministratore WHERE email ='"+email+"'";
	        
	        try {
	            con = Connessione.getInstance().getConnection();
	            PreparedStatement pst = con.prepareStatement(query);
	            result = pst.executeQuery();
	            while(result.next()) {
	            	m.setEmail(result.getString("email"));
	            	m.setPassword(result.getString("password"));
	            	m.setNome(result.getString("nome"));
	            	m.setCognome(result.getString("cognome"));
	            	m.setRuolo(result.getString("ruolo"));
	            }
	        } catch (SQLException | ClassNotFoundException e) {
	            System.out.println(e.getMessage());
	        }
		return m;
	}

	@Override
	public ArrayList<Amministratore> doRetrieveAll() throws SQLException {
		ResultSet result = null;
		Amministratore m = new Amministratore();
		ArrayList<Amministratore> allAmministratore =  new ArrayList<Amministratore>();
		String query = "SELECT * FROM amministratore ";
	        
	        try {
	            con = Connessione.getInstance().getConnection();
	            PreparedStatement pst = con.prepareStatement(query);
	            result = pst.executeQuery();
	            
	            while(result.next()) {
	            	m.setEmail(result.getString("email"));
	            	m.setPassword(result.getString("password"));
	            	m.setNome(result.getString("nome"));
	            	m.setCognome(result.getString("cognome"));
	            	m.setRuolo(result.getString("ruolo"));
	            	
	            	allAmministratore.add(m);
	            }
	        } catch (SQLException | ClassNotFoundException e) {
	            System.out.println(e.getMessage());
	        }
		return allAmministratore;
	}

	@Override
	public Amministratore doRetrieveByRuolo(String ruolo) throws SQLException {
		ResultSet result = null;
		Amministratore m = new Amministratore();
		String query = "SELECT FROM amministratore WHERE ruolo ='"+ruolo+"'";
	        
	        try {
	            con = Connessione.getInstance().getConnection();
	            PreparedStatement pst = con.prepareStatement(query);
	            result = pst.executeQuery();
	            while(result.next()) {
	            	m.setEmail(result.getString("email"));
	            	m.setPassword(result.getString("password"));
	            	m.setNome(result.getString("nome"));
	            	m.setCognome(result.getString("cognome"));
	            	m.setRuolo(result.getString("ruolo"));
	            }
	        } catch (SQLException | ClassNotFoundException e) {
	            System.out.println(e.getMessage());
	        }
		return m;
	}

}
