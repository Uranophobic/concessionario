package bean;

public class Acquirente {

	private String email;
	private String password;
	private String nome;
	private String cognome;
	private String indirizzoResidenza;
	private String patente;
	private int eta;
	private int annoPatente;
	
	
	public Acquirente() {
		super();
	}
	
	
	public Acquirente(String email, String password, String nome, String cognome, String indirizzoResidenza,
			String patente, int eta, int annoPatente) {
		super();
		this.email = email;
		this.password = password;
		this.nome = nome;
		this.cognome = cognome;
		this.indirizzoResidenza = indirizzoResidenza;
		this.patente = patente;
		this.eta = eta;
		this.annoPatente = annoPatente;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getNome() {
		return nome;
	}


	public void setNome(String nome) {
		this.nome = nome;
	}


	public String getCognome() {
		return cognome;
	}


	public void setCognome(String cognome) {
		this.cognome = cognome;
	}


	public String getIndirizzoResidenza() {
		return indirizzoResidenza;
	}


	public void setIndirizzoResidenza(String indirizzoResidenza) {
		this.indirizzoResidenza = indirizzoResidenza;
	}


	public String getPatente() {
		return patente;
	}


	public void setPatente(String patente) {
		this.patente = patente;
	}


	public int getEta() {
		return eta;
	}


	public void setEta(int eta) {
		this.eta = eta;
	}


	public int getAnnoPatente() {
		return annoPatente;
	}


	public void setAnnoPatente(int annoPatente) {
		this.annoPatente = annoPatente;
	}


	@Override
	public String toString() {
		return "Acquirente [email=" + email + ", password=" + password + ", nome=" + nome + ", cognome=" + cognome
				+ ", indirizzoResidenza=" + indirizzoResidenza + ", patente=" + patente + ", eta=" + eta
				+ ", annoPatente=" + annoPatente + "]";
	}
	
	
	
	
	
}
