<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SIGN UP</title>
<style>
@charset "ISO-8859-1";
@charset "ISO-8859-1";
*{
	box-sizing: borderbox;
}

h2{
	text-align: center;
	font-weight: 120px;
	font-family:  'Arial';
}
body{
    background-repeat: no-repeat;
    background-size: 100% 100%;
    box-sizing: border-box;
    display: flex;
    align-items: center;
    height: 110vh;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-image: linear-gradient(
        #1c39bb,
        rgb(0,0,0)
      )
}

.container{
    background-color: rgb(255, 255, 255);
    height: 500px;
    padding: 30px;
    margin: auto;
    width: 500px;
    border: 1px solid rgb(255, 255, 255);
    border-radius: 0;
}

input[type="text"], input[type="email"] , input[type="password"] ,  input[type="tel"]{
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

p{
	text-align: center;
	margin-top: -3px;
	margin-bottom: 3px;
	font-family: Open Sans;
}

a{
	color: green; 
}

a:hover{
	cursor: pointer;
}

</style>
</head>
<body>
<body>
	<div class="container">
	<h2>Payroll Management System</h2>
	<form action="./UserRegister" method="post">
	<input type="text" name="name" placeholder="Name" required>
	<input type="text" name="id" placeholder="Manager ID" required>
	<input type="email" name="email" placeholder="Email" required>
	<input type="tel" name="phno" placeholder="Phone Number" required>
	<input type="password" name="pwd" placeholder="Password" required>
	<input type="submit" value="SIGN UP">
	<p><i>Already a member?</i><a href="login.jsp">Log In</a></p>
	<br>
	</form>
	</div>
</body>
</body>
</html>