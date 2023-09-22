package control;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

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
import model.AcquirenteImplement;
import model.MacchinaImplement;
import model.RichiestaImplement;

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
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// prendere tutte le richieste di un acq

		// mi prendo l'acquirente dalla sessione
		HttpSession session = request.getSession(false);

		if (session != null) {
		
			String email = (String) session.getAttribute("email");
			///System.out.println("acquirente della sessione: " + email);
			
			AcquirenteImplement acqImpl = new AcquirenteImplement();
			RichiestaImplement rImpl = new RichiestaImplement();

			ArrayList<Richiesta> richieste_utente = new ArrayList<>();
			try {
				Acquirente acq = acqImpl.doRetrieveByKey(email);
				

				richieste_utente = rImpl.doRetrieveByEmail(email);
				//System.out.println("le richieste dell'utente : " + richieste_utente.toString());

				session.setAttribute("richieste_utente", richieste_utente);

				RequestDispatcher dispatcher = request.getRequestDispatcher("profilo.jsp");
				dispatcher.forward(request, response);

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			System.out.println("sessione nulla");
		}
		
		//LISTA AUTO DA PASSARE 
		MacchinaImplement maccImpl = new MacchinaImplement();
		ArrayList<Macchina> allMacchine = new ArrayList<>();
		try {
			 allMacchine = maccImpl.doRetrieveAll();
			 session.setAttribute("allMacchine", allMacchine);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		

	
		//nuova richiesta 
				String tipo =  request.getParameter("tipo");
				
				String messaggio = request.getParameter("messaggio");
				String email = (String) session.getAttribute("email");
				//int auto = (int) session.getAttribute("id_auto");
				System.out.println("tipo + data + messaggio " + tipo + data + messaggio);
				
				String data = request.getParameter("date");
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				//surround below line with try catch block as below code throws checked exception
				Date dat = sdf.parse(data);
				//do further processing with Date object
				
				
				RichiestaImplement ricImpl = new RichiestaImplement();
				Richiesta ric = new Richiesta();
				ric.setData(dat);
				ric.setEmail_utente(email);
				ric.setId_auto(1);
				ric.setMessaggio(messaggio);
				ric.setStatus("in attesa");
				ric.setTipo_richiesta(tipo);
				try {
					ricImpl.doSave(ric);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				System.out.println("richiesta appena creaa: " + ric.toString());
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("profilo.jsp");
				dispatcher.forward(request, response);
		
		
	}
}
