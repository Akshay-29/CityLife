package Common;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

import Home.LatestNews;



public class DBLogic 
{
	public static String userName=null;
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
	public static void addrows(String name,String review)
	{  
		try
	       {     
		String q="Insert into postreview (Name,Review)"
				+"values('"+name+"','"+review+"')";  
		
		
		PreparedStatement ps =con.prepareStatement(q);
		ps.executeUpdate();
		System.out.println("Row inserted");
		//return 1;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			System.out.println("row not inserted");
			//return 0;
		}
	}
	public static ResultSet getPage(String Keyword)
	{
		try
		{
			String q="select * from searchsxr where searchword='"+Keyword+"'";
			Statement smt=con.createStatement();
			ResultSet rs=smt.executeQuery(q);
			return rs;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return null;

		}
	}
	/*public static Vector<LatestNews> getPage1(String Keyword)
	{Vector<LatestNews> data=new Vector<LatestNews>();
		try
		{
			String q="select * from searchsxr where s='"+Keyword+"'";
			Statement smt=con.createStatement();
			ResultSet rs=smt.executeQuery(q);
			while(rs.next())
			{
				LatestNews u=new LatestNews();
				u.setSno(Integer.parseInt(rs.getString(1)));
				u.setTitle(rs.getString(2));
				u.setDesc(rs.getString(3));
				
				data.add(u);
			}
			return data;
		}

		catch(Exception e)
		{
			e.printStackTrace();
			return null;

		}
	}*/
	public static ResultSet getAll()
	{
		try
		{
			String q="SELECT * FROM `postreview` ORDER BY `S.no` DESC ";
			Statement smt=con.createStatement();
			ResultSet rs=smt.executeQuery(q);
			
			return rs;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return null;

		}
	}
	public static Vector<LatestNews> getAllFromLatest()
	{

		Vector<LatestNews> data=new Vector<LatestNews>();
		try
		{
			String q="SELECT * FROM `latestUpdate` ORDER BY `S.no` DESC ";
			Statement smt=con.createStatement();
			ResultSet rs=smt.executeQuery(q);
			
			while(rs.next())
			{
				LatestNews u=new LatestNews();
				u.setSno(Integer.parseInt(rs.getString(1)));
				u.setTitle(rs.getString(2));
				u.setDesc(rs.getString(3));
				
				data.add(u);
			}
			return data;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return null;

		}
	}
	public static void deleteLatestNews(int sno)
	{
		String q="delete FROM `latestUpdate` where `S.no`="+sno+" ";
		PreparedStatement pst;
		try {
			pst = con.prepareStatement(q);
			pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
	}
	public static ResultSet getRowFromLatestNews(int Keyword)
	{
		try
		{
			String q="SELECT * FROM `latestupdate` WHERE `S.no` ="+Keyword+"";
			Statement smt=con.createStatement();
			ResultSet rs=smt.executeQuery(q);
			return rs;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return null;

		}
	}
	public static void putLatestNews(String title,String desc)
	{   if(title!=null)
	{
		String q="Insert into latestupdate (title,description)"
				+"values('"+title+"','"+desc+"')"; 
		try{
		PreparedStatement ps =con.prepareStatement(q);
		ps.executeUpdate();
		System.out.println("Row inserted");
		//return 1;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			
		}}
	}
}
