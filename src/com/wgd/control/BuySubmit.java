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
		
		//ʵ����order,�����Է�װ����
		String[] pid = request.getParameterValues("tid");//��ȡteacher��
		String username = request.getParameter("username");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String money = request.getParameter("money");
		String method = request.getParameter("method");
		String months[] = request.getParameterValues("month");//��ǰ̨дУ�飬����Ϊ1�����Լ�,��ֹlist�����鳤�Ȳ�һ
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
							list1.add(teacher);//��ȡ�������е�teacher�б�
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
		
		if(ps.addToOrder(order)){//�����ݲ���order��Ӧ��ͬʱ���붩����ϸ��
			System.out.println("==�ɹ�==");
			response.sendRedirect("buySuccess.jsp");
			//�������ɹ���ɾ��session�еģ�
		}else{
			response.sendRedirect("error.jsp");
		}
		
	}

}
