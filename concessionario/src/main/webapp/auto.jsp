<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="bean.Acquirente"%>
<%@ page import="bean.Amministratore"%>
<!DOCTYPE html>
<html>
<head>
<style>
html{
overflow-x: hidden;
}
</style>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Concessionario</title>
<link rel="stylesheet" href="static/css/header.css">
<link rel="stylesheet" href="static/css/auto.css">
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
	<section class="section1">
		<img src="static/images/background-audi.jpg">
		<div class="info-macchina">
			<p><% %>Modello</p>
			<p><%  %>Prezzo</p>
			<p><%  %>KW</p>
		</div>
	</section>
	<section class="section2">
		<div class="info-paragrafi">
			<p>Specifiche macchina</p>
			<p>Ulteriori informazioni</p>
		</div>
		<div class="tabelle">
			<table class="tabella-info-macchina">
				<tr>
					<th>Modello</th>
					<td></td>
				</tr>
				<tr>
					<th>Anno</th>
					<td></td>
				</tr>
				<tr>
					<th>Cilindrata</th>
					<td></td>
				</tr>
				<tr>
					<th>Carburante</th>
					<td></td>
				</tr>
				<tr>
					<th>Colore</th>
					<td></td>
				</tr>
				<tr>
					<th>Stato veicolo</th>
					<td></td>
				</tr>
				<tr>
					<th>Prezzo</th>
					<td></td>
				</tr>
				<tr>
					<th>Categoria</th>
					<td></td>
				</tr>
				<tr>
					<th>Posti</th>
					<td></td>
				</tr>
				<tr>
					<th>Tipo cambio</th>
					<td></td>
				</tr>
				<tr>
					<th>kW</th>
					<td></td>
				</tr>
			</table>
			<table class="descrizione">
				<tr>
					<th>Descrizione</th>
				</tr>
				<tr>
					<td></td>
				</tr>
			</table>
		</div>
	</section>
	<!-- Fine navbar -->
	<script src="static/js/js.js"></script>
</body>

</html>