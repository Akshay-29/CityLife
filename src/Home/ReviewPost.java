package Home;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Common.DBLogic;

/**
 * Servlet implementation class ReviewPost
 */
@WebServlet("/ReviewPost")
public class ReviewPost extends HttpServlet {
	
	


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String name=request.getParameter("nm");
		String review =request.getParameter("rvw");
		DBLogic.addrows(name, review);
		response.sendRedirect("index.jsp");
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
