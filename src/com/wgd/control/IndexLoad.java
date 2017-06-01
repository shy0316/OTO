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

import com.wgd.module.Teacher;
import com.wgd.service.ProductService;

import net.sf.json.JSONArray;

/**
 * Servlet implementation class IndexLoad
 */
@WebServlet(name="IndexLoad",urlPatterns="/IndexLoad")
public class IndexLoad extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		List<Teacher> list = new ArrayList<Teacher>();
		ProductService ps = new ProductService();
		list = ps.LoadTeacher();
		JSONArray js = JSONArray.fromObject(list);
		out.println(js);
		out.flush();
	}
}
