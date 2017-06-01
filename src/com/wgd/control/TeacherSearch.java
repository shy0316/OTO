package com.wgd.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wgd.module.Teacher;
import com.wgd.service.ProductService;

import net.sf.json.JSONArray;

/**
 * Servlet implementation class TeacherSearch
 */
@WebServlet(name="TeacherSearch",urlPatterns="/TeacherSearch")
public class TeacherSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String sex = request.getParameter("sex");
		String address = request.getParameter("address");
		String edulevel = request.getParameter("edulevel");
		String course = request.getParameter("course");
		ProductService ps = new ProductService();
		Teacher teacher = new Teacher();
		teacher.setSex(sex);
		teacher.setAddress(address);
		teacher.setEdulevel(edulevel);
		teacher.setCourse(course);
		List<Teacher> list = ps.TeacherSearch(teacher);
		JSONArray js = JSONArray.fromObject(list);
		out.println(js);
		out.flush();
	}

}
