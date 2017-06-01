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

/**
 * Servlet implementation class TeacherContent
 */
@WebServlet(name="TeacherContent",urlPatterns="/TeacherContent")
public class TeacherContent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String tid = request.getParameter("tid");
		ProductService ps = new ProductService();
		List<Teacher> list = ps.findTeacherById(tid);
		request.setAttribute("teacher", list);
		request.getRequestDispatcher("teacherContent.jsp").forward(request, response);
	}


}
