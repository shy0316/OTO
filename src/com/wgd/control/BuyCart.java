package com.wgd.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.wgd.module.Teacher;


@WebServlet(name="buycart",urlPatterns="/buy")
public class BuyCart extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		request.setCharacterEncoding("utf-8");
//		response.setCharacterEncoding("utf-8");
//		((HttpServletResponse) response).setHeader("Content-Type","text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		String tid[] = request.getParameterValues("flag");
		List<Teacher> list1 = new ArrayList<Teacher>();
		if(tid!=null){
			for(String t: tid){
				System.out.println(t);
			}
			HttpSession session = request.getSession();
			List<Teacher> list = (List<Teacher>) session.getAttribute("Cart");
			if(list!=null){
				for(Teacher teacher: list){
					for(String t: tid){
						if(Integer.parseInt(t)==teacher.getTid()){
							System.out.println(teacher.getTname());
							list1.add(teacher);
						}
					}
				}
			}
			
		}
		for(Teacher t: list1){
			System.out.println(t.getTname());
		}
		request.setAttribute("BuyCart", list1);
		request.getRequestDispatcher("buyCart.jsp").forward(request, response);
//		HttpSession session = request.getSession();
//		
//		Vector<Product> vec = (Vector<Product>) session.getAttribute("products");
//		Vector<Product> res = new Vector<Product>();
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
//					res.add(p);
//				}
//			}
//		}
//		request.setAttribute("result", res);
//		request.getRequestDispatcher("buyCart.jsp").forward(request, response);
	}
}
