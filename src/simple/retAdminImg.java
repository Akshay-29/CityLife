package simple;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class retAdminImg
 */
@WebServlet("/retAdminImg")
public class retAdminImg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public retAdminImg() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection con = null; 
		ResultSet rs = null; 
		Statement st = null; 
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost/cityinfo","root","Java");
			System.out.println("Database connected");
		st=con.createStatement(); 
		 String id1=admincontrol.id;
		   
		 rs = st.executeQuery("select pic from adminlogin where id='"+id1+"'");
		String imgLen="";
		 
		if(rs.next())
		{
		imgLen = rs.getString(1);
		System.out.println(imgLen.length());
		}
		
		rs = st.executeQuery("select pic from adminlogin where id='"+id1+"'");
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
