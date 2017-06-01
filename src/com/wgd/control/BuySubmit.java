package com.wgd.control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.wgd.module.Order;
import com.wgd.module.Product;
import com.wgd.module.Teacher;
import com.wgd.module.User;
import com.wgd.service.ProductService;

/**
 * Servlet implementation class BuySubmit
 */
@WebServlet(name="BuySubmit",urlPatterns="/buySubmit")
public class BuySubmit extends HttpServlet {
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		
		//实例化order,最后可以封装出来
		String[] pid = request.getParameterValues("tid");//获取teacher的
		String username = request.getParameter("username");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String money = request.getParameter("money");
		String method = request.getParameter("method");
		String months[] = request.getParameterValues("month");//在前台写校验，最少为1，可以加,防止list和数组长度不一
		User user = (User) session.getAttribute("user");
		
		Order order = new Order(user.getUid(),username,address,phone,method,Integer.parseInt(money));
		List<Teacher> list = (List<Teacher>) session.getAttribute("Cart");
		ProductService ps = new ProductService();
		
		String tid[] = request.getParameterValues("tid");
		List<Teacher> list1 = new ArrayList<Teacher>();
		if(tid!=null){
			for(String t: tid){
				System.out.println(t);
			}
			if(list!=null){
				for(Teacher teacher: list){
					for(String t: tid){
						if(Integer.parseInt(t)==teacher.getTid()){
							System.out.println(teacher.getTname());
							list1.add(teacher);//获取到订单中的teacher列表
						}
					}
				}
			}
		}
		for(Teacher t: list1){
			System.out.println(t.getTname());
		}
		List<Product> list2 = ps.ConverToProduct(list1, months);
		order.setProduct(list2);
		
		if(ps.addToOrder(order)){//将数据插入order表，应该同时插入订单明细表
			System.out.println("==成功==");
			response.sendRedirect("buySuccess.jsp");
			//如果插入成功，删除session中的；
		}else{
			response.sendRedirect("error.jsp");
		}
		
	}

}
