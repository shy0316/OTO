package com.wgd.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DataFactory {
	
	private static String url;
	private static String name;
	private static String password;
	public static Connection getConnection(String db){
		Connection conn = null;
		try {
			url = String.format("jdbc:mysql://127.0.0.1:3306/%s", db);
			name = "root";
			password = "cllaiwgd521";
			//拼接字符串，加入db数据库（尝试连接池和连接其他数据库）
			//如果连接其他数据库，传两个参数，一个是mysql或者orical，另一个是数据库名称test
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url,name,password);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
}
