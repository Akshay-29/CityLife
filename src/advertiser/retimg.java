package advertiser;
import java.io.*;
import java.sql.*;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class retimg
 */
@WebServlet("/retimg")
public class retimg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*Connection con = null; 
		ResultSet rs = null; 
		Statement st = null;*/ 
		
		Connection con = null; 
		ResultSet rs = null; 
		Statement st = null; 
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost/cityinfo","root","Java");
			System.out.println("Database connected");
		st=con.createStatement(); 
		 rs = st.executeQuery("select pic from advlogin where id='"+advcontrol.id+"'");
		String imgLen="";
		 
		if(rs.next())
		{
		imgLen = rs.getString(1);
		System.out.println(imgLen.length());
		}
		rs = st.executeQuery("select pic from advlogin where id='"+advcontrol.id+"'");
		if(rs.next())
		{
		int len = imgLen.length();
		byte [] rb = new byte[len];
		InputStream readImg = rs.getBinaryStream(1);
		int index=readImg.read(rb, 0, len);
		System.out.println("index"+index);
		st.close();
		response.reset();
		response.setContentType("image/jpg");
		response.getOutputStream().write(rb,0,len);
		response.getOutputStream().flush();
		}
		}
		catch (Exception e)
		{
		e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}