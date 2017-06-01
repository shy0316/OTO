package com.wgd.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wgd.module.Teacher;
import com.wgd.service.ProductService;

import jdk.nashorn.internal.ir.RuntimeNode.Request;

/**
 * Servlet implementation class MoreTeacher
 */
@WebServlet(name="MoreTeacher",urlPatterns="/MoreTeacher")
public class MoreTeacher extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductService ps = new ProductService();
		List<Teacher> list = ps.AllTeacher();
		request.setAttribute("allteacher", list);
		request.getSession().setAttribute("allteacher", list);
		request.getRequestDispatcher("MoreTeacher.jsp").forward(request, response);
	}
}
