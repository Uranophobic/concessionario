package bean;

import java.util.Date;

public class Feedback {

	private int id_feedback;
	private String testo;
	private Date data;
	private int id_auto;
	private String email_utente;
	private int valutazione;
	
	
	
	public Feedback() {
		super();
	}



	public Feedback(int id_feedback, String testo, Date data, int id_auto, String email_utente, int valutazione) {
		super();
		this.id_feedback = id_feedback;
		this.testo = testo;
		this.data = data;
		this.id_auto = id_auto;
		this.email_utente = email_utente;
		this.valutazione = valutazione;
	}



	public int getId_feedback() {
		return id_feedback;
	}



	public void setId_feedback(int id_feedback) {
		this.id_feedback = id_feedback;
	}



	public String getTesto() {
		return testo;
	}



	public void setTesto(String testo) {
		this.testo = testo;
	}



	public Date getData() {
		return data;
	}



	public void setData(Date data) {
		this.data = data;
	}



	public int getId_auto() {
		return id_auto;
	}



	public void setId_auto(int id_auto) {
		this.id_auto = id_auto;
	}



	public String getEmail_utente() {
		return email_utente;
	}



	public void setEmail_utente(String email_utente) {
		this.email_utente = email_utente;
	}



	public int getValutazione() {
		return valutazione;
	}



	public void setValutazione(int valutazione) {
		this.valutazione = valutazione;
	}



	@Override
	public String toString() {
		return "Feedback [id_feedback=" + id_feedback + ", testo=" + testo + ", data=" + data + ", id_auto=" + id_auto
				+ ", email_utente=" + email_utente + ", valutazione=" + valutazione + "]";
	}
	
	
	
}
