package citySearch;


import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Common.DBLogic;



/**
 * Servlet implementation class CityRedirect
 */
@WebServlet("/CityRedirect")
public class CityRedirect extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String keyword=request.getParameter("keyword");
		ResultSet rst=DBLogic.getPage(keyword);
		try {
			if(rst.next())
			{
				
					response.sendRedirect("portfolio.html");
					
			}
			else
				
			{
				response.sendRedirect("index.jsp");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
