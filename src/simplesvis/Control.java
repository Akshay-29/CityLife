package simplesvis;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Control
 */
@WebServlet("/controls")
public class Control extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String id=request.getParameter("n");
		String ch=request.getParameter("na");
		String a="Wating For Answer...";
		DBLogic.insert(id, ch, a);
		if(DBLogic.checkLogin(id))
		{
		
			RequestDispatcher r=request.getRequestDispatcher("cot.jsp");
			request.setAttribute("id", DBLogic.userName);
			r.forward(request, response);
			
		}
		else {
			HttpSession session=request.getSession(true);
			session.setAttribute("id", DBLogic.userName);
			response.sendRedirect("wel.jsp");
				
		}			
	}

}
