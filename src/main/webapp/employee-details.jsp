<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>employee details</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<style type="text/css">
body{
    align-items: center;
    height: 100vh;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: black;
}

table {
      width: 50%;
      margin: auto;
      margin-top:30px;
      border-collapse: collapse;
    }
    
    th, td {
      padding: 17px;
      text-align: center;
      background-color: #ffffff;
      border-bottom: 1px solid #ddd;
    }
    
    th {
      background-color: #f2f2f2;
    }
</style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="navbar-brand">
        <a class="nav-link" href="add-employee.jsp">Add Employee</a>
      </li>
      <li class="navbar-brand">
        <a class="nav-link" href="employee-details.jsp">Employee Details</a>
      </li>
      <li class="navbar-brand">
        <a class="nav-link" href="salary-calculation.jsp">Salary Calculation</a>
      </li>
     <li class="navbar-brand">
        <a class="nav-link" href="all_salaries.jsp">All Salaries</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <button class="btn btn-primary" onclick="redirectToSignup()" type="button" style="margin-left:10px;">Logout</button>
    </form>
  </div>
</nav>
<script>
			function redirectToSignup(){
				 window.location.href = "signup.jsp";
			}
</script>
<div>
<% 
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
	Statement st = con.createStatement();
	String query = "select * from employees";
	ResultSet rs = st.executeQuery(query);
	out.println("<table>");
    out.println("<tr>");
    out.println("<th>Employee Id</th>");
    out.println("<th>Employee Name</th>");
    out.println("<th>Phone Number</th>");
    out.println("<th>Employee Email</th>");
    out.println("<th>Designation</th>");
    out.println("<th>Date</th>");
    out.println("<th>Gender</th>");
    out.println("</tr>");
    
    while(rs.next()){
    	out.println("<tr>");
    	out.println("<td>" + rs.getInt(1) + "</td>");
    	out.println("<td>" + rs.getString(2) + "</td>");
    	out.println("<td>" + rs.getInt(3) + "</td>");
    	out.println("<td>" + rs.getString(4) + "</td>");
    	out.println("<td>" + rs.getString(5) + "</td>");
    	out.println("<td>" + rs.getString(6) + "</td>");
    	out.println("<td>" + rs.getString(7) + "</td>");
    }
    out.println("</table>");
    con.close();
}
catch (ClassNotFoundException e) {
    e.printStackTrace();
} catch (SQLException e) {
    e.printStackTrace();
} 

%>
</div>
</body>
</html>