<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring 4 MVC - HelloWorld Index Page</title>
</head>
<body>

	<center>
		<h2>Hello World</h2>
		
	</center>
	<form action="hello/abc" method="post">
		<table>
			<tr>
				<td>User Name :</td>
				<td><input type="text" name="username" id="username"/></td>
			</tr>
			<tr>
				<td>Password :</td>
				<td><input type="text" name="password" id="password"/></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" id="submit">Submit</input></td>
			</tr>
		</table>
	</form>
</body>
</html>