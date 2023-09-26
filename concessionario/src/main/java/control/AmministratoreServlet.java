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

import bean.Amministratore;
import bean.Macchina;
import bean.Richiesta;
import bean.Ticket;
import model.AmministratoreImplement;
import model.MacchinaImplement;
import model.RichiestaImplement;
import model.TicketImplement;

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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String azioneAmm = request.getParameter("azioneAmm");

		if (azioneAmm.equals("visualizzaProf")) {
			// LISTA AUTO DA PASSARE
			ArrayList<Macchina> allMacchine = new ArrayList<>();
			MacchinaImplement maccImpl = new MacchinaImplement();
			//Lista ticket da passare
			ArrayList<Ticket>allTicket=new ArrayList<>();
			TicketImplement tImpl = new TicketImplement();
			// LISTA richieste DA PASSARE
			ArrayList<Richiesta> allRichieste = new ArrayList<>();
			RichiestaImplement rImpl = new RichiestaImplement();
			ArrayList<Richiesta> richiesteInAttesa = new ArrayList<>();
			// mi prendo l'amministratore dalla sessione
			HttpSession session = request.getSession(false);
			try {

				allMacchine = maccImpl.doRetrieveAll();
				session.setAttribute("allMacchine", allMacchine);

				allRichieste = rImpl.doRetrieveAll();
				session.setAttribute("allRichieste", allRichieste);

				richiesteInAttesa = rImpl.doRetrieveByStatus("in attesa");
				session.setAttribute("richiesteInAttesa", richiesteInAttesa);

				allTicket=tImpl.doRetrieveByRisposta("");
				session.setAttribute("allTicket", allTicket);

				RequestDispatcher dispatcher = request.getRequestDispatcher("profilo.jsp");
				dispatcher.forward(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}

		if (azioneAmm.equals("addAuto")) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("aggiungiAuto.jsp");
			dispatcher.forward(request, response);
		}

		if (azioneAmm.equals("delAuto")) {
			Macchina mac = new Macchina();
			MacchinaImplement macImpl = new MacchinaImplement();
			HttpSession session = request.getSession();

			String id_auto = request.getParameter("id_auto");
			int id = Integer.parseInt(id_auto);
			ArrayList<Macchina> allMacchine = new ArrayList<>();
			try {
				mac = macImpl.doRetrieveByKey(id);
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

		if (azioneAmm.equals("upAuto")) {
			Macchina mac = new Macchina();
			MacchinaImplement macImpl = new MacchinaImplement();
			HttpSession session = request.getSession();

			String id_auto = request.getParameter("id_auto");
			int id = Integer.parseInt(id_auto);
			ArrayList<Macchina> allMacchine = new ArrayList<>();
			try {
				mac = macImpl.doRetrieveByKey(id);

				allMacchine = macImpl.doRetrieveAll();
				session.setAttribute("autoDaModificare", mac);
				session.setAttribute("allMacchine", allMacchine);

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();

			}

			RequestDispatcher dispatcher = request.getRequestDispatcher("modificaAuto.jsp");
			dispatcher.forward(request, response);
		}

		if (azioneAmm.equals("aggiornaRichiesta")) {
			HttpSession session = request.getSession(false);
			String id_richiesta = request.getParameter("id_richiesta");
			System.out.println("id della richiesta da aggiornare " + id_richiesta);
			int id = Integer.parseInt(id_richiesta);
			RichiestaImplement rImpl = new RichiestaImplement();
			Richiesta r;
			try {
				r = rImpl.doRetrieveByKey(id);
				session.setAttribute("richiestaDaAggiornare", r);
				System.out.println("richiesa presa dal db" + r.toString());

				RequestDispatcher dispatcher = request.getRequestDispatcher("aggiornaRichiesta.jsp");
				dispatcher.forward(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}

		if(azioneAmm.equals("aggiornaTicket")) {
			HttpSession session = request.getSession(false);
			String id_ticket=request.getParameter("id_ticket");
			System.out.println("id passato dalla jsp " + id_ticket );
			int id= Integer.parseInt(id_ticket);
			TicketImplement tImpl = new TicketImplement();
			Ticket t;
			try {
				t=tImpl.doRetrieveByKey(id);
				session.setAttribute("ticketDaAggiornare", t);
				System.out.println("ticket preso dal db" + t.toString());
				RequestDispatcher dispatcher = request.getRequestDispatcher("aggiornaTicket.jsp");
				dispatcher.forward(request, response);

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String azioneAmm = request.getParameter("azioneAmm");

		if (azioneAmm.equals("addAuto")) {
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
			String kW = request.getParameter("kW"); // è un int
			String descrizione = request.getParameter("descrizione");
			String img = request.getParameter("img");

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
			mac.setImg(img);

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

		if (azioneAmm.equals("upAuto")) {
			HttpSession session = request.getSession(false);
			Macchina m = (Macchina) session.getAttribute("autoDaModificare");
			System.out.println("La macchina da modificare è: " + m.toString());

			MacchinaImplement mImpl = new MacchinaImplement();
			try {
				// m = mImpl.doRetrieveByKey(m.getId_auto());

				String modello = request.getParameter("modello");
				String marca = request.getParameter("marca");
				String annoProd = request.getParameter("annoProd");
				String cilindrata = request.getParameter("cilindrata");
				String carburante = request.getParameter("carburante");
				String colore = request.getParameter("colore");
				String stato_veicolo = request.getParameter("stato_veicolo");
				String prezzo = request.getParameter("prezzo"); // è un double
				String kilometraggio = request.getParameter("kilometraggio"); // è un int
				String categoria = request.getParameter("categoria");
				String posti = request.getParameter("posti"); // è un int
				String tipo_cambio = request.getParameter("tipo_cambio");
				String kW = request.getParameter("kW");
				String descrizione = request.getParameter("descrizione");
				String img = request.getParameter("img");

				m.setModello(modello);
				m.setMarca(marca);
				m.setAnno_produzione(annoProd);
				m.setCilindrata(Integer.parseInt(cilindrata));
				m.setCarburante(carburante);
				m.setColore(colore);
				m.setStato_veicolo(stato_veicolo);
				m.setPrezzo(Double.parseDouble(prezzo));
				m.setKilometraggio(Integer.parseInt(kilometraggio));
				m.setCategoria(categoria);
				m.setPosti(Integer.parseInt(posti));
				m.setTipo_cambio(tipo_cambio);
				m.setkW(Integer.parseInt(kW));
				m.setDescrizione(descrizione);
				m.setImg(img);
				// m.setId_auto(m.getId_auto());

				mImpl.doUpdate(m);
				ArrayList<Macchina> allMacchine = new ArrayList<>();
				allMacchine = mImpl.doRetrieveAll();
				session.setAttribute("allMacchine", allMacchine);
				response.sendRedirect("profilo.jsp");

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		if (azioneAmm.equals("aggiornaRichiesta")) {
			HttpSession session = request.getSession(false);
			String email = (String) session.getAttribute("email");
			String status=(String) request.getParameter("statoAggiornato");
			Richiesta r = new Richiesta();
			RichiestaImplement rImpl = new RichiestaImplement();

			r=(Richiesta) session.getAttribute("richiestaDaAggiornare");

			System.out.println("amministratore della sessione" + email);

			AmministratoreImplement ammImpl = new AmministratoreImplement();
			Amministratore amm = new Amministratore();

			ArrayList<Richiesta> richiesteInAttesa = new ArrayList<>();

			r.setStatus(status);


			try {
				amm = ammImpl.doRetrieveByKey(email);
				rImpl.doUpdate(r);
				System.out.println("richiesta dopo up" + r.toString());
				richiesteInAttesa=rImpl.doRetrieveByStatus("in attesa");
				session.setAttribute("richiesteInAttesa", richiesteInAttesa);
				response.sendRedirect("profilo.jsp");

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}

		if(azioneAmm.equals("aggiornaTicket")) {
			HttpSession session = request.getSession(false);
			String risposta = request.getParameter("risposta");
			Ticket t = new Ticket();
			TicketImplement tImpl = new TicketImplement();

			t=(Ticket) session.getAttribute("ticketDaAggiornare");
			ArrayList<Ticket> allTicket = new ArrayList<>();
			t.setRisposta(risposta);
			AmministratoreImplement ammImpl = new AmministratoreImplement();
			Amministratore amm = new Amministratore();
			try {
			
				tImpl.doUpdate(t);
				System.out.println("ticket dopo up" + t.toString());
				allTicket=tImpl.doRetrieveByRisposta("");
				session.setAttribute("allTicket", allTicket);
				response.sendRedirect("profilo.jsp");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}

}
