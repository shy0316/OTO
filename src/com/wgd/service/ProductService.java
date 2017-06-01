package com.wgd.service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import org.junit.Test;

import com.mysql.jdbc.ResultSetMetaData;
import com.wgd.dao.DBHelper;
import com.wgd.module.Cart;
import com.wgd.module.Order;
import com.wgd.module.Product;
import com.wgd.module.Teacher;
import com.wgd.module.User;

public class ProductService {
	DBHelper db = new DBHelper();
	public Vector<Product> listProducts(){
		//执行拼接字符串
		DBHelper db = new DBHelper();
		
		return db.list();
	}
	
	public List<Product> ConverToProduct(List<Teacher> teacher, String[] months){
		List<Product> list = new ArrayList<Product>();
		if(teacher.size()==months.length){
			for(int i=0; i<months.length; i++){
				Product p = new Product(teacher.get(i).getTid(), teacher.get(i).getTname(), teacher.get(i).getPrice(), 
						Integer.parseInt(months[i]), teacher.get(i).getPhone(), teacher.get(i).getAddress(), teacher.get(i).getTimgsrc());
				list.add(p);
			}
		}else{
			list=null;
		}
		return list;
	}
	
	public boolean addToOrder(Order order){
		List<Product> list = order.getProduct();
		String sql = String.format("insert into orders(uid,realname,address,phone,method,money)values(%d,'%s','%s','%s','%s',%d)", 
				order.getUid(),order.getRealname(),order.getAddress(),order.getPhone(),order.getMethod(),order.getMoney());
		if(db.add(sql,list)){
			return true;
		}else{
			return false;
		}
	}
	
	public User getUser(User user){
		int uid = 0;
		String sql = String.format("select uid,level from user where username='%s'", user.getUsername());
		ResultSet rs = db.query(sql);
		try {
			if(rs.next()){
				user.setUid(rs.getInt(1));
				user.setLevel(rs.getString(2));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return user;
	}
//	public boolean addOrder(Order order){
//		String sql = String.format(
//				"insert into orders(name,address,phone) values('%s','%s','%s')",
//				order.getName(),order.getAddress(),order.getPhone());
//		Vector<Product> vec = order.getProduct();
////		String sql1 = String.format("insert into product(pid,name,nums,price,sale,provider) values", );
//		List<String> list = new ArrayList<String>();
//		String str="";
////		for(Product p : vec){
////			str=String.format(
////					"insert into products(pid,name,nums,price,sale,provider) values(%d,'%s',%d,%d,%b,'%s')",
////					p.getPid(),p.getName(),p.getNums(),p.getPrice(),p.isSale(),p.getProvider());
////			list.add(str);
////		}
//		System.out.println(sql);
//		if(db.addorder(sql,list)){
//			return true;
//		}else{
//			return false;
//		}
//	}
	
	public boolean LoginCheck(User user){
		boolean flag = false;
		String password = user.getPassword();
		String sql = String.format("select password,uid from user where username='%s'", user.getUsername());
		System.out.println(sql);
		ResultSet rs = db.query(sql);
		try {
			while(rs.next()){//查询出有结果，用户名匹配
				System.out.println(rs.getString(1));
				if(user.getPassword().equals(rs.getString(1))){//密码匹配
					System.out.println(rs.getInt(2));
					user.setUid(rs.getInt(2));
					flag=true;
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flag;
	}
	
//	@Test
//	public void ConverRsToList(){
//		try {
//			Class cls = Class.forName("com.wgd.module.Order");
//			List<Object> list = new ArrayList<Object>();
//			System.out.println(cls);
//		} catch (ClassNotFoundException e) {
//			e.printStackTrace();
//		}
//	}
	
	
	public List<Teacher> TeacherSearch(Teacher teacher){
		
		StringBuffer sql = new StringBuffer();
		sql.append("select tid,tname,sex,age,experience,imgsrc,college,course,englishlevel,edulevel,price from teacher where");
		if(!"".equals(teacher.getSex())&&(teacher.getSex()!=null)){
			sql.append(" sex like '"+teacher.getSex()+"'");
		}
		if(!"".equals(teacher.getAddress())&&teacher.getAddress()!=null){
			sql.append("and address like '"+teacher.getAddress()+"'");
		}
		if(!"".equals(teacher.getEdulevel())&&teacher.getEdulevel()!=null){
			sql.append("and edulevel like '"+teacher.getEdulevel()+"'");
		}
		if(!"".equals(teacher.getCourse())&&teacher.getCourse()!=null){
			sql.append("and course like '"+teacher.getCourse()+"'");
		}
		System.out.println(sql.toString());
		List<Teacher> list = Conver(sql.toString());
		return list;
	}
	
	public List<Teacher> LoadTeacher(){
		String sql = "select tid,tname,sex,age,experience,imgsrc,college,course,englishlevel,edulevel,price  from teacher limit 6";
		List<Teacher> list = Conver(sql);
		return list;
	}
	
	public List<Teacher> AllTeacher(){
		String sql = "select tid,tname,sex,age,experience,imgsrc,college,course,englishlevel,edulevel,price from teacher";
		List<Teacher> list = Conver(sql);
		return list;
	}
	
	public List<Teacher> findTeacherById(String tid){
		int id = Integer.parseInt(tid);
		String sql = "select tid,tname,sex,age,experience,imgsrc,college,course,englishlevel,edulevel,price from teacher where tid="+id;
		List<Teacher> list = Conver(sql);
		return list;
	}
	
	public List<Teacher> Conver(String sql){//将teacher表查询出来的resultset转化为list
		ResultSet rs = db.query(sql);
		List<Teacher> list = new ArrayList<Teacher>();
		Teacher teacher = new Teacher();
		try {
			while(rs.next()){
				teacher = new Teacher(rs.getInt(1),
						rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9),rs.getString(10),rs.getInt(11));
				list.add(teacher);
				System.out.println(rs.getString(6));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public boolean StroeCart(Cart cart) throws NumberFormatException, SQLException{
			String sql = String.format("insert into cart(uid,tid) values (%d,%d)", cart.getUid(), cart.getTid());
			System.out.println(sql);
			if(db.add(sql)){
				return true;
			}else{
				return false;
			}
		
	}
	
	public List<Teacher> LoadCart(User user){
		System.out.println("进入servece");
		String sql = String.format("select tid,tname,sex,age,experience,imgsrc,college,course,englishlevel,edulevel,price from teacher where tid in(select tid from cart where uid = %d)", user.getUid());
		System.out.println(sql);
		List<Teacher> list = Conver(sql);
		return list;
	}
}
