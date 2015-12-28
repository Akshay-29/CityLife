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
 * Servlet implementation class admincontrol
 */
@WebServlet("/admincontrol")
public class admincontrol extends HttpServlet {
	private static final long serialVersionUID = 1L;
       public static String id;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public admincontrol() {
        super();
        // TODO Auto-generated constructor stub
    }

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
		 id=request.getParameter("id");
		String pass=request.getParameter("pass");
		if(DBLogic.checkadminLogin(id, pass))
		{
			//Session creating 
			HttpSession session=request.getSession(true);
			session.setAttribute("id", DBLogic.userName);
			response.sendRedirect("adminwelcome.jsp");
		}
		else {
			//response.sendRedirect("Login");
RequestDispatcher r=request.getRequestDispatcher("/adminlogin.jsp");
request.setAttribute("err", "Enter correct ID & password");
r.forward(request, response);
			
			
			
		}
	}

}
