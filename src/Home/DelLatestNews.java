package Home;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Common.DBLogic;



/**
 * Servlet implementation class DelLatestNews
 */
@WebServlet("/DelLatestNews")
public class DelLatestNews extends HttpServlet
{
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println(" delete control ");
		String id=request.getParameter("id");
		DBLogic.deleteLatestNews(Integer.parseInt(id));
		response.sendRedirect("ShowAndEditLatestNews.jsp");
		
	}
}
