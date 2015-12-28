package advertiser;
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
	static String imglen;
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
	
	
	
	public static void deleteUser(String id)
	{
		try
		{
	
		String query="delete from student where id='"+id+"'";
		PreparedStatement ps=con.prepareStatement(query);
		ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	/*
public static void main(String a[]) {
	new DBLogic().connect();
}*/
	public static boolean  updateUser(String id,String name,String dob,String mobile,String city)
	{
		try
		{
			String q="update student set name='"+name+"',dob='"+dob+"',mobile='"+mobile+"',city='"+city+"' where id='"+id+"'";
			PreparedStatement pst=con.prepareStatement(q);
			pst.executeUpdate();
			//System.out.println("success");
			return true;
		} 
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
		
	}
	public static boolean aadUser(String id,String name,String dob,String mobile,String city)
	{
		try{
			
			String q=" INSERT INTO test.student(id,name,dob,mobile,city) VALUES('"+id+"','"+name+"','"+dob+"','"+mobile+"','"+city+"')";
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
	public static ResultSet detail(String id)
	{
		try{
		String q="select * from student where id='"+id+"'";
		Statement smt=con.createStatement();
		ResultSet rs=smt.executeQuery(q);
		//if(rs.next()){
		//.out.println(" detail function works");
			return rs;
		
		}
		catch(Exception i)
		{
			i.printStackTrace();
			return null;
		}
		
	}
	public static boolean signUp(String name,String email,String id,String password)
	{
	try{
			
			String q=" INSERT INTO cityinfo.memberlogin(id,name,email,pic,dob,city,password) VALUES('"+id+"','"+name+"','"+email+"','"+null+"','"+null+"','"+null+"','"+password+"')";
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
			
			String q=" INSERT INTO cityinfo.advlogin(id,name,email,password,pic,dob,city) VALUES('"+id+"','"+name+"','"+email+"','"+password+"','"+null+"','"+null+"','"+null+"')";
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
				String q="update cityinfo.memberlogin set email=?,dob=?,pic=?,city=? where id='"+id+"'";
				statement = con
						.prepareStatement(q);

				statement.setString(1, id);
				statement.setString(2, city);
				statement.setString(3, email);
				statement.setBinaryStream(4, (InputStream) inputStream,
						(int) (image.length()));
			

				statement.executeUpdate();
				return true;
			} catch (SQLException i) {
				i.printStackTrace();
				return false;
			}
			

		}
		
	public static	boolean  checkadvLogin(String id,String pass)
	{
		try {
			
			Statement smt=con.createStatement();
String q="Select * from advlogin where "
		+ "id='"+id+"' and password='"+pass+"'";
			ResultSet rs=smt.executeQuery(q);
			if(rs.next())
			{
				userName=rs.getString(2);
				imglen=rs.getString(5);
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
		
	}/*public static void main(String[] args){
		new DBLogic();
	}*/
	
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
		 String q="insert into advertisement (id,title,pic,discription) values(?,?,?,?)";
		   
		  statement= con.prepareStatement(q);
		 
		   statement.setString(1, addid);
		   statement.setString(2, addtitle);
			 statement.setBinaryStream(3,(InputStream) inputStream,(int)image.length());
			 
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
	
	public static ResultSet adddetails(String id){
		try{
			Statement smt=con.createStatement();
			String q1="select title,discription from advertisement where id='"+id+"'";
			ResultSet rs1=smt.executeQuery(q1);
			return rs1;
			
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("rs1 not working");
			return null;
		}	
	}
	
	public static ResultSet advprofile(String id){
		try{
			Statement smt=con.createStatement();
			String q1="select id,email,dob,city from advlogin where id='"+id+"'";
			ResultSet rs1=smt.executeQuery(q1);
			return rs1;
			
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("rs1 not working");
			return null;
		}	
	}
}

