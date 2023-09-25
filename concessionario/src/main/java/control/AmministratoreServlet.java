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
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String azioneAmm= request.getParameter("azioneAmm");
		if(azioneAmm.equals("visualizzaProf")) {
			
			
		}
		
		
		
	}

}
