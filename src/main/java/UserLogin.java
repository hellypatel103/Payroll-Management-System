

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class UserLogin
 */
@WebServlet("/UserLogin")
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserLogin() {
       super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		HttpSession session = request.getSession();
		session.setAttribute("curruser", id);
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
			java.sql.Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from managers where id='"+ id +"' and pwd='"+pwd+"'");	
		}
		catch(Exception e) {
			System.out.println(e);
		}
		
		if (response.isCommitted()) {
			 RequestDispatcher dispatcher = request.getRequestDispatcher("/signup.jsp"); 
		        dispatcher.forward(request, response);
	    } else {
	        
	        RequestDispatcher dispatcher = request.getRequestDispatcher("/home.jsp"); 
	        dispatcher.forward(request, response);
	    }
		
		doGet(request, response);
	}

}
