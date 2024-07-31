package muni.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AdminFilter implements Filter{

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpSession session = ((HttpServletRequest)request).getSession();
		String userId="";
		if(session.getAttribute("userId")!=null)userId =(String) session.getAttribute("userId");
		if(userId.equals("admin") && userId!=null) {
			request.setAttribute("adminId", userId);
			chain.doFilter(request, response);
		}else {
			((HttpServletResponse)response).sendRedirect("/admin/loginForm.do");
		}
		
	}

}
