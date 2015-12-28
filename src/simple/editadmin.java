package simple;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/editadmin")
public class editadmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public editadmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id=request.getParameter("id");
		String email=request.getParameter("email");
		String picPath=request.getParameter("pic");
		String dob=request.getParameter("dob");
		if(DBLogic.editAdmin(id,email,picPath,dob))
		{
			response.sendRedirect("adminprofile.jsp");
		}
		else
		{
			System.out.println(" update failed");
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
