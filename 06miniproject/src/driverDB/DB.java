package driverDB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DB {

	public Connection dbconn() throws ClassNotFoundException, SQLException {
		
		// 01 ����̹� �ε�
		Class.forName("com.mysql.jdbc.Driver");
		
		
		// DB����
		String dbDriver = "jdbc:mysql://localhost:3306/shoppingrecommend?useUnicode=true&characterEncoding=euckr";
		String dbUser = "06miniid";
		String dbPass = "06minipw";
		
		Connection reconn = DriverManager.getConnection(dbDriver, dbUser, dbPass);
		
		
		// DB���� �� ����
		return reconn;
		
	}
}
