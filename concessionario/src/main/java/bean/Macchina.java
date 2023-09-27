package bean;

public class Macchina {

	private int id_auto;
	private String modello ;
	private String marca ;
	private String anno_produzione;
	private int cilindrata;
	private String carburante;
	private String colore;
	private String stato_veicolo;
	private double prezzo;
	private int kilometraggio;
	private String categoria;
	private int posti;
	private String tipo_cambio;
	private int kW;
	private String descrizione;
	private String img;
	private String min;
	
	
	public Macchina() {
		super();
	}



	public Macchina(int id_auto, String modello, String marca, String anno_produzione, int cilindrata,
			String carburante, String colore, String stato_veiocolo, double prezzo, int kilometraggio, String categoria,
			int posti, String tipo_cambio, int kW, String descrizione, String img, String min) {
		super();
		this.id_auto = id_auto;
		this.modello = modello;
		this.marca = marca;
		this.anno_produzione = anno_produzione;
		this.cilindrata = cilindrata;
		this.carburante = carburante;
		this.colore = colore;
		this.stato_veicolo = stato_veiocolo;
		this.prezzo = prezzo;
		this.kilometraggio = kilometraggio;
		this.categoria = categoria;
		this.posti = posti;
		this.tipo_cambio = tipo_cambio;
		this.kW = kW;
		this.descrizione = descrizione;
		this.img=img;
		this.img=min;
	}



	public String getMin() {
		return min;
	}



	public void setMin(String min) {
		this.min = min;
	}



	public String getImg() {
		return img;
	}



	public void setImg(String img) {
		this.img = img;
	}



	public int getId_auto() {
		return id_auto;
	}



	public void setId_auto(int id_auto) {
		this.id_auto = id_auto;
	}



	public String getModello() {
		return modello;
	}



	public void setModello(String modello) {
		this.modello = modello;
	}



	public String getMarca() {
		return marca;
	}



	public void setMarca(String marca) {
		this.marca = marca;
	}



	public String getAnno_produzione() {
		return anno_produzione;
	}



	public void setAnno_produzione(String anno_produzione) {
		this.anno_produzione = anno_produzione;
	}



	public int getCilindrata() {
		return cilindrata;
	}



	public void setCilindrata(int cilindrata) {
		this.cilindrata = cilindrata;
	}



	public String getCarburante() {
		return carburante;
	}



	public void setCarburante(String carburante) {
		this.carburante = carburante;
	}



	public String getColore() {
		return colore;
	}



	public void setColore(String colore) {
		this.colore = colore;
	}



	public String getStato_veicolo() {
		return stato_veicolo;
	}



	public void setStato_veicolo(String stato_veiocolo) {
		this.stato_veicolo = stato_veiocolo;
	}



	public double getPrezzo() {
		return prezzo;
	}



	public void setPrezzo(double prezzo) {
		this.prezzo = prezzo;
	}



	public int getKilometraggio() {
		return kilometraggio;
	}



	public void setKilometraggio(int kilometraggio) {
		this.kilometraggio = kilometraggio;
	}



	public String getCategoria() {
		return categoria;
	}



	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}



	public int getPosti() {
		return posti;
	}



	public void setPosti(int posti) {
		this.posti = posti;
	}



	public String getTipo_cambio() {
		return tipo_cambio;
	}



	public void setTipo_cambio(String tipo_cambio) {
		this.tipo_cambio = tipo_cambio;
	}



	public int getkW() {
		return kW;
	}



	public void setkW(int kW) {
		this.kW = kW;
	}



	public String getDescrizione() {
		return descrizione;
	}



	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}



	@Override
	public String toString() {
		return "Macchina [id_auto=" + id_auto + ", modello=" + modello + ", marca=" + marca + ", anno_produzione="
				+ anno_produzione + ", cilindrata=" + cilindrata + ", carburante=" + carburante + ", colore=" + colore
				+ ", stato_veicolo=" + stato_veicolo + ", prezzo=" + prezzo + ", kilometraggio=" + kilometraggio
				+ ", categoria=" + categoria + ", posti=" + posti + ", tipo_cambio=" + tipo_cambio + ", kW=" + kW
				+ ", descrizione=" + descrizione + ", img=" + img + ", min=" + min + "]";
	}
	
	
	
	
	
}
