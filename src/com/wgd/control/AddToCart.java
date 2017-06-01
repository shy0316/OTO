package com.wgd.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wgd.module.Cart;
import com.wgd.module.Teacher;
import com.wgd.module.User;
import com.wgd.service.ProductService;

/**
 * Servlet implementation class AddToCart
 */
@WebServlet(name="AddToCart",urlPatterns="/AddToCart")
public class AddToCart extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String tid = request.getParameter("tid");
		ProductService ps = new ProductService();
		/*
		 * 购物车中是teacher
		 * 加入购物车是将teacher加入购物车
		 * 去购物车页面，点击购买才会生成订单表，订单详细表
		 * 
		 * */
		List<Teacher> list = ps.findTeacherById(tid);
		User user = (User) request.getSession().getAttribute("user");
		System.out.println(tid);
		if(user!=null){
			System.out.println(user.getUsername());
			if(tid!=null||!"".equals(tid)){
				Cart cart = new Cart(user.getUid(),Integer.parseInt(tid));
				try {
					if(ps.StroeCart(cart)){
						out.println("加入购物车成功");
					}else{
						out.println("加入购物车失败");
					}
				} catch (NumberFormatException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}else{
				out.println("请选择教师");
			}
		}else{
			out.println("请先登录");
		}
		out.flush();
	}
}
