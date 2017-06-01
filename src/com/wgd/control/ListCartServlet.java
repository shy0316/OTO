package com.wgd.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.wgd.module.Product;
import com.wgd.module.Teacher;
import com.wgd.module.User;
import com.wgd.service.ProductService;


@WebServlet(name="ListCart",urlPatterns="/ListCart")
public class ListCartServlet extends HttpServlet {
	
	@Override
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		System.out.println(user.getUid());
		if(user==null){
			response.sendRedirect("login.jsp");
		}else{
			ProductService ps = new ProductService();
			List<Teacher>list = ps.LoadCart(user);
			session.setAttribute("Cart", list);
			response.sendRedirect("listCart.jsp");
		}
//		ProductService ps = new ProductService();
//		Vector<Product> vector = new Vector<Product>();
//		vector = ps.listProducts();
//		session.setAttribute("products", vector);
//		request.setAttribute("products", vector);
//		request.getRequestDispatcher("listCart.jsp").forward(request, response);
	}
}
