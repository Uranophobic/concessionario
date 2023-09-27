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

import bean.Acquirente;
import bean.Macchina;
import bean.Richiesta;
import bean.Ticket;
import model.AcquirenteImplement;
import model.MacchinaImplement;
import model.RichiestaImplement;
import model.TicketImplement;

/**
 * Servlet implementation class AcquirenteServlet
 */
@WebServlet("/Acquirente")
public class AcquirenteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AcquirenteServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String azioneAcq = request.getParameter("azioneAcq");
		if (azioneAcq.equals("addRichiesta")) {
			// LISTA AUTO DA PASSARE MacchinaImplement maccImpl = new MacchinaImplement();
			ArrayList<Macchina> allMacchine = new ArrayList<>();
			MacchinaImplement maccImpl = new MacchinaImplement();
			// mi prendo l'acquirente dalla sessione
			HttpSession session = request.getSession(false);
			try {
				allMacchine = maccImpl.doRetrieveAll();
				session.setAttribute("allMacchine", allMacchine);
			} catch (SQLException e) { // TODO Auto-generated catch block
				e.printStackTrace();
			}
			RequestDispatcher dispatcher = request.getRequestDispatcher("richiesta.jsp");
			dispatcher.forward(request, response);
		}
		if (azioneAcq.equals("addTicket")) {
			
			// mi prendo l'acquirente dalla sessione
			HttpSession session = request.getSession(false);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("richiestaTicket.jsp");
			dispatcher.forward(request, response);
		}
		if(azioneAcq.equals("visualizzaAuto")) {
			String id_auto = request.getParameter("id_auto");
			int id = Integer.parseInt(id_auto);
			Macchina m = new Macchina();
			
			ArrayList<Macchina> allMacchine = new ArrayList<>();
			MacchinaImplement macImpl = new MacchinaImplement();
			HttpSession session = request.getSession(false);
			try {
				m=macImpl.doRetrieveByKey(id);
				session.setAttribute("macchinaVisual", m);

				RequestDispatcher dispatcher = request.getRequestDispatcher("auto.jsp");
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

		// mi prendo l'acquirente dalla sessione
		HttpSession session = request.getSession(false);
		String email = (String) session.getAttribute("email");
		String azioneAcq = request.getParameter("azioneAcq");

		System.out.println("acquirente della sessione: " + email);
		// se la sessione non è nulla mia faccio tutte le operazioni

		if (azioneAcq.equals("visualizzaProfilo")) {

			AcquirenteImplement acqImpl = new AcquirenteImplement();
			RichiestaImplement rImpl = new RichiestaImplement();
			TicketImplement ticket = new TicketImplement();
			
			ArrayList<Ticket> ticket_aperti= new ArrayList<>();
			ArrayList<Richiesta> richieste_utente = new ArrayList<>();
			try {
				Acquirente acq = acqImpl.doRetrieveByKey(email);

				richieste_utente = rImpl.doRetrieveByEmail(email);
				System.out.println("le richieste dell'utente : " + richieste_utente.toString());
				//visualizzazione ticket 
				ticket_aperti=ticket.doRetrieveByEmail(email);
				session.setAttribute("ticket_aperti", ticket_aperti);
				
				session.setAttribute("richieste_utente", richieste_utente);
				session.setAttribute("email", acq.getEmail());
				RequestDispatcher dispatcher = request.getRequestDispatcher("profilo.jsp");
				dispatcher.forward(request, response);

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		if (azioneAcq.equals("addRichiesta")) {
			// nuovo ticket 
			String tipo = request.getParameter("tipo");
			String messaggio = request.getParameter("messaggio");
			String data = request.getParameter("data");

			int auto = 0;

			if (request.getParameter("id_auto") != null) {
				auto = Integer.parseInt(request.getParameter("id_auto").toString());
			}

			System.out.println("tipo + data + messaggio + ID AUTO " + tipo + data + messaggio + auto);

			RichiestaImplement ricImpl = new RichiestaImplement();
			Richiesta ric = new Richiesta();

			ric.setEmail_utente(email);
			ric.setData(data);
			ric.setId_auto(auto);
			ric.setMessaggio(messaggio);
			ric.setStatus("in attesa");
			ric.setTipo_richiesta(tipo);

			try {
				ricImpl.doSave(ric);
				System.out.println("richiesta appena creata: " + ric.toString());

				/*
				 * RequestDispatcher dispatcher = request.getRequestDispatcher("profilo.jsp");
				 * dispatcher.forward(request, response);
				 */
				AcquirenteImplement acqImpl = new AcquirenteImplement();
				RichiestaImplement rImpl = new RichiestaImplement();

				ArrayList<Richiesta> richieste_utente = new ArrayList<>();
				Acquirente acq = acqImpl.doRetrieveByKey(email);

				richieste_utente = rImpl.doRetrieveByEmail(acq.getEmail());
				System.out.println("le richieste dell'utente : " + richieste_utente.toString());

				session.setAttribute("richieste_utente", richieste_utente);


				session.setAttribute("email", acq.getEmail());
				response.sendRedirect("profilo.jsp");


			} catch (SQLException e) {
				e.printStackTrace();

				request.setAttribute("errorMessage",
						"Si è verificato un errore durante il salvataggio della richiesta.");
				RequestDispatcher errorDispatcher = request.getRequestDispatcher("error.jsp");
				errorDispatcher.forward(request, response);
			}



		}

		if (azioneAcq.equals("addTicket")) {
				// nuova ticket
				String titolo = request.getParameter("titolo");
				String messaggio = request.getParameter("messaggio");
				//String risposta = request.getParameter("risposta");

				System.out.println("tipo + data + messaggio" + titolo + messaggio);

				TicketImplement tickImpl = new TicketImplement();
				Ticket tick = new Ticket();

				tick.setEmail_utente(email);
				tick.setRisposta("");
				tick.setMessaggio(messaggio);
				tick.setTitolo(titolo);

				try {
					tickImpl.doSave(tick);
					System.out.println("richiesta appena creata: " + tick.toString());

					/*
					 * RequestDispatcher dispatcher = request.getRequestDispatcher("profilo.jsp");
					 * dispatcher.forward(request, response);
					 */
					AcquirenteImplement acqImpl = new AcquirenteImplement();
					TicketImplement tImpl = new TicketImplement();

					ArrayList<Ticket> ticket_aperti = new ArrayList<>();
					Acquirente acq = acqImpl.doRetrieveByKey(email);

					ticket_aperti = tImpl.doRetrieveByEmail(acq.getEmail());
					

					session.setAttribute("ticket_aperti", ticket_aperti);


					session.setAttribute("email", acq.getEmail());
					response.sendRedirect("profilo.jsp");


				} catch (SQLException e) {
					e.printStackTrace();

					request.setAttribute("errorMessage",
							"Si è verificato un errore durante il salvataggio della richiesta.");
					RequestDispatcher errorDispatcher = request.getRequestDispatcher("error.jsp");
					errorDispatcher.forward(request, response);
				}



			}
		
		if(azioneAcq.equals("visualizzaAuto")) {
			String id_auto = request.getParameter("id_auto");
			int id = Integer.parseInt(id_auto);
			AcquirenteImplement acqImpl = new AcquirenteImplement();
			MacchinaImplement mImpl = new MacchinaImplement();
			ArrayList<Macchina> mac= new ArrayList<>();
			
			try {
				
				Macchina visualizzaAuto = mImpl.doRetrieveByKey(id);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			RequestDispatcher dispatcher = request.getRequestDispatcher("auto.jsp");
			dispatcher.forward(request, response);
		}
		
		}

	}

