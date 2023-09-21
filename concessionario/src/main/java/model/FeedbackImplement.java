package model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
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
		String query = "DELETE FROM feedback WHERE id_feedback ='"+feedback.getId_feedback()+"'";
        
        try {
            con = Connessione.getInstance().getConnection();
            PreparedStatement pst = con.prepareStatement(query);
            pst.executeUpdate();
        } catch (SQLException | ClassNotFoundException e) {
            System.out.println(e.getMessage());
        }

	}

	@Override
	public Feedback doRetrieveByKey(String id_feedback) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Feedback> doRetrieveAll() throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

}
