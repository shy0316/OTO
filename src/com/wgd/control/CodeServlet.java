package com.wgd.control;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
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
import javax.servlet.http.HttpSession;


@WebServlet(name="codecheck",urlPatterns="/img")
public class CodeServlet extends HttpServlet{
      @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	response.setContentType("image");
    	HttpSession session=request.getSession();
		String code=initCode();
		session.setAttribute("code", code);
		//随机生成6张背景图
		Random random=new Random();
		int num=random.nextInt(6);
		String filename=String.format("img/%d.png", num);//虚拟路径到物理路径的转换有web服务器解决
		filename = session.getServletContext().getRealPath(filename);//ServletContext==aplication,getrealpath转换成物理路径
		System.out.println("filename"+filename);
		BufferedImage image=ImageIO.read(new File(filename));
		
		Font font=new Font("幼圆", Font.BOLD, 60);
		Graphics g=image.getGraphics();
		g.setFont(font);
		g.setColor(Color.darkGray);
		g.drawString(code, 10, 60);//文本，x,y距离
		System.out.println(code);
		//画干扰线
		int count=random.nextInt(30);//干扰线个数
		int w=300;
		int h=80;
		for(int i=0;i<count;i++){//范围
			g.drawLine(random.nextInt(w), random.nextInt(h), random.nextInt(w), random.nextInt(h));
		}
		
		ImageIO.write(image, "png", response.getOutputStream());//imageIO只认虚拟路径，response.getOutputStream()全部去输出缓存
	}
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	public String initCode() {
		//定义一个4个元素的数组,4位数的验证码
		char a[]=new char[4];
		char letter[]=new char[52];
		for(int i=0;i<52;i++){
			if(i<=25){
				//小写字母
				letter[i]=(char)(i+65);
			}
			if(i>25){
				//大写字母
				letter[i]=(char)(i+71);
			}
		}
		//利用随机数，随机生成验证码
		Random r=new Random();
		a[0]=letter[r.nextInt(51)];
		a[1]=letter[r.nextInt(51)];
		a[2]=letter[r.nextInt(51)];
		a[3]=letter[r.nextInt(51)];
		String str=new String(a);
		return str;
		
	}
	private String initCode(int i,int j){
		return String.format("%d+%d=", i,j);
	}
}
