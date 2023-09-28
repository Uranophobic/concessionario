<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profilo</title>
<link rel="stylesheet" href="static/css/header.css">
<script src="https://cdn.lordicon.com/bhenfmcm.js"></script>
</head>
<%
String email = (String)session.getAttribute("email");
String ruolo = (String) session.getAttribute("ruolo");
%>
<body>
<!-- Navbar -->

	<header>
		<nav class="menu menu-1">
			<div class="logo">
				<div class="fronte">
					<img src="static/images/logoblack.png">
				</div>
				<div class="retro">
					<img src="static/images/logowhite.png">
				</div>
			</div>
			<div class="lista">
				<a href="home.jsp">Home</a>
				<form action="Catalogo" method="get"><a class="prop"><button class="no-style" name="azioneCatalogo" value="apriCatalogo">Catalogo</button></a></form>
				<a href="contatti.jsp">Contatti</a>
				<a href="about.jsp">Chi siamo</a>
			</div>
			<div class="icone">
				<% if (ruolo==null) {%>
					<a href="login.jsp"><button class="no-style"><lord-icon src="https://cdn.lordicon.com/bhfjfgqz.json" trigger="hover" colors="primary:black" style="width:35px;height:35px;"></lord-icon></button></a>
				<%}%> 
				<% if (ruolo!=null && ruolo.equals("acquirente")) {%>
					<form action="Acquirente" method="post"><a><button class="no-style" name="azioneAcq" value="visualizzaProfilo" type="submit"><lord-icon src="https://cdn.lordicon.com/bhfjfgqz.json" trigger="hover" colors="primary:black" style="width:35px;height:35px;"> </lord-icon></button></a></form>
				<%}%>
				<% if (ruolo!=null && ruolo.equals("amministratore")) {%>
					<form action="Amministratore" method="get"><a><button class="no-style" name="azioneAmm" value="visualizzaProf" type="submit" ><lord-icon src="https://cdn.lordicon.com/bhfjfgqz.json" trigger="hover" colors="primary:black" style="width:35px;height:35px;"> </lord-icon></button></a></form>
				<%}%>
				
				<div class="support"><a href="#"><lord-icon src="https://cdn.lordicon.com/enzmygww.json" trigger="hover" colors="primary:black" style="width:35px;height:35px"> </lord-icon></a></div>
			</div>
		</nav>
	</header>
<!-- Fine navbar -->
</body>
</html>