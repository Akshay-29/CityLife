package simple;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.sql.*;
import java.util.Vector;

//import practice.Statement;
//import practice.String;

//import practice.PreparedStatement;
public class DBLogic {
	static String userName=null;
	static String userId=null;

	static Connection con=null;
	
	static void connect()
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost/cityinfo","root","Java");
			System.out.println("Database connected");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	static
	{
		connect();
	}
	static	boolean  checkLogin(String id,String pass)
	{
		try {
			
			Statement smt=con.createStatement();
String q="Select * from memberlogin where "
		+ "id='"+id+"' and password='"+pass+"'";
			ResultSet rs=smt.executeQuery(q);
			if(rs.next())
			{
				userId=rs.getString(1);
				userName=rs.getString(2);
				return true;
			}
			else
			{
				return false;
			}
		} catch (Exception e) 
		{
			e.printStackTrace();
			return false;

		}
		
	}
	
	
	 public static Vector<member> getmemOffer()
	{
		Vector<member> data=new Vector<member>();
		try
		{
			String q="select * from memberoffer";
			Statement smt=con.createStatement();
			ResultSet rs=smt.executeQuery(q);
			while(rs.next())
			{
				member m=new member();
				m.setId(rs.getString(1));
				m.setTitle(rs.getString(2));
				m.setDescription(rs.getString(3));
				
				data.add(m);
			}
			return data;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return null;

		}
	}
	
	

	public static boolean signUp(String name,String email,String id,String password)
	{
	try{
			
			String q=" INSERT INTO memberlogin(id,name,email,pic,dob,city,password) VALUES('"+id+"','"+name+"','"+email+"','"+null+"','"+null+"','"+null+"','"+password+"')";
		PreparedStatement pst=con.prepareStatement(q);
		pst.executeUpdate();
			return true;
		}
		catch(Exception i)
		{
			
			i.printStackTrace();
			return false;
		}
		
	}
	public static boolean advsignup(String name,String email,String id,String password)
	{
	try{
			
			String q=" INSERT INTO advlogin(id,name,email,password,pic,dob,city) VALUES('"+id+"','"+name+"','"+email+"','"+password+"','"+null+"','"+null+"','"+null+"')";
		PreparedStatement pst=con.prepareStatement(q);
		pst.executeUpdate();
			return true;
		}
		catch(Exception i)
		{
			
			i.printStackTrace();
			return false;
		}
		
	}
	public static boolean  editMem(String id,String city,String email,String picPath,String dob)
	{
		
	
			PreparedStatement statement = null;
			FileInputStream inputStream = null;

			try {
				File image = new File(picPath);
				try {
					inputStream = new FileInputStream(image);
				} catch (FileNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				String q="update memberlogin set email=?,dob=?,pic=?,city=? where id=?";
				statement = con.prepareStatement(q);

				statement.setString(1, email);
				statement.setString(2, dob);
				
				statement.setBinaryStream(3, (InputStream) inputStream,
						(int) (image.length()));
				statement.setString(4, city);
			   statement.setString(5, id);

				statement.executeUpdate();
				return true;
			} catch (SQLException i) {
				i.printStackTrace();
				return false;
			}
			

		}
	public static boolean  editAdmin(String id,String email,String picPath,String dob)
	{
		
	
			PreparedStatement statement = null;
			FileInputStream inputStream = null;

			try {
				File image = new File(picPath);
				try {
					inputStream = new FileInputStream(image);
				} catch (FileNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				String q="update adminlogin set email=?,dob=?,pic=?  where id=?";
				statement = con.prepareStatement(q);

				statement.setString(1, email);
				statement.setString(2, dob);
				
				statement.setBinaryStream(3, (InputStream) inputStream,
						(int) (image.length()));
				statement.setString(4, id);
				statement.executeUpdate();
				return true;
			} catch (SQLException i) {
				i.printStackTrace();
				return false;
			}
			

		}
	public static boolean postAdd(String addid,String addtitle,String addimage,String adddes)
	{
		PreparedStatement statement = null;
		FileInputStream inputStream = null;
		
		try{
			File image = new File(addimage);
			try {
				inputStream = new FileInputStream(image);
			} catch (FileNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		 String q="insert into advertisement (id,pic,title,description) values(?,?,?,?)";
		   
		  statement= con.prepareStatement(q);
		 
		   statement.setString(1, addid);
			 statement.setBinaryStream(2,(InputStream) inputStream,(int)image.length());
			 statement.setString(3, addtitle);
			 statement.setString(4, adddes);
		   statement.executeUpdate();
		   System.out.println("Successfully inserted the file into the database!");
		   statement.close();
		   statement.close();
		   return true;
		}catch (SQLException i){
			System.out.println(i.getMessage());
			i.printStackTrace();
			return false;
		}
	}
		
	static	boolean  checkadvLogin(String id,String pass)
	{
		try {
			
			Statement smt=con.createStatement();
String q="Select * from advlogin where "
		+ "id='"+id+"' and password='"+pass+"'";
			ResultSet rs=smt.executeQuery(q);
			if(rs.next())
			{
				userName=rs.getString(2);
				return true;
			}
			else
			{
				return false;
			}
		} catch (Exception e) 
		{
			e.printStackTrace();
			return false;

		}
		
	}
	static	boolean  checkadminLogin(String id,String pass)
	{
		try {
			
			Statement smt=con.createStatement();
String q="Select * from adminlogin where "
		+ "id='"+id+"' and password='"+pass+"'";
			ResultSet rs=smt.executeQuery(q);
			if(rs.next())
			{
				userName=rs.getString(2);
				return true;
			}
			else
			{
				return false;
			}
		} catch (Exception e) 
		{
			e.printStackTrace();
			return false;

		}
		
	}
	public static ResultSet  getpass(String eadd)
	{
		try
		{
			String q="select password from memberlogin where id='"+eadd+"'";
			Statement smt=con.createStatement();
			ResultSet rs=smt.executeQuery(q);
			return rs;
		}
		catch(Exception i)
		{
			i.printStackTrace();
			return null;	
		}
		
		
	}
}

