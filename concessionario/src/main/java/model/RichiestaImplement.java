package model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import bean.Feedback;
import bean.Richiesta;
import connessione.Connessione;

public class RichiestaImplement implements RichiestaModel {
	private Connection con = null;

	@Override
	public void doSave(Richiesta richiesta) throws SQLException {
	    String query = "INSERT INTO richiesta (id_richiesta, tipo_richiesta, data, messaggio, status, email_utente, id_auto) "
	                 + "VALUES (?, ?, ?, ?, ?, ?, ?)";
	    try {
	        con = Connessione.getInstance().getConnection();
	        PreparedStatement p = con.prepareStatement(query);
	        p.setInt(1, richiesta.getId_richiesta());
	        p.setString(2, richiesta.getTipo_richiesta());
	        p.setString(3, richiesta.getData());
	        p.setString(4, richiesta.getMessaggio());
	        p.setString(5, richiesta.getStatus());
	        p.setString(6, richiesta.getEmail_utente());
	        p.setInt(7, richiesta.getId_auto());
	        p.executeUpdate();
	    } catch (SQLException | ClassNotFoundException e) {
	        System.out.println(e.getMessage());
	    }
	}

	@Override
	public void doUpdate(Richiesta richiesta) throws SQLException {
		String query = "UPDATE INTO richiesta (tipo_richiesta, data, messaggio, status, email_utente, id_auto) + "
				+ "values (?,?,?,?,?,?) WHERE  id_auto ='" + richiesta.getId_richiesta() + "'";
		try {
			con = Connessione.getInstance().getConnection();
			PreparedStatement p = con.prepareStatement(query);
			p.setString(1, richiesta.getTipo_richiesta());
			p.setString(2,richiesta.getData());
			p.setString(3, richiesta.getMessaggio());
			p.setString(4, richiesta.getStatus());
			p.setString(5, richiesta.getEmail_utente());
			p.setInt(6, richiesta.getId_auto());
			p.executeUpdate();

		} catch (SQLException | ClassNotFoundException e) {
			System.out.println(e.getMessage());
		}

	}

	@Override
	public void doDelete(Richiesta richiesta) throws SQLException {
		String query = "DELETE FROM richiesta WHERE id_richiesta ='" + richiesta.getId_richiesta() + "'";

		try {
			con = Connessione.getInstance().getConnection();
			PreparedStatement pst = con.prepareStatement(query);
			pst.executeUpdate();
		} catch (SQLException | ClassNotFoundException e) {
			System.out.println(e.getMessage());
		}

	}

	@Override
	public Richiesta doRetrieveByKey(int id_richiesta) throws SQLException {
		ResultSet result = null;
		Richiesta r = new Richiesta();
		String query = "SELECT * FROM richiesta WHERE id_auto ='" + id_richiesta + "'";
		try {
			con = Connessione.getInstance().getConnection();
			PreparedStatement pst = con.prepareStatement(query);
			result = pst.executeQuery();
			while (result.next()) {
				r.setData(result.getString("data"));
				r.setEmail_utente(result.getString("email_utente"));
				r.setId_auto(result.getInt("id_auto")); 
				r.setMessaggio(result.getString("messaggio"));
				r.setStatus(result.getString("status"));
				r.setTipo_richiesta(result.getString("tipo_richiesta"));
				r.setId_richiesta(id_richiesta);
				
			}
		} catch (SQLException | ClassNotFoundException e) {
			System.out.println(e.getMessage());
		}
		return r;

	}

	@Override
	public ArrayList<Richiesta> doRetrieveAll() throws SQLException {
		ResultSet result = null;
		Richiesta r = new Richiesta();
		ArrayList<Richiesta> allRichiesta = new ArrayList<>();
		String query = "SELECT * FROM richiesta";
		try {
			con = Connessione.getInstance().getConnection();
			PreparedStatement pst = con.prepareStatement(query);
			result = pst.executeQuery();
			while (result.next()) {
				r.setData(result.getString("data"));
				r.setEmail_utente(result.getString("email_utente"));
				r.setId_auto(result.getInt("id_auto")); 
				r.setMessaggio(result.getString("messaggio"));
				r.setStatus(result.getString("status"));
				r.setTipo_richiesta(result.getString("tipo_richiesta"));
				r.setId_richiesta(result.getInt("id_richiesta"));
				
				allRichiesta.add(r);
				
			}
		} catch (SQLException | ClassNotFoundException e) {
			System.out.println(e.getMessage());
		}
		return allRichiesta;
	}

	@Override
	public ArrayList<Richiesta> doRetrieveByEmail(String email) throws SQLException {
		ResultSet result = null;
		
		ArrayList<Richiesta> allRichieste = new ArrayList<>();
		String query = "SELECT * FROM richiesta WHERE email_utente ='" + email+ "'";
		try {
			con = Connessione.getInstance().getConnection();
			PreparedStatement pst = con.prepareStatement(query);
			result = pst.executeQuery();
			while (result.next()) {
				Richiesta r = new Richiesta();
				r.setData(result.getString("data"));
				r.setEmail_utente(result.getString("email_utente"));
				r.setId_auto(result.getInt("id_auto")); 
				r.setMessaggio(result.getString("messaggio"));
				r.setStatus(result.getString("status"));
				r.setTipo_richiesta(result.getString("tipo_richiesta"));
				r.setId_richiesta(result.getInt("id_richiesta"));
				
				allRichieste.add(r);
			}
		} catch (SQLException | ClassNotFoundException e) {
			System.out.println(e.getMessage());
		}
		return allRichieste;

	}

}
