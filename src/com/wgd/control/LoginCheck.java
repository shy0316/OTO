package com.wgd.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.wgd.module.User;
import com.wgd.service.ProductService;

/**
 * Servlet implementation class LoginCheck
 */
@WebServlet(name="logincheck",urlPatterns="/LoginCheck")
public class LoginCheck extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ProductService ps = new ProductService();
		Cookie cookie[] = request.getCookies();
		String name = request.getParameter("username");
		String password = request.getParameter("password");
		String date = request.getParameter("date");
		System.out.println(name);
		HttpSession session = request.getSession();
		//out.println(name);
		boolean flag = false;
		int time=0;
		if(date!=null){
			time=Integer.parseInt(date);
		}
		User u1 = (User) session.getAttribute("user");
		User u2 = new User(name, password);
		String code = request.getParameter("code");
		System.out.println(code);
		String scode=session.getAttribute("code").toString().toLowerCase();
		System.out.println(scode);
		if(code.equals(scode)){
			System.out.println("code ok");
			if(u1!=null){
				if(ps.LoginCheck(u1)){
					flag=true;
				}else{
					flag=false;
				}
			}else{
				if(cookie!=null){//cookie����ֵ
					System.out.println("读取cookie");
					for(Cookie c : cookie){
						if(c.getName().equals(name)){
							if(c.getValue().equals(password)){
								flag=true;
								session.setAttribute("user", new User(name, password));
							}else {//cookie��nameƥ�䣬password��ƥ��
								flag=false;
							}
						}else {//cookie��û��name�����
							System.out.println("校验1");
							u2.setUsername(name);
							u2.setPassword(password);
							if(ps.LoginCheck(u2)){
								flag=true;
//								Cookie cookie1 = new Cookie(name, password);
//								cookie1.setMaxAge(time*24*3600);
//								response.addCookie(cookie1);
							}else{
								flag=false;
							}
						}
					}
				}else{//session��cookie�ж�ûֵ��Ҫ��֤�û��������ٴ�cookie
					System.out.println("У��2");
					u2.setUsername(name);
					u2.setPassword(password);
					if(ps.LoginCheck(u2)){
						flag=true;
						Cookie cookie1 = new Cookie(name, password);
						cookie1.setMaxAge(time*24*3600);
						response.addCookie(cookie1);
					}else{
						flag=false;
					}
				}
				
			}
		}else{
			System.out.println("验证码错误");
			 response.setHeader("refresh", "1;url=login.jsp");
		}
		
		
		if(flag){
			System.out.println(flag);
			request.getRequestDispatcher("index.jsp").forward(request, response);
			User user = new User(name, password);
			session.setAttribute("user", user);
//			session.setAttribute("time", time);
		}else{
			request.getRequestDispatcher("login.jsp").forward(request, response);;
		}
		
	}

}
