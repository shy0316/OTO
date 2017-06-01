package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;

public class DataSource {
	private static int minCon = 1; // 最小连接数
	private static int maxCon = 10; // 最大连接数
	private static int initCon = 5; // 初始化连接池连接个数
	private static String driver = "com.mysql.jdbc.Driver"; // 驱动
	//可以读取配置文件
	private static String user = "root"; // 用户名
	private static String password = "cllaiwgd521"; // 密码
	private static String url = "jdbc:mysql://127.0.0.1:3306/test"; //

	private static int waitTime = 20 * 60 * 1000;

	private boolean isActive = false; // 连接池活动状态
	private int contActive = 0;// 记录创建的总的连接数

	// 空闲连接
	private List<Connection> freeConnection = new Vector<Connection>();
	// 活动连接
	private List<Connection> activeConnection = new Vector<Connection>();

	public DataSource() {
		init();
	}
	
	//初始化，连接全部放在free中
	public void init() {
		try {
			Class.forName(driver);
			for (int i = 0; i < initCon; i++) {
				Connection conn;
				conn = CreateConnection();
				if (conn != null) {
					freeConnection.add(conn);
				}
			}
			isActive = true;
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	//创建连接，创建一个连接return出去；
	public synchronized Connection CreateConnection() {
		Connection conn = null;
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
			if(isValid(conn)){
				contActive++;
			}
			contActive++;
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	//获取连接，
	/*
	 * 初始化5个连接，contActive=5
	 * contActive还是<maxCon，但是空余链接消耗完就要新建
	 * 新建的连接达到最大连接时，只能等待；
	 * bug：如果达到最大连接之后，有一个释放
	 * */
	public synchronized Connection getConnection() {
		Connection conn = null;
		if (activeConnection.size() < maxCon) {//创建的连接数小于最大连接数
			if (freeConnection.size() > 0) {//free中还有空余连接，则加入繁忙状态
				conn = freeConnection.get(0);
				freeConnection.remove(0);
				activeConnection.add(conn);
			} else {
				conn = CreateConnection();//没有空余连接就新建一个 （contActive < maxCon）
			}
		} else {//
			try {
				wait(waitTime);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			getConnection();
		}
		return conn;
	}

	// 释放连接
	public synchronized void releaseConn(Connection conn) throws SQLException {
		if (isValid(conn) && !(freeConnection.size() > maxCon)) {
			freeConnection.add(conn);
			activeConnection.remove(conn);
			// 唤醒所有正待等待的线程，去抢连接
			notifyAll();
		}
	}

	// 销毁连接池
	public synchronized void destroy() {
		for (Connection conn : freeConnection) {
			try {
				if (isValid(conn)) {
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		for (Connection conn : activeConnection) {
			try {
				if (isValid(conn)) {
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		isActive = false;
		contActive = 0;
	}

	// 判断连接是否可用
	private boolean isValid(Connection conn) {
		try {
			if (conn == null || conn.isClosed()) {
				return false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return true;
	}

	public static void main(String[] args) {
		DataSource ds = new DataSource();
		Connection conn1,conn2,conn3;
	}
}