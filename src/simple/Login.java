package simple;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void design(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session=request.getSession(true);
		if(session.getAttribute("id")!=null)
		{
			response.sendRedirect("Welcome");
		}
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		out.print("<html><body><form action='control' method='post'>"
				+ "Enter Name<input type='text' name='n1'><br>"
				+ "Enter Password <input type='password' name='p'><br>"
				+ "<input type='submit'></form>");
		
		if(request.getAttribute("err")!=null)
		{
			out.print("<br>"+request.getAttribute("err"));
		}
		out.print("</body></html>");
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		design(req, resp);
	}
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp)
		throws ServletException, IOException {
	// TODO Auto-generated method stub
	design(req, resp);
}
}
