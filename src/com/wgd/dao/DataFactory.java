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
			//ƴ���ַ���������db���ݿ⣨�������ӳغ������������ݿ⣩
			//��������������ݿ⣬������������һ����mysql����orical����һ�������ݿ�����test
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url,name,password);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
}
