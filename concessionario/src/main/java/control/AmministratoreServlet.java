package control;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Macchina;
import model.MacchinaImplement;

/**
 * Servlet implementation class AmministratoreServlet
 */
@WebServlet("/Amministratore")
public class AmministratoreServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AmministratoreServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String azioneAmm = request.getParameter("azioneAmm");
		if (azioneAmm.equals("visualizzaProf")) {
			// LISTA AUTO DA PASSARE MacchinaImplement maccImpl = new MacchinaImplement();
			ArrayList<Macchina> allMacchine = new ArrayList<>();
			MacchinaImplement maccImpl = new MacchinaImplement();
			// mi prendo l'amministratore dalla sessione
			HttpSession session = request.getSession(false);
			try {
				allMacchine = maccImpl.doRetrieveAll();
				session.setAttribute("allMacchine", allMacchine);
			} catch (SQLException e) { // TODO Auto-generated catch block
				e.printStackTrace();
			}
			RequestDispatcher dispatcher = request.getRequestDispatcher("profilo.jsp");
			dispatcher.forward(request, response);
		}

		if(azioneAmm.equals("addAuto")) {


			RequestDispatcher dispatcher = request.getRequestDispatcher("aggiungiAuto.jsp");
			dispatcher.forward(request, response);
		}

		if(azioneAmm.equals("upAuto")) {
			Macchina mac = new Macchina();
			MacchinaImplement macImpl = new MacchinaImplement();
			HttpSession session = request.getSession();

			String id_auto=request.getParameter("id_auto");
			try {
				mac=macImpl.doRetrieveByKey(id_auto);

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();

			}
			session.setAttribute("macchina", mac);
			RequestDispatcher dispatcher = request.getRequestDispatcher("modificaAuto.jsp");
			dispatcher.forward(request, response);
		}

		if(azioneAmm.equals("delAuto")) {
			Macchina mac = new Macchina();
			MacchinaImplement macImpl = new MacchinaImplement();
			HttpSession session = request.getSession();

			String id_auto=request.getParameter("id_auto");
			ArrayList<Macchina> allMacchine = new ArrayList<>();
			try {
				mac=macImpl.doRetrieveByKey(id_auto);
				macImpl.doDelete(mac);
				allMacchine = macImpl.doRetrieveAll();
				session.setAttribute("allMacchine", allMacchine);

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();

			}
			session.setAttribute("macchina", mac);
			RequestDispatcher dispatcher = request.getRequestDispatcher("profilo.jsp");
			dispatcher.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String azioneAmm= request.getParameter("azioneAmm");

		if(azioneAmm.equals("addAuto")) {
			String modello = request.getParameter("modello");
			String marca = request.getParameter("marca");
			String annoProd = request.getParameter("annoProd");
			String cilindrata = request.getParameter("cilindrata"); // è un int
			String carburante = request.getParameter("carburante");
			String colore = request.getParameter("colore");
			String stato_veicolo = request.getParameter("stato_veicolo");
			String prezzo = request.getParameter("prezzo"); // è un double
			String kilometraggio = request.getParameter("kilometraggio"); // è un int
			String categoria = request.getParameter("categoria");
			String posti = request.getParameter("posti"); // è un int
			String tipo_cambio = request.getParameter("tipo_cambio");
			String kW = request.getParameter("kW"); //è un int
			String descrizione = request.getParameter("descrizione");

			Macchina mac = new Macchina();
			MacchinaImplement macImpl = new MacchinaImplement();

			mac.setModello(modello);
			mac.setMarca(marca);
			mac.setAnno_produzione(annoProd);
			mac.setCilindrata(Integer.parseInt(cilindrata));
			mac.setCarburante(carburante);
			mac.setColore(colore);
			mac.setStato_veicolo(stato_veicolo);
			mac.setPrezzo(Double.parseDouble(prezzo));
			mac.setKilometraggio(Integer.parseInt(kilometraggio));
			mac.setCategoria(categoria);
			mac.setPosti(Integer.parseInt(posti));
			mac.setTipo_cambio(tipo_cambio);
			mac.setkW(Integer.parseInt(kW));
			mac.setDescrizione(descrizione);

			try {
				macImpl.doSave(mac);
				ArrayList<Macchina> allMacchine = new ArrayList<>();
				MacchinaImplement maccImpl = new MacchinaImplement();
				// mi prendo l'amministratore dalla sessione
				HttpSession session = request.getSession(false);
				allMacchine = maccImpl.doRetrieveAll();
				session.setAttribute("allMacchine", allMacchine);
				response.sendRedirect("profilo.jsp"); 
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		if(azioneAmm.equals("upAuto")) {
			Macchina mac = new Macchina();
			MacchinaImplement macImpl = new MacchinaImplement();


			String id_auto=request.getParameter("id_auto");
			System.out.println(id_auto);
			try {
				mac=macImpl.doRetrieveByKey(id_auto);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			String modello = request.getParameter("modello");
			String marca = request.getParameter("marca");
			String annoProd = request.getParameter("annoProd");
			String cilindrata = request.getParameter("cilindrata"); // è un int
			String carburante = request.getParameter("carburante");
			String colore = request.getParameter("colore");
			String stato_veicolo = request.getParameter("stato_veicolo");
			String prezzo = request.getParameter("prezzo"); // è un double
			String kilometraggio = request.getParameter("kilometraggio"); // è un int
			String categoria = request.getParameter("categoria");
			String posti = request.getParameter("posti"); // è un int
			String tipo_cambio = request.getParameter("tipo_cambio");
			String kW = request.getParameter("kW"); //è un int
			String descrizione = request.getParameter("descrizione");



			mac.setModello(modello);
			mac.setMarca(marca);
			mac.setAnno_produzione(annoProd);
			mac.setCilindrata(Integer.parseInt(cilindrata));
			mac.setCarburante(carburante);
			mac.setColore(colore);
			mac.setStato_veicolo(stato_veicolo);
			mac.setPrezzo(Double.parseDouble(prezzo));
			mac.setKilometraggio(Integer.parseInt(kilometraggio));
			mac.setCategoria(categoria);
			mac.setPosti(Integer.parseInt(posti));
			mac.setTipo_cambio(tipo_cambio);
			mac.setkW(Integer.parseInt(kW));
			mac.setDescrizione(descrizione);
			mac.setId_auto(Integer.parseInt(id_auto));
			

			try {
				macImpl.doUpdate(mac);
				ArrayList<Macchina> allMacchine = new ArrayList<>();
				// mi prendo l'amministratore dalla sessione
				HttpSession session = request.getSession(false);
				allMacchine = macImpl.doRetrieveAll();
				session.setAttribute("allMacchine", allMacchine);
				response.sendRedirect("profilo.jsp"); 
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}



	}

}
