<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		
		<title>Benvenuto!</title>
	</head>
	<header>

	</header>
	<body>

		
		
		<div class="form">
			<form action="Login" method="post">
				<h2>Login</h2>
				<h3>Username</h3>
				<input type="text" name="email" id="email" class="username">
				<h3>Password</h3>
				<div class="div_pass">
					<div class="pass_in">
						<input type="password" name="password" id="password">
					</div>
					<div class="icona">
						<box-icon class="mostra_pss" id="hide" type='solid' name='hide'></box-icon>
					</div>
				</div>
<!-- 				<span class="errore" id="errore"> -->
<%-- 					<%String messaggio= (String)request.getAttribute("messaggio");%> --%>
<%-- 					<%  --%>
<%-- 					if(messaggio!=null){%>    --%>
<%-- 						<p ><%out.print("Username o Password non sono corretti");%></p> --%>
<%-- 					<%} %> --%>
<!-- 				</span> -->
				<button type="submit" value="Accedi" id="submit">Accedi</button>
			</form>
		</div>
		
	</body>

</html>