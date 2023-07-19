

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserRegister
 */
@WebServlet("/UserRegister")
public class UserRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserRegister() {
       super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		int id = Integer.parseInt(request.getParameter("id"));
		String email = request.getParameter("email");
		int phno = Integer.parseInt(request.getParameter("phno"));
		String pwd = request.getParameter("pwd");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
			PreparedStatement ps = con.prepareStatement("insert into managers values(?,?,?,?,?);");
			ps.setString(1, name);
			ps.setInt(2, id);
			ps.setString(3, email);
			ps.setInt(4, phno);
			ps.setString(5, pwd);
			int status = ps.executeUpdate();
		}
		
		catch(Exception e) {
			System.out.println(e);
		}
		request.getRequestDispatcher("/home.jsp").forward(request, response);
	}

}
