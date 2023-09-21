package control;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Acquirente;
import bean.Amministratore;
import model.AcquirenteImplement;
import model.AcquirenteModel;
import model.AmministratoreImplement;

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
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// ricaviamo email e password inseriti dall'utente nel login
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		// mi carico i model
		AcquirenteImplement acqImpl = new AcquirenteImplement();
		AmministratoreImplement ammImpl = new AmministratoreImplement();
		Acquirente acq = new Acquirente();
		Amministratore amm = new Amministratore();
		HttpSession session;

		if (!email.equals(null) && !password.equals(null)) {
			try {
				
				// nel caso in cui sia un acquirente
				if (ammImpl.doRetrieveByKey(email) != null) {
					amm = ammImpl.doRetrieveByKey(email);
					session = request.getSession(); //creo la sessione
					session.setAttribute("Amministratore", amm); //sessione amministratore
					//System.out.println("amm " + amm.toString());
				}
				
				//nel caso in cui sia un amministratore
				if (acqImpl.doRetrieveByKey(email) != null) {
					acq = acqImpl.doRetrieveByKey(email);
					session = request.getSession(); //creo la sessione
					session.setAttribute("Acquirente", acq); //sessione acquirente
					//System.out.println("acq " + acq.toString());
				}
				
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("homepage.jsp");
				dispatcher.forward(request, response);

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}

		doGet(request, response);
	}

}