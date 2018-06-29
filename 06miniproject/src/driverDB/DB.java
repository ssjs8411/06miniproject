package driverDB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DB {

	public Connection dbconn() throws ClassNotFoundException, SQLException {
		
		// 01 드라이버 로딩
		Class.forName("com.mysql.jdbc.Driver");
		
		
		// DB연결
		String dbDriver = "jdbc:mysql://localhost:3306/shoppingrecommend?useUnicode=true&characterEncoding=euckr";
		String dbUser = "06miniid";
		String dbPass = "06minipw";
		
		Connection reconn = DriverManager.getConnection(dbDriver, dbUser, dbPass);
		
		
		// DB연결 값 리턴
		return reconn;
		
	}
}
