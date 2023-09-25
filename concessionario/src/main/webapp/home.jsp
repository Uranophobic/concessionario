<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="bean.Acquirente"%>
<%@ page import="bean.Amministratore"%>
<!DOCTYPE html>
<html>
<head>
<style>
body{
overflow:hidden;
}
</style>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Concessionario</title>
<link rel="stylesheet" href="static/css/home.css">
<link rel="stylesheet" href="static/css/header.css">
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
<script src="https://cdn.lordicon.com/bhenfmcm.js"></script>
</head>

<body>
	<!-- Navbar -->
	<header>
		<nav class="menu menu-1">
			<div class="logo">
				<img src="https://logos-download.com/wp-content/uploads/2016/03/Jeep_logo.png"> 
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
				<a href="login.jsp"><lord-icon src="https://cdn.lordicon.com/bhfjfgqz.json" trigger="hover" colors="primary:white" style="width:35px;height:35px;"> </lord-icon></a>
				<a href="#"><lord-icon src="https://cdn.lordicon.com/enzmygww.json" trigger="hover" colors="primary:white" style="width:35px;height:35px"> </lord-icon></a>
			</div>
		</nav>
	</header>
	<!-- Fine navbar -->


	<!-- Inizio sezioni -->
	<section>
		<!-- Sezione carousel -->
		<div class="crousel">
			<div class="container" id='imgs'>
				<img src="https://images4.alphacoders.com/258/258958.jpg"> 
				<img src="https://images3.alphacoders.com/258/258959.jpg"> 
				<img src="https://images.alphacoders.com/258/258981.jpg"> 
				<img src="https://images4.alphacoders.com/258/258988.jpg">
			</div>
		</div>
	</section>
	<!-- fine sezioni -->
	<script src="static/js/js.js"></script>
</body>

</html>