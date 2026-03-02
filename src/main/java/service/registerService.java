package service;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/registerService")
public class registerService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final String url = "jdbc:mysql://localhost:3306/web_db";
	private final String user = *****;
	private final String pass = ******;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("mail");
		if (email != null && !email.isEmpty()) {
			if (emailcheck(email)) {
				response.getWriter().write(
						"<p class='form-text text-success mt-1'>✅ 🤖 Brain scan complete: This email is as fresh as a GPT update!</p>");
			} else {
				response.getWriter().write(
						"<p class='form-text text-danger mt-1'>⚠️ 😅 Oops! This email is already chilling in our data vault. Try another one, hacker!</p>");
			}
		} else {
			response.getWriter().write(
					"<p class='form-text text-danger mt-1'>🚫 🤯 AI confusion detected: You forgot to type your email!</p>");
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		if (emailcheck(email)) {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				try (Connection con = DriverManager.getConnection(url, user, pass);
						PreparedStatement ps = con.prepareStatement(
								"INSERT INTO credentials (fname, lname, email, Username, Pass) VALUES (?, ?, ?, ?, ?)");) {

					ps.setString(1, request.getParameter("firstName"));
					ps.setString(2, request.getParameter("lastName"));
					ps.setString(3, email);
					ps.setString(4, request.getParameter("firstName")); // using first name as user_name
					ps.setString(5, request.getParameter("password"));

					int result = ps.executeUpdate();
					if (result > 0) {
						response.sendRedirect("register.jsp?user=pass");
					} else {
						response.sendRedirect("register.jsp?user=fail");
					}
				}
			} catch (Exception e) {
				e.printStackTrace();
				response.sendRedirect("register.jsp?user=error");
			}
		} else {
			response.sendRedirect("register.jsp?success=dpmail");
		}
	}

	private boolean emailcheck(String mail) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			try (Connection con = DriverManager.getConnection(url, user, pass);
					PreparedStatement ps = con.prepareStatement("SELECT * FROM credentials WHERE email = ?")) {
				ps.setString(1, mail);
				ResultSet rs = ps.executeQuery();
				return !rs.next(); // true if email not exists
			}
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
}
