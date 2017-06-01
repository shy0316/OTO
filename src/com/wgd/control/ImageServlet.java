package com.wgd.control;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ImageServlet
 */
@WebServlet(name="image",urlPatterns="/img11")
public class ImageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("image");
		int num = new Random().nextInt(4);
		String color[] = {"green","red","black","yellow"};
		System.out.println(num);
		String fileName = String.format("img/%d.jpg", num);
		fileName = request.getSession().getServletContext().getRealPath(fileName);
		System.out.println("fileName:"+fileName);
		BufferedImage img = ImageIO.read(new File(fileName));
		request.getSession().setAttribute("code", color[num]);
		ImageIO.write(img, "jpg", response.getOutputStream());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
