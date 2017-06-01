//package com.wgd.control;
//
//import java.io.IOException;
//import java.util.Vector;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//import com.wgd.module.Product;
//
//
//@WebServlet(name="buycart",urlPatterns="/buy")
//public class BuyCart1 extends HttpServlet {
//	
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
////		request.setCharacterEncoding("utf-8");
////		response.setCharacterEncoding("utf-8");
////		((HttpServletResponse) response).setHeader("Content-Type","text/html; charset=utf-8");
//		
//		String pid[] = request.getParameterValues("flag");
//		HttpSession session = request.getSession();
//		
//		Vector<Product> vec = (Vector<Product>) session.getAttribute("products");
//		Vector<Product> res = new Vector<Product>();
////		for(Product p : vec){
////			System.out.println(p.getPid());
////		}
////		for(int i=0; i<pid.length; i++ ){
////			System.out.println(pid[i]);
////		}
//		//循环校验要封装出去
////		for(int i=0; i<pid.length; i++ ){
////			for(Product p : vec){
////				if(p.getPid()==Integer.parseInt(pid[i])){
////					res.add(p);
////				}
////			}
////		}
//		request.setAttribute("result", res);
//		request.getRequestDispatcher("buyCart.jsp").forward(request, response);
//	}
//}
