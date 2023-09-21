package model;

import java.sql.SQLException;
import java.util.ArrayList;

import bean.Feedback;



public interface FeedbackModel {

	
	
public void doSave(Feedback feedback) throws SQLException;
	
	public void doUpdate(Feedback feedback) throws SQLException;
	
	public void doDelete(Feedback feedback) throws SQLException;
	
	public Feedback doRetrieveByKey(int id_feedback) throws SQLException;
	
	public ArrayList<Feedback> doRetrieveAll() throws SQLException;
}
