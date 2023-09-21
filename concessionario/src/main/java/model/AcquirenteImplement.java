package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import bean.Acquirente;

import connessione.Connessione;

public class AcquirenteImplement implements AcquirenteModel {

	private Connection con = null;

	@Override
	public void doSave(Acquirente acquirente) throws SQLException {
		String query = " INSERT INTO acquirente(email,password,nome,cognome,età,indirizzo,patente,anno_patente)"
				+ "values (?,?,?,?,?,?,?,?)";
		try {
			con = Connessione.getInstance().getConnection();
			PreparedStatement p = con.prepareStatement(query);
			p.setString(1, acquirente.getEmail());
			p.setString(2, acquirente.getPassword());
			p.setString(3, acquirente.getNome());
			p.setString(4, acquirente.getCognome());
			p.setInt(5, acquirente.getEta());
			p.setString(6, acquirente.getIndirizzoResidenza());
			p.setString(7, acquirente.getPatente());	
			p.setInt(8, acquirente.getAnnoPatente());


			p.executeUpdate();
		} catch (SQLException | ClassNotFoundException e) {
			System.out.println(e.getMessage());
		}

	}

	@Override
	public Acquirente doRetrieveByKey(String email_acquirente) throws SQLException {
		ResultSet result = null;
		Acquirente m = new Acquirente();
		String query = "SELECT FROM acquirente WHERE email_acquirente ='"+email_acquirente+"'";
	        
	        try {
	            con = Connessione.getInstance().getConnection();
	            PreparedStatement pst = con.prepareStatement(query);
	            result = pst.executeQuery();
	            while(result.next()) {
	            	m.setPassword(result.getString("password"));
	            	m.setNome(result.getString("nome"));
	            	m.setCognome(result.getString("cognome"));
	            	m.setEta(result.getInt("età"));
	            	m.setIndirizzoResidenza(result.getString("indirizzo"));
	            	m.setPatente(result.getString("patente"));
	            	m.setAnnoPatente(result.getInt("anno_patente"));
	            	
	            }
	        } catch (SQLException | ClassNotFoundException e) {
	            System.out.println(e.getMessage());
	        }
		return m;
	}


	@Override
	public ArrayList<Acquirente> doRetrieveAll() throws SQLException {
		
		ResultSet result = null;
		Acquirente m = new Acquirente();
		ArrayList<Acquirente> allAcquirenti =  new ArrayList<Acquirente>();
		String query = "SELECT * FROM acquirente ";
	        
	        try {
	            con = Connessione.getInstance().getConnection();
	            PreparedStatement pst = con.prepareStatement(query);
	            result = pst.executeQuery();
	            
	            while(result.next()) {
	            	m.setPassword(result.getString("password"));
	            	m.setNome(result.getString("nome"));
	            	m.setCognome(result.getString("cognome"));
	            	m.setEta(result.getInt("età"));
	            	m.setIndirizzoResidenza(result.getString("indirizzo"));
	            	m.setPatente(result.getString("patente"));
	            	m.setAnnoPatente(result.getInt("anno_patente"));
	            	
	            	allAcquirenti.add(m);
	            }
	        } catch (SQLException | ClassNotFoundException e) {
	            System.out.println(e.getMessage());
	        }
		return allAcquirenti;

		
	}

}
