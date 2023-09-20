package bean;

public class Ticket {

	
	private int id_ticket;
	private String titolo;
	private String messaggio;
	private String risposta;
	private String email_utente;
	
	
	
	public Ticket() {
		super();
	}



	public Ticket(int id_ticket, String titolo, String messaggio, String risposta, String email_utente) {
		super();
		this.id_ticket = id_ticket;
		this.titolo = titolo;
		this.messaggio = messaggio;
		this.risposta = risposta;
		this.email_utente = email_utente;
	}



	public int getId_ticket() {
		return id_ticket;
	}



	public void setId_ticket(int id_ticket) {
		this.id_ticket = id_ticket;
	}



	public String getTitolo() {
		return titolo;
	}



	public void setTitolo(String titolo) {
		this.titolo = titolo;
	}



	public String getMessaggio() {
		return messaggio;
	}



	public void setMessaggio(String messaggio) {
		this.messaggio = messaggio;
	}



	public String getRisposta() {
		return risposta;
	}



	public void setRisposta(String risposta) {
		this.risposta = risposta;
	}



	public String getEmail_utente() {
		return email_utente;
	}



	public void setEmail_utente(String email_utente) {
		this.email_utente = email_utente;
	}



	@Override
	public String toString() {
		return "Ticket [id_ticket=" + id_ticket + ", titolo=" + titolo + ", messaggio=" + messaggio + ", risposta="
				+ risposta + ", email_utente=" + email_utente + "]";
	}
	
	
	
}
