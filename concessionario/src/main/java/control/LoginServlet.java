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
import bean.Amministratore;
import bean.Macchina;
import model.AcquirenteImplement;
import model.AcquirenteModel;
import model.AmministratoreImplement;
import model.MacchinaImplement;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public LoginServlet() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/*
		 * String azioneLogin = request.getParameter("azioneLogin"); if
		 * (azioneLogin.equals("registrati")) { String nome =
		 * request.getParameter("nome"); String }
		 */
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String azioneLogin = request.getParameter("azioneLogin");

		if (azioneLogin.equals("login")) {

			// ricaviamo email e password inseriti dall'utente nel login
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String ruolo = "";

			System.out.println("email e pasww presi dall jsp" + email + password);
			
			// mi carico i model
			AcquirenteImplement acqImpl = new AcquirenteImplement();
			AmministratoreImplement ammImpl = new AmministratoreImplement();
			Acquirente acq = new Acquirente();
			Amministratore amm = new Amministratore();
			HttpSession session = request.getSession(true);
			
			Macchina m = new Macchina();
			MacchinaImplement mImpl = new MacchinaImplement();
			ArrayList<Macchina> allMacchine = new ArrayList<>();
			
			if (!email.isEmpty() && !password.isEmpty()) {
				try {
					allMacchine = mImpl.doRetrieveAll();
					session.setAttribute("allMacchine", allMacchine);
					amm = ammImpl.doRetrieveByKey(email);
					if (amm != null) {
						if (email.equals(amm.getEmail()) && password.equals(amm.getPassword())) {
							ruolo = "amministratore";
							session.setAttribute("ruolo", ruolo);
							session.setAttribute("email", amm.getEmail());
							session.setAttribute("amm", amm);
							RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
							dispatcher.forward(request, response);
							return;
						}
					}

					acq = acqImpl.doRetrieveByKey(email);
					if (acq != null) {
						if (email.equals(acq.getEmail()) && password.equals(acq.getPassword())) {
							ruolo = "acquirente";
							session.setAttribute("ruolo", ruolo);
							session.setAttribute("email", acq.getEmail());
							session.setAttribute("acq", acq);
							RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
							dispatcher.forward(request, response);
							return; // elicottero
						}
					}

					request.setAttribute("errorMessage", "Email o password non validi");
					RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
					dispatcher.forward(request, response);

				} catch (SQLException e) {

					e.printStackTrace();
				}
			}
		}

		if (azioneLogin.equals("registrati")) {
				String nome= (String) request.getParameter("nome");	
				String cognome= (String) request.getParameter("cognome");
				String email = (String) request.getParameter("email");
				String password = (String) request.getParameter("password");
			
				String eta = (String) request.getParameter("eta");
				String indirizzo = (String) request.getParameter("indirizzo");
				String patente = (String) request.getParameter("patente");
				String anno_patente = (String) request.getParameter("anno_patente");
				String ruolo = "";
				System.out.println("info acquirente: " + nome + cognome + email + password);
				
				int annoP = Integer.parseInt(anno_patente);
				int anni = Integer.parseInt(eta);
				
				
				HttpSession session = request.getSession();
				
				Acquirente acq = new Acquirente();
				AcquirenteImplement acqImpl = new AcquirenteImplement();
				try {
 
				
						acq.setEmail(email);	
						acq.setPassword(password);
						acq.setNome(nome);
						acq.setCognome(cognome);
						acq.setEta(anni);
						acq.setIndirizzoResidenza(indirizzo);
						acq.setPatente(patente);
						acq.setAnnoPatente(annoP);
						
						acqImpl.doSave(acq);
						session.setAttribute("email", acq.getEmail());
						
						ruolo = "acquirente";
						session.setAttribute("ruolo", ruolo);
						
						RequestDispatcher dispatcher = request.getRequestDispatcher("profilo.jsp");
						dispatcher.forward(request, response);
					
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
	}
}
