<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>salary calculation</title>
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

.container{
    background-color: rgb(255, 255, 255);
    height: 370px;
    padding: 30px;
    margin:auto;
    margin-top:30px;
    margin-bottom:15px;
    width: 800px;
    border: 1px solid rgb(255, 255, 255);
    border-radius: 0;
}

input[type="text"], select{
    padding: 8px;
    margin: 15px;
    border-width: 0;
    width: 85%;
    outline: none;
    border-bottom : 1px solid lightslategray;
}

input[type="submit"]{
    padding : 8px;
    margin: 15px;
    width : 90%;
    background-color:darkcyan;
    border: none;
    border-radius: 4px;
    color: white;
    cursor: pointer;
}

input[type="submit"]:hover{
	background-color:darkblue;
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
	<div class="container">
		<form action="./calcsalary.jsp" method="post">
		<h3 style="text-align:center;">Salary Calculation</h3>
		<input type="text" name="id" placeholder="Employee ID" required>
		<input type="text" name="leave" placeholder="Number of Leaves" required>
		<select name="month">
			<option value="">--Select Month--</option>
			<option value="January">January</option>
			<option value="February">February</option>
			<option value="March">March</option>
			<option value="April">April</option>
			<option value="May">May</option>
			<option value="June">June</option>
			<option value="July">July</option>
			<option value="August">August</option>
			<option value="September">September</option>
			<option value="October">October</option>
			<option value="November">November</option>
			<option value="December">December</option>
		</select>
		<input type="submit" value="Calculate">
		</form>
		</div>
	<script>
	function redirectToSignup(){
		 window.location.href = "signup.jsp";
	}
	</script>
</body>
</html>