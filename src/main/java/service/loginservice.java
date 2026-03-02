package service;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class loginservice
 */
@WebServlet("/loginservice")
public class loginservice extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final String url = "jdbc:mysql://localhost:3306/web_db";
	private final String user = *****;
	private final String pass = *****;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public loginservice() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = 0;
		String uname = request.getParameter("uname");
		String upass = request.getParameter("pass");
		String ctype = request.getParameter("ckbox");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, pass);

			PreparedStatement ps = con
					.prepareStatement("SELECT * FROM credentials WHERE BINARY Username = ? AND BINARY Pass = ?");
			ps.setString(1, uname);
			ps.setString(2, upass);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				id = rs.getInt("id");
				Cookie uck = new Cookie("uname", uname);
				Cookie pck = new Cookie("pass", upass);
				uck.setPath("/");
				pck.setPath("/");

				if (ctype != null) {
					uck.setMaxAge(60 * 60 * 60);
					pck.setMaxAge(60 * 60 * 60);
				}

				response.addCookie(uck);
				response.addCookie(pck);
				response.sendRedirect("index.jsp?id=" + id);
			} else {
				response.sendRedirect("login.jsp?user=fail");
			}

			con.close();
		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("login.jsp?user=error ");
		}
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
