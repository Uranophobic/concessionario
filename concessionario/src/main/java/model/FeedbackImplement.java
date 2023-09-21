package model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import bean.Feedback;
import connessione.Connessione;

public class FeedbackImplement implements FeedbackModel {
	private Connection con = null;

	@Override
	public void doSave(Feedback feedback) throws SQLException {

		String query = "INSERT INTO feedback (testo, data, id_auto, email_utente, valutazione) + values (?,?,?,?,?)";
		try {
			con = Connessione.getInstance().getConnection();
			PreparedStatement p = con.prepareStatement(query);
			p.setString(1, feedback.getTesto());
			p.setDate(2, (Date) feedback.getData());
			p.setInt(3, feedback.getId_auto());
			p.setString(4, feedback.getEmail_utente());
			p.setInt(5, feedback.getValutazione());
			p.executeUpdate();

		} catch (SQLException | ClassNotFoundException e) {
			System.out.println(e.getMessage());
		}
	}

	@Override
	public void doUpdate(Feedback feedback) throws SQLException {
		//DA TOGLIERE PERCHè NON PUò ESSERE MODIFICATO UN FEEDBACK
	}

	@Override
	public void doDelete(Feedback feedback) throws SQLException {
		String query = "DELETE FROM feedback WHERE id_feedback ='" + feedback.getId_feedback() + "'";

		try {
			con = Connessione.getInstance().getConnection();
			PreparedStatement pst = con.prepareStatement(query);
			pst.executeUpdate();
		} catch (SQLException | ClassNotFoundException e) {
			System.out.println(e.getMessage());
		}

	}

	@Override
	public Feedback doRetrieveByKey(int id_feedback) throws SQLException {
		ResultSet result = null;
		Feedback fd = new Feedback();
		String query = "SELECT FROM feedback WHERE id_auto ='" + id_feedback + "'";
		try {
			con = Connessione.getInstance().getConnection();
			PreparedStatement pst = con.prepareStatement(query);
			result = pst.executeQuery();
			while (result.next()) {
				fd.setData(result.getDate("data"));
				fd.setEmail_utente(result.getString("email_utente"));
				fd.setId_auto(result.getInt("id_auto"));
				fd.setTesto(result.getString("testo"));
				fd.setValutazione(result.getInt("valutazione"));
				fd.setId_feedback(id_feedback);
			}

		} catch (SQLException | ClassNotFoundException e) {
			System.out.println(e.getMessage());
		}
		return fd;

	}

	@Override
	public ArrayList<Feedback> doRetrieveAll() throws SQLException {
		ResultSet result = null;
		Feedback fd = new Feedback();
		ArrayList<Feedback> allFeedback = new ArrayList<Feedback>();
		String query = "SELECT * FROM feedback ";

		try {
			con = Connessione.getInstance().getConnection();
			PreparedStatement pst = con.prepareStatement(query);
			result = pst.executeQuery();
			while(result.next()) {
				fd.setData(result.getDate("data"));
				fd.setEmail_utente(result.getString("email_utente"));
				fd.setId_auto(result.getInt("id_auto"));
				fd.setTesto(result.getString("testo"));
				fd.setValutazione(result.getInt("valutazione"));
				fd.setId_feedback(result.getInt("id_feedback"));
				
				allFeedback.add(fd);
			}
		} catch (SQLException | ClassNotFoundException e) {
			System.out.println(e.getMessage());
		}
		return allFeedback;
	}

}
