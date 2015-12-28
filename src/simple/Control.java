package simple;

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
@WebServlet("/control")
public class Control extends HttpServlet {
	private static final long serialVersionUID = 1L;
public static String id;
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name=request.getParameter("name");
		String email=request.getParameter("email");
	    id=request.getParameter("id");
		String password=request.getParameter("password");
		if(DBLogic.signUp(name,email,id,password))
		{
			response.sendRedirect("memberlogin.jsp");
		}
		else
		{
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 id=request.getParameter("id");
		String pass=request.getParameter("pass");
		if(DBLogic.checkLogin(id, pass))
		{
			//Session creating 
			HttpSession session=request.getSession(true);
			session.setAttribute("id", DBLogic.userName);
			response.sendRedirect("memberwelcome.jsp");
		}
		else {
			//response.sendRedirect("Login");
RequestDispatcher r=request.getRequestDispatcher("/memberlogin.jsp");
request.setAttribute("err", "Enter correct ID & password");
r.forward(request, response);
			
			
			
		}
				
	}

}
