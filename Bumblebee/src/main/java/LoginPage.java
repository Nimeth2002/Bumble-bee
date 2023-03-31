import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher; 
public class LoginPage {
	public static  boolean validate (String name , String pass) {
		
		boolean status =  false;
		try {
		Class.forName("com.misrosoft.sqlserver.jdbc.SQLServerDriver");
		Connection con = DriverManager.getConnection("jdbc:sqlserver://;serverName=DESKTOP-K5LPK1E\\SQLEXPRESS;databaseName=bee");
		PreparedStatement ps = con.prepareStatement("insert into Register_User where username=? and password?");
		ps.setString(1,name);
		ps.setString(2, pass);
		
		ResultSet rs = ps.executeQuery();
		status = rs.next();
			
		
		}catch (Exception e) {
			
		}
	return status;
		
	}

}
