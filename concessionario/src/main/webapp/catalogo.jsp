<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="bean.Acquirente"%>
<%@ page import="bean.Amministratore"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Concessionario</title>
<link rel="stylesheet" href="static/css/header.css">
<link rel="stylesheet" href="static/css/catalogo.css">
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
<script src="https://cdn.lordicon.com/bhenfmcm.js"></script>
<script src="https://kit.fontawesome.com/33ac70226a.js" crossorigin="anonymous"></script>
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
	<section class="section1">
		<div class="img-section">
			<div class="logo-macchina">
				<img src="static/images/logo-mercedes.png">
			</div>
			<div class="img-macchina">
				<img src="static/images/macchina-mercedes.png">
			</div>
		</div>
		<div class="container-macchine">
	        <div class="image fade">
	            <div class="card-macchine">
					<div class="card">
						  <img src="static/images/258958.jpg">
						  <h1><%  %></h1>
						  <p class="price"><%  %></p>
						  <p><%  %></p>
						  <button>AGGIUNGI AL CARRELLO</button>
					</div>
				</div>
	        </div>
	        <div class="image fade">
	            <div class="card-macchine">
					<div class="card">
					  <img src="static/images/258958.jpg">
					  <h1><%  %></h1>
					  <p class="price"><%  %></p>
					  <p><%  %></p>
					  <button>AGGIUNGI AL CARRELLO</button>
					</div>
				</div>
	        </div>
	        <i id="prev" onclick="show_image(-1)" class="fa-solid fa-chevron-left"></i>
	        <i id="next" onclick="show_image(1)" class="fa-solid fa-chevron-right"></i>
	    </div>
	</section>
	<!-- fine sezioni -->
	<script src="static/js/js.js"></script>
</body>

</html>