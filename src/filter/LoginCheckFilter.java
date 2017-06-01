package filter;

import java.io.IOException;
import java.util.logging.Logger;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.wgd.module.User;

import javafx.animation.PathTransition;

/**
 * Servlet Filter implementation class LoginCheckFilter
 */
@WebFilter(filterName="logincheck",urlPatterns="/*")
public class LoginCheckFilter implements Filter {

    public LoginCheckFilter() {
        
    }

	public void destroy() {
		
	}
	//ˮӡ����֤�롣��ɫäУ��ͼ+��֤���֣�
	//Ȩ�����⣻
	//��<a>��ǩ���ӣ���Ȩ�޸����ӣ�ûȨ�޲���Ȩ��
	//�ӹ�������ֵȨ�ޣ�
	//������ע��㣺1.chain.dofilter();       2.�����ض��򣬻����·�������(�ֻᱸ���¹���)
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest)request;
		HttpServletResponse res = (HttpServletResponse)response;
		String url =req.getServletContext().getRealPath(req.getRequestURI());
//		String url =req.getRequestURI();
		//��ȡ�����ϵ�ʵ��·��
//		req.getServletContext().getRealPath(url)
		
		//�ַ����ָ�
		String u[] = url.split("\\\\");
		String path = u[u.length-1];
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("user");
		String if_flag = req.getHeader("X-Requested-With");
		if(user!=null){//�Ѿ���¼���ж�user��level
			chain.doFilter(req, res);
		}else{//û�е�¼������ҳ��
			
			if(path.equals("index.jsp")||path.equals("LoginCheck")||path.equals("login.jsp")||path.equals("img")||path.equals("IndexLoad")||path.equals("TeacherContent")||path.equals("MoreTeacher")){
				chain.doFilter(req, res);
			}else if(path.contains(".css")||path.contains(".js")||path.contains(".jpg")||path.contains(".action")||path.contains(".png")||path.contains(".ttf")||path.contains(".woff")){
				chain.doFilter(req, res);
			}else{
					req.getRequestDispatcher("login.jsp").forward(req, res);
			}
		}
	}

	public void init(FilterConfig fConfig) throws ServletException {
		System.out.println("LoginFilter");
	}

}
