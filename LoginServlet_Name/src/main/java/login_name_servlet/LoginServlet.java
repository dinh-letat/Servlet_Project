package login_name_servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/login")
public class LoginServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("login.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("ten");
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		
		if (username.equals("admin") && password.equals("admin")) {
			req.setAttribute("ten", name);
			req.setAttribute("username", username);
			req.setAttribute("password", password);
			req.getRequestDispatcher("welcome.jsp").forward(req, resp);
		} else {
			req.setAttribute("message", "Sai tên đăng nhập hoặc mật khẩu");
			req.getRequestDispatcher("login.jsp").forward(req, resp);
		}
	}
}
