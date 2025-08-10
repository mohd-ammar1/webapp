package service;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class feedbackService
 */
@WebServlet("/feedbackService")
public class feedbackService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public feedbackService() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ServletContext context = request.getServletContext();
		String url = context.getInitParameter("dburl");
		String dbusername = context.getInitParameter("dbusername");
		String dbpassword = context.getInitParameter("dbpassword");
		String usernameString = request.getParameter("name");
		String emailString = request.getParameter("email");
		String mobnumString = request.getParameter("mobNum");
		String ratingString = request.getParameter("rating");
		String feedbackString = request.getParameter("message");
		int rate = Integer.parseInt(ratingString);

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, dbusername, dbpassword);
			PreparedStatement ps = con
					.prepareStatement("insert into feedback(fName,email,mob,Stars,feedback) values (?,?,?,?,?)");
			ps.setString(1, usernameString);
			ps.setString(2, emailString);
			ps.setLong(3, Long.parseLong(mobnumString));
			ps.setInt(4, rate);
			ps.setString(5, feedbackString);
			int res = ps.executeUpdate();
			if (res > 0) {
				response.getWriter().write("User inserted successfully");
			} else {
				response.getWriter().write("User Insertion failed");
			}
		} catch (Exception e) {
			response.getWriter().write("Error while inserting");
		}
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
