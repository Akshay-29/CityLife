package simple;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
public class imgsave {
	/**
	 * This is used to get the Connection
	 * 
	 * @return
	 */
	public Connection getConnection() {
		Connection con = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost/cityinfo","root","Java");
			System.out.println("Database connected");
		} catch (Exception e) {
			System.out.println("Error Occured While Getting the Connection: - "
					+ e);
		}
		return con;
	}

	/**
	 * Insert Image
	 */
	public void insertImage() {
		Connection connection = null;
		PreparedStatement statement = null;
		FileInputStream inputStream = null;

		try {
			File image = new File("C:/img24.jpg");
			inputStream = new FileInputStream(image);
			connection = getConnection();
			statement = connection
					.prepareStatement("insert into memberlogin(id, name,email,pic,dob,city,password) "
							+ "values(?,?,?,?,?,?,?)");
			statement.setString(1, "99");
			statement.setString(2, "raman");
			statement.setString(3, "raman@gmail.com");
			statement.setBinaryStream(4, (InputStream) inputStream,
					(int) (image.length()));
			statement.setString(5, "11/12/2018");
			statement.setString(6, "jamnagar");
			statement.setString(7, "raman");

			statement.executeUpdate();
		} catch (FileNotFoundException e) {
			System.out.println("FileNotFoundException: - " + e);
		} catch (SQLException e) {
			System.out.println("SQLException: - " + e);
		} finally {
			try {
				connection.close();
				statement.close();
			} catch (SQLException e) {
				System.out.println("SQLException Finally: - " + e);
			}
		}

	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
	
		imgsave imageTest = new imgsave();
		imageTest.insertImage();
	}

}
