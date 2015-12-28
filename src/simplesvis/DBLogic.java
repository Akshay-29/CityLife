package simplesvis;
import java.sql.*;
import java.util.Vector;
import java.util.concurrent.ExecutionException;
public class DBLogic {
	static String userName=null;
	static String userId=null;
	static Connection con=null;
	static void connect()
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://127.0.0.1/cityinfo","root","Java");
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
	static	boolean  checkLogin(String id)
	{
		try {
			
			
String q="Select * from chat where "
		+ "NAME='"+id+"'";
Statement smt=con.createStatement();
			ResultSet rs=smt.executeQuery(q);
			if(rs.next())
			{
				userName=rs.getString(1);
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
	
   public  static  Vector<User> getAll()
	{
		Vector<User> data=new Vector<User>();
		try
		{
			String q="select * from chat";
			Statement smt=con.createStatement();
			ResultSet rs=smt.executeQuery(q);
			while(rs.next())
			{
				User u=new User();
				u.setName(rs.getString(1));
				u.setQues(rs.getString(2));
				u.setAns(rs.getString(3));
				
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
   
public static ResultSet getall()
	 {try{
	   String q="SELECT *FROM chat ORDER BY 'S.NO' DESC";
		Statement smt=con.createStatement();
		ResultSet rs=smt.executeQuery(q);
     return rs;	
	 }
	 catch(Exception e){
		 e.printStackTrace();
			return null;
	 }
	}
   
   
	 static boolean checkduplicate(String id)
	{
		try
		{String q="Select * from chat where "
				+ "ID='"+id+"'";
		Statement smt=con.createStatement();
					ResultSet rs=smt.executeQuery(q);
					if(rs.next())
					{
						userId=rs.getString(1);
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
	 
	
	  static void insert(String name,String ques,String ans)
		{
			try
			{
				String	sql="INSERT INTO chat(NAME,QUESTION,ANSWER)"+"VALUES('"+name+"','"+ques+"','"+ans+"')";
				PreparedStatement pst=con.prepareStatement(sql);
				pst.executeUpdate();
				pst.close();
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		}
	 
	 
	public static void deleteUser(String name)
	{
		try
		{
	
		String query="delete from user where NAME='"+name+"'";
		PreparedStatement pst=con.prepareStatement(query);
		pst.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	
	public static void modifyUser(String name,String ques,String ans,String image)
	{
		try
		{
	
		String query="update user set NAME='"+name+"',QUESTION='"+ques+"',ANSWER='"+ans+"',IMAGE='"+image+"'";
		PreparedStatement pst=con.prepareStatement(query);
		pst.executeUpdate();
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
}
