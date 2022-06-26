package by.bsuir.webapp.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import by.bsuir.webapp.utils.StringUtils;

public class PalindromeServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		getServletContext().getRequestDispatcher("/WEB-INF/jsp/palindrome.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		String string = req.getParameter("string");
		if (!string.isEmpty()) {
			req.setAttribute("string", string);
			req.setAttribute("isPalindrome", StringUtils.isPalindrome(string));
		}
		getServletContext().getRequestDispatcher("/WEB-INF/jsp/palindrome.jsp").forward(req, resp);
	}

	
}
