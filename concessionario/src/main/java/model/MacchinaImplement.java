package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import bean.Macchina;
import connessione.Connessione;

public class MacchinaImplement implements MacchinaModel {
	
	private Connection con = null;
	
	

	@Override
	public void doSave(Macchina macchina) throws SQLException {
		
		
		String query = " INSERT INTO macchina(modello,marca,anno_prod,cilindrata,carburante,colore,stato_veicolo,prezzo,kilometraggio,categoria,posti,tipo_cambio,kW,descrizione,img)"
				+ "values (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try {
			con = Connessione.getInstance().getConnection();
			PreparedStatement p = con.prepareStatement(query);
			p.setString(1, macchina.getModello());
			p.setString(2, macchina.getMarca());
			p.setString(3, macchina.getAnno_produzione());
			p.setInt(4, macchina.getCilindrata());
			p.setString(5, macchina.getCarburante());
			p.setString(6, macchina.getColore());
			p.setString(7, macchina.getStato_veicolo());
			p.setDouble(8, macchina.getPrezzo());
			p.setInt(9, macchina.getKilometraggio());
			p.setString(10, macchina.getCategoria());
			p.setInt(11, macchina.getPosti());
			p.setString(12, macchina.getTipo_cambio());
			p.setInt(13, macchina.getkW());
			p.setString(14, macchina.getDescrizione());
			p.setString(15, macchina.getImg());
			
			p.executeUpdate();
		} catch (SQLException | ClassNotFoundException e) {
			System.out.println(e.getMessage());
			}
		
		
	}

	@Override
	public void doUpdate(Macchina macchina) throws SQLException {		
		//String query = " UPDATE INTO macchina(modello,marca,anno_prod,cilindrata,carburante,colore,stato_veicolo,prezzo,kilometraggio,categoria,posti,tipo_cambio,kW,descrizione)"
			//	+ "values (?,?,?,?,?,?,?,?,?,?,?,?,?,?) WHERE id_auto ='"+ macchina.getId_auto()+"'";
		
		String query = "UPDATE macchina SET modello=?, marca=?, anno_prod=?, cilindrata=?, carburante=?, colore=?, stato_veicolo=?, prezzo=?, kilometraggio=?, categoria=?, posti=?, tipo_cambio=?, kW=?, descrizione=?, img=? WHERE id_auto=?";
		
		try {
			con = Connessione.getInstance().getConnection();
			PreparedStatement p = con.prepareStatement(query);
			
			p.setString(1, macchina.getModello());
			p.setString(2, macchina.getMarca());
			p.setString(3, macchina.getAnno_produzione());
			p.setInt(4, macchina.getCilindrata());
			p.setString(5, macchina.getCarburante());
			p.setString(6, macchina.getColore());
			p.setString(7, macchina.getStato_veicolo());
			p.setDouble(8, macchina.getPrezzo());
			p.setInt(9, macchina.getKilometraggio());
			p.setString(10, macchina.getCategoria());
			p.setInt(11, macchina.getPosti());
			p.setString(12, macchina.getTipo_cambio());
			p.setInt(13, macchina.getkW());
			p.setString(14, macchina.getDescrizione());
			p.setString(15, macchina.getImg());
			p.setInt(16, macchina.getId_auto());
			
			
			p.executeUpdate();
		} catch (SQLException | ClassNotFoundException e) {
			System.out.println(e.getMessage());
			}
		
	}

	@Override
	public void doDelete(Macchina macchina) throws SQLException {
		 String query = "DELETE FROM macchina WHERE id_auto ='"+macchina.getId_auto()+"'";
	        
	        try {
	            con = Connessione.getInstance().getConnection();
	            PreparedStatement pst = con.prepareStatement(query);
	            pst.executeUpdate();
	        } catch (SQLException | ClassNotFoundException e) {
	            System.out.println(e.getMessage());
	        }
		
	}

	@Override
	public Macchina doRetrieveByKey(int id_auto) throws SQLException {
		ResultSet result = null;
		Macchina m = new Macchina();
		String query = "SELECT * FROM macchina WHERE id_auto ='"+id_auto+"'";
	        
	        try {
	            con = Connessione.getInstance().getConnection();
	            PreparedStatement pst = con.prepareStatement(query);
	            result = pst.executeQuery();
	            while(result.next()) {
	            	m.setAnno_produzione(result.getString("anno_prod"));
	            	m.setCarburante(result.getString("carburante"));
	            	m.setCategoria(result.getString("categoria"));
	            	m.setCilindrata(result.getInt("cilindrata"));
	            	m.setColore(result.getString("colore"));
	            	m.setDescrizione(result.getString("descrizione"));
	            	m.setId_auto(result.getInt("id_auto"));
	            	m.setKilometraggio(result.getInt("kilometraggio"));
	            	m.setkW(result.getInt("kW"));
	            	m.setMarca(result.getString("marca"));
	            	m.setModello(result.getString("modello"));
	            	m.setPosti(result.getInt("posti"));
	            	m.setPrezzo(result.getDouble("prezzo"));
	            	m.setStato_veicolo(result.getString("stato_veicolo"));
	            	m.setTipo_cambio(result.getString("tipo_cambio"));
	            	m.setImg(result.getString("img"));
	            	
	            }
	        } catch (SQLException | ClassNotFoundException e) {
	            System.out.println(e.getMessage());
	        }
		return m;
	}

	@Override
	public ArrayList<Macchina> doRetrieveAll() throws SQLException {
		ResultSet result = null;
		
		ArrayList<Macchina> allMacchine =  new ArrayList<Macchina>();
		String query = "SELECT * FROM macchina ";
	        
	        try {
	            con = Connessione.getInstance().getConnection();
	            PreparedStatement pst = con.prepareStatement(query);
	            result = pst.executeQuery();
	            
	            while(result.next()) {
	            	Macchina m = new Macchina();
	            	m.setAnno_produzione(result.getString("anno_prod"));
	            	m.setCarburante(result.getString("carburante"));
	            	m.setCategoria(result.getString("categoria"));
	            	m.setCilindrata(result.getInt("cilindrata"));
	            	m.setColore(result.getString("colore"));
	            	m.setDescrizione(result.getString("descrizione"));
	            	m.setId_auto(result.getInt("id_auto"));
	            	m.setKilometraggio(result.getInt("kilometraggio"));
	            	m.setkW(result.getInt("kW"));
	            	m.setMarca(result.getString("marca"));
	            	m.setModello(result.getString("modello"));
	            	m.setPosti(result.getInt("posti"));
	            	m.setPrezzo(result.getDouble("prezzo"));
	            	m.setStato_veicolo(result.getString("stato_veicolo"));
	            	m.setTipo_cambio(result.getString("tipo_cambio"));
	            	m.setImg(result.getString("img"));
	            	
	            	allMacchine.add(m);
	            }
	        } catch (SQLException | ClassNotFoundException e) {
	            System.out.println(e.getMessage());
	        }
		return allMacchine;
	}

}
