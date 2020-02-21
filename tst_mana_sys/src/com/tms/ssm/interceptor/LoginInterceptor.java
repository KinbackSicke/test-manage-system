package com.tms.ssm.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginInterceptor implements HandlerInterceptor{

	@Override
	public void afterCompletion(HttpServletRequest request, 
			HttpServletResponse response, Object obj, Exception ex)
			throws Exception {
		
	
	}

	@Override
	public void postHandle(HttpServletRequest request, 
			HttpServletResponse response, Object obj, ModelAndView modelAndView)
			throws Exception {
		
	}

	@Override
	public boolean preHandle(HttpServletRequest request, 
			HttpServletResponse response, Object obj) throws Exception {
		
		String url = request.getRequestURI();
		if (url.indexOf("login") >= 0 || url.indexOf("Login") >= 0) {
			return true;
		}
		if (url.indexOf("testPage") >= 0) {
			return true;
		}
		
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("username");
		if (username != null) {
			return true;
		}
		
		request.getRequestDispatcher(
				"/WEB-INF/jsp/studentLogin.jsp").forward(request, response);		
		
		return false;
	}

	
	
}
