package by.bsuir.webapp.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class NameFinderServlet extends HttpServlet {

	private static String[] names = {
			"Анна", "София", "Виктория", "Дарья", "Анастасия", "Мария", "Вероника", "Полина", "Соломия", 
			"Ангелина", "Злата", "Ева", "Варвара", "Алиса", "Александра", "Арина", "Дарина", "Кира", "Диана", 
			"Екатерина", "Артем", "Александр", "Алексей", "Роман", "Максим", "Дмитрий", "Матвей", "Назар",
			"Богдан", "Марк", "Владислав", "Михаил", "Владимир", "Тимофей", "Иван", "Давид", "Андрей"
	};
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		req.setAttribute("names", names);
		getServletContext().getRequestDispatcher("/WEB-INF/jsp/namefinder.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		System.out.println("post received");
		req.setCharacterEncoding("UTF-8");
		getServletContext().getRequestDispatcher("/WEB-INF/jsp/namefinder.jsp").forward(req, resp);
	}

	
}
