package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectDB {
	private static ConnectDB instance;
	private Connection connection;

	private ConnectDB() {
		try {
			String url = "jdbc:sqlserver://localhost:1433;databaseName=PhanMemTinhLuong_PTUD;trustServerCertificate=true";
			connection = DriverManager.getConnection(url , "sa", "sapassword");
			System.out.println("Connected");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public Connection getConnection() {
		return connection;
	}

	public synchronized static ConnectDB getInstance() {
		if (instance == null)
			instance = new ConnectDB();
		return instance;
	}

	public void close() {
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
