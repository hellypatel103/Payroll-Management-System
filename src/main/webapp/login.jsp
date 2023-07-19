<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LOGIN</title>
<style>
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
    height: 100vh;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
     background-image: linear-gradient(
         #1c39bb,
         rgb(0,0,0)
      )
}

.container{
    background-color: rgb(255, 255, 255);
    height: 250px;
    padding: 20px;
    margin: auto;
    width: 400px;
    border: 1px solid rgb(255, 255, 255);
    border-radius: 0;
}

input[type="text"] , input[type="password"] {
    padding: 8px;
    margin: 15px;
    border-width: 0;
    width: 85%;
    outline: none;
    border-bottom : 1px solid lightslategray;
}

input[type="submit"]{
    padding : 10px;
    margin: 15px;
    width : 90%;
    background-color:darkcyan;
    border: none;
    border-radius: 4px;
    color: white;
    margin-top: 30px;
    cursor: pointer;
}

input[type="submit"]:hover{
	background-color:darkblue;
}

p{
	text-align: center;
	margin-top: -3px;
	font-family: Open Sans;
}

a{
	color:darkcyan
}

a:hover{
	cursor: pointer;
}

</style>
</head>
<body>
	<div class="container">
	<form action="./UserLogin" method="post">
	<input type="text" name="id" placeholder="Manager ID" required>
	<input type="password" name="pwd" placeholder="Password" required>
 	<input type="submit" value="LOG IN">
 	<p><i>Not a member?</i><a href="signup.jsp">Sign Up</a></p>
	</form>
	</div>
</body>
</html>