package bean;

import java.util.Date;

public class Richiesta {

	private int id_richiesta;
	private String tipo_richiesta;
	private String data;
	private String messaggio;
	private String status;
	private String email_utente;
	private int id_auto;
	
	
	public Richiesta() {
		super();
	}


	public Richiesta(int id_richiesta, String tipo_richiesta, String data, String messaggio, String status,
			String email_utente, int id_auto) {
		super();
		this.id_richiesta = id_richiesta;
		this.tipo_richiesta = tipo_richiesta;
		this.data = data;
		this.messaggio = messaggio;
		this.status = status;
		this.email_utente = email_utente;
		this.id_auto = id_auto;
	}


	public int getId_richiesta() {
		return id_richiesta;
	}


	public void setId_richiesta(int id_richiesta) {
		this.id_richiesta = id_richiesta;
	}


	public String getTipo_richiesta() {
		return tipo_richiesta;
	}


	public void setTipo_richiesta(String tipo_richiesta) {
		this.tipo_richiesta = tipo_richiesta;
	}


	public String getData() {
		return data;
	}


	public void setData(String data) {
		this.data = data;
	}


	public String getMessaggio() {
		return messaggio;
	}


	public void setMessaggio(String messaggio) {
		this.messaggio = messaggio;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public String getEmail_utente() {
		return email_utente;
	}


	public void setEmail_utente(String email_utente) {
		this.email_utente = email_utente;
	}


	public int getId_auto() {
		return id_auto;
	}


	public void setId_auto(int id_auto) {
		this.id_auto = id_auto;
	}


	@Override
	public String toString() {
		return "Richiesta [id_richiesta=" + id_richiesta + ", tipo_richiesta=" + tipo_richiesta + ", data=" + data
				+ ", messaggio=" + messaggio + ", status=" + status + ", email_utente=" + email_utente + ", id_auto="
				+ id_auto + "]";
	}
	
	
	
	
}
