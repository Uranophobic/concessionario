<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profilo</title>
<link rel="stylesheet" href="static/css/header.css">
</head>
<%

String ruolo = (String) session.getAttribute("ruolo");
%>
<body>
<!-- Navbar -->
	<div class="opacity"></div>
	<header>
		<nav class="menu menu-1">
			<div class="logo">
				<div class="fronte">
					<img src="static/images/logoblack.png">
				</div>
				<div class="retro">
					<img src="static/images/logowhite.png" class="img">
				</div>
			</div>
			<div class="lista">
				<ul>
					<li><a href="home.jsp">Home</a></li>
					<li><a href="catalogo.jsp">Menu</a></li>
					<li><a href="contatti.jsp">Contatti</a></li>
					<li><a href="about.jsp">Chi siamo</a></li>
				</ul>
			</div>
			<div class="icone">
				<% if (ruolo.equals("acquirente")) {%>
					<form action="Acquirente" method="post"><button class="no-style" name="azioneAcq" value="visualizzaProfilo" type="submit" class="no-style"><lord-icon src="https://cdn.lordicon.com/bhfjfgqz.json" trigger="hover" colors="primary:white" style="width:35px;height:35px;"> </lord-icon></button></form></li>
				<%}%>
				<% if (ruolo.equals("amministratore")) {%>
					<form action="Amministratore" method="get"><button class="no-style" name="azioneAmm" value="visualizzaProf" type="submit" ><lord-icon src="https://cdn.lordicon.com/bhfjfgqz.json" trigger="hover" colors="primary:white" style="width:35px;height:35px;"> </lord-icon></button></form></li>
				<%}%>
				<a href="#"><lord-icon src="https://cdn.lordicon.com/enzmygww.json" trigger="hover" colors="primary:white" style="width:35px;height:35px"> </lord-icon></a>
			</div>
		</nav>
	</header>
<!-- Fine navbar -->
</body>
</html>