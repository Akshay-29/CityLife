package simple;
import java.sql.*;
import java.io.*;
public class insertImageMysql {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("Insert Image Example!");
		
		Connection con = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost/cityinfo","root","Java");
			System.out.println("Database connected");
		   Statement st = con.createStatement();
		   File imgfile = new File("C:/img24.jpg");
		  
		  FileInputStream fin = new FileInputStream(imgfile);
		 
		   PreparedStatement pre =
		   con.prepareStatement("insert into memberlogin (id,name,email,pic,dob,city,password) values(?,?,?,?,?,?,?)");
		 
		 
		   pre.setString(1, "99");
		pre.setString(2, "raman");

		pre.setString(3, "abc@gmail.com");
			 pre.setBinaryStream(4,(InputStream)fin,(int)imgfile.length());
			pre.setString(5, "11/22/1221");
			pre.setString(6, "jamnagar");
			pre.setString(7, "raman");
		   pre.executeUpdate();
		   System.out.println("Successfully inserted the file into the database!");

		   pre.close();
		   con.close(); 
		}catch (Exception e1){
			System.out.println(e1.getMessage());
			e1.printStackTrace();
		}
	}

}
