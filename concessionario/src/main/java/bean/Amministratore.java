package bean;

public class Amministratore {
	
	private String email;
	private String password;
	private String nome;
	private String cognome;
	private String ruolo;
	
	
	
	
	public Amministratore() {
		super();
	}




	public Amministratore(String email, String password, String nome, String cognome, String ruolo) {
		super();
		this.email = email;
		this.password = password;
		this.nome = nome;
		this.cognome = cognome;
		this.ruolo = ruolo;
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




	public String getRuolo() {
		return ruolo;
	}




	public void setRuolo(String ruolo) {
		this.ruolo = ruolo;
	}




	@Override
	public String toString() {
		return "Amministratore [email=" + email + ", password=" + password + ", nome=" + nome + ", cognome=" + cognome
				+ ", ruolo=" + ruolo + "]";
	}
	
	
	

}
