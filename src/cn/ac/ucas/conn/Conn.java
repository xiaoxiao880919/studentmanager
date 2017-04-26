package cn.ac.ucas.conn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conn {
	
	public Connection getConn() throws ClassNotFoundException  {
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/Student?useUicode=true&characterEncoding=utf-8";
			String user="root";
			String password="root";
            conn=DriverManager.getConnection(url, user, password);			
			
		} catch (SQLException ex) {
			// TODO Auto-generated catch block
			System.out.println("SQL exception"+ex.getMessage());
			System.out.println("SQL state"+ex.getSQLState());
			System.out.println("SQL Error"+ex.getErrorCode());
			return null;
		}
		return conn;
	}

	

}
