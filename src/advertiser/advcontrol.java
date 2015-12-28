package advertiser;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class advcontrol
 */
@WebServlet("/advcontrol")
public class advcontrol extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  public static String id;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String id=request.getParameter("id");
		String password=request.getParameter("password");
		if(DBLogic.advsignup(name,email,id,password))
		{
			response.sendRedirect("advlogin.jsp");
		}
		
		else
		{
			response.sendRedirect("advsignup.jsp");
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 id=request.getParameter("id");
		String pass=request.getParameter("pass");
		if(DBLogic.checkadvLogin(id, pass))
		{
			//Session creating 
			HttpSession session=request.getSession(true);
			session.setAttribute("id", DBLogic.userName);
			response.sendRedirect("advwelcome.jsp");
		}
		else {
			
RequestDispatcher r=request.getRequestDispatcher("/advlogin.jsp");
request.setAttribute("err", "Enter correct ID & password");
r.forward(request, response);
			
			
			
		}
	}

}
