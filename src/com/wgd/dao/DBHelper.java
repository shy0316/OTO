package com.wgd.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import org.junit.Test;

import com.mysql.jdbc.PreparedStatement;
import com.oracle.webservices.internal.api.databinding.DatabindingFactory;
import com.wgd.module.Product;

import DBSource.ConnectionPoolManager;
import DBSource.IConnectionPool;
import jdk.nashorn.internal.ir.BreakableNode;

public class DBHelper {
	protected static Connection conn = null;
	protected static Statement stm = null;
	protected static java.sql.PreparedStatement pst1 = null,pst2=null;
	protected static ResultSet rs = null;
//	public DBHelper(){
//		
//	}
	public DBHelper() {
//			ctx = new InitialContext();
//			DataSource ds = (DataSource)ctx.lookup("java:/comp/env/jdbc.db1");
			IConnectionPool pool = ConnectionPoolManager.getInstance().getPool("testPool");
			conn = pool.getConnection();
//			conn = ds.getConnection();
		
	}
	
	public Vector<Product> list(){
		String sql = "select * from product";
		Vector<Product> vec = new Vector<Product>();
		try {
			stm = conn.createStatement();
			rs = stm.executeQuery(sql);
			Product p ;
			//����д����module����;
//			ResultSetMetaData rsmd = rs.getMetaData();
			
			//��߿�����һ��������resultset������ƥ�䵽����
			while (rs.next()) {
				System.out.println(rs.getInt(1));
//				p = new Product();
//				p.setPid(rs.getInt(1));
//				p.setName(rs.getString(2));
//				p.setNums(rs.getInt(3));
//				p.setPrice(rs.getInt(4));
//				p.setSale(rs.getBoolean(5));
//				p.setProvider(rs.getString(6));
//				vec.add(p);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return vec;
	}
	
	public boolean addorder(String sql,List<String> list){
		if(list!=null&&sql!=null){
			try {
				conn.setAutoCommit(false);
				pst1=conn.prepareStatement(sql);
				for(int i=0; i<list.size(); i++){
					System.out.println(list.get(i));
					//
					stm.addBatch(list.get(i));
				}
				pst1.executeUpdate();
				stm.executeBatch();
				conn.commit();
				return true;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				try {
					conn.rollback();
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				return false;
			}
		}else{
			return false;
		}
	}
	
	//��¼���
	public boolean loginChaeck(String sql,String password){
		boolean flag = false;
		String user1 = "";
		if(sql!=null){
			try {
				stm = conn.createStatement();
				rs = stm.executeQuery(sql);
				if(rs.next()){//��ѯ���������ѯ��������벻ƥ��
					if((user1=rs.getString(1)).equals(password)){
						flag=true;
					} else {
						flag=false;
					}
				}else{//��ѯ������������޴���
					flag=false;
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else{//sql���Ϊ��
			System.out.println("sql null");
			flag=false;
		}
		return flag;
	}
	
	
	/*
	 * ģ�����ɾ�Ĳ�
	 * ��service����з�װ���Խ�ResultSetת��Ϊlist����Ϊ��������
	 * 
	 * */
	@Test
	public void lastInsert(){
		 System.out.println(conn);  
		    try {
				stm=conn.createStatement();
				int row=stm.executeUpdate ("insert into orders(uid,realname,address,phone,method,money)values(1,'de','ds','123154','de',123)",Statement.RETURN_GENERATED_KEYS);  
				rs = stm.getGeneratedKeys ();  
				if ( rs.next() ) {  
					int key = rs.getInt(row);  
					System.out.println(key);  
				}  
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}  
	}
	
	public boolean add(String sql){
		boolean flag = false;
		if(sql!=null){
			try {
				stm = conn.createStatement();
				stm.executeUpdate(sql);
				flag=true;
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}else{//sql���Ϊ��
			System.out.println("sql null");
			flag=false;
		}
		return flag;
	}
	
	public boolean add(String sql, List<Product> list){
		boolean flag = false;
		StringBuffer sql1 = new StringBuffer();
		sql1.append("insert into product(oid,tid,tname,months,phone,imgsrc,address) values");
		
		System.out.println(sql1);
		if(sql!=null&&sql1!=null){
			try {
				conn.setAutoCommit(false);
				stm = conn.createStatement();
				int row=stm.executeUpdate (sql,Statement.RETURN_GENERATED_KEYS);
				for(int i=0; i<list.size(); i++){
					if(i==(list.size()-1)){
						sql1.append(String.format("(%d,%d,'%s',%d,'%s','%s','%s')",
								row,list.get(i).getTid(),list.get(i).getTname(),list.get(i).getMonth(),list.get(i).getPhone(),list.get(i).getImgsrc(),list.get(i).getAddress()));
					}else{
						sql1.append(String.format("(%d,%d,'%s',%d,'%s','%s','%s'),",
								row,list.get(i).getTid(),list.get(i).getTname(),list.get(i).getMonth(),list.get(i).getPhone(),list.get(i).getImgsrc(),list.get(i).getAddress()));
					}
				}
				stm.executeUpdate(sql1.toString());
				conn.commit();
				flag=true;
			} catch (SQLException e) {
				e.printStackTrace();
				try {
					conn.rollback();
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}
		}else{//sql���Ϊ��
			System.out.println("sql null");
			flag=false;
		}
		return flag;
	}
	
	public boolean del(String sql){
		boolean flag = false;
		if(sql!=null){
			try {
				stm = conn.createStatement();
				stm.executeUpdate(sql);
				flag=true;
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}else{//sql���Ϊ��
			System.out.println("sql null");
			flag=false;
		}
		return flag;
	}
	
	public boolean modify(String sql){
		boolean flag = false;
		if(sql!=null){
			try {
				stm = conn.createStatement();
				stm.executeUpdate(sql);
				flag=true;
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}else{//sql���Ϊ��
			System.out.println("sql null");
			flag=false;
		}
		return flag;
	}
	
	public ResultSet query(String sql){
		ResultSet rs = null;
		
		if(sql!=null){
			try {
				stm = conn.createStatement();
				rs = stm.executeQuery(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return rs;
	}
//	@Test
//	public void query(){
//		ResultSet rs = null;
//		String sql = "select tid,tname,sex,age,experience,imgsrc,college,course,englishlevel from teacher";
//		if(sql!=null){
//			try {
//				stm = conn.createStatement();
//				rs = stm.executeQuery(sql);
//				while(rs.next()){
//					System.out.println(rs.getInt(1)+":"+rs.getString(2));
//				}
//			} catch (SQLException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//		}
//	}
	
	public void close(){
		try {
			if(conn!=null){
					conn.close();
			}
			if(stm!=null){
				stm.close();
			}
			if(rs!=null){
				rs.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
