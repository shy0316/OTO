package com.wgd.control;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.wgd.module.Product;


@WebServlet(name="delcart",urlPatterns="/del")
public class DelCart extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		request.setCharacterEncoding("utf-8");
//		response.setCharacterEncoding("utf-8");
//		((HttpServletResponse) response).setHeader("Content-Type","text/html; charset=utf-8");
		
		String pid[] = request.getParameterValues("flag");
		HttpSession session = request.getSession();
		
		Vector<Product> vec = (Vector<Product>) session.getAttribute("products");
		Vector<Product> cur = new Vector<Product>();
//		for(Product p : vec){
//			System.out.println(p.getPid());
//		}
//		for(int i=0; i<pid.length; i++ ){
//			System.out.println(pid[i]);
//		}
		//循环校验要封装出去
//		for(int i=0; i<pid.length; i++ ){
//			for(Product p : vec){
//				if(p.getPid()==Integer.parseInt(pid[i])){
//					cur.add(p);
//				}
//			}
//		}
		vec.removeAll(cur);
		session.setAttribute("products", vec);
		request.getRequestDispatcher("listCart.jsp").forward(request, response);
//		response.sendRedirect("listCart.jsp");
	}
}
