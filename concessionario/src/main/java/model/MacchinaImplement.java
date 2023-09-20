package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import bean.Macchina;
import connessione.Connessione;

public class MacchinaImplement implements MacchinaModel {
	
	private Connection con = null;
	
	

	@Override
	public void doSave(Macchina macchina) throws SQLException {
		
		
		String query = " INSERT INTO macchina(modello,marca,anno_prod,cilindrata,carburante,colore,stato_veicolo,prezzo,kilometraggio,categoria,posti,tipo_cambio,kW,descrizione)"
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
			
			p.executeUpdate();
		} catch (SQLException | ClassNotFoundException e) {
			System.out.println(e.getMessage());
			}
		
		
	}

	@Override
	public void doUpdate(Macchina macchina) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doDelete(Macchina macchina) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Macchina doRetrieveByKey(String id_auto) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Macchina> doRetrieveAll() throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

}
