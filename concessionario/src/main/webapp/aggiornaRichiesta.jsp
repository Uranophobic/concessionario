<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<%@ page import="bean.Richiesta" %>
		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="ISO-8859-1">
			<title>Aggiorna Richiesta</title>
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
			<link rel="stylesheet" href="static/css/form.css">

		</head>
		<% Richiesta r=(Richiesta) session.getAttribute("richiestaDaAggiornare");%>

			<body>
				<div class="container">
					<form class="form" action="Amministratore" method="post">
						<div class="left">
							<div class="header">
								<h2 class="animation a1">Caro amministratore, quì puoi gestire la richiesta da
									parte dell'utente
									<%=r.getEmail_utente() %>
								</h2>
							</div>
							<div class="grid">
								<h4 class="animation a2"> ID </h4>
								<input type="text" class="form-field animation a3" name="id_richiesta" id="id_richiesta"
									value=<%=r.getId_richiesta()%>
								readonly>
								<h4 class="animation a2">Tipo richiesta </h4>
								<input type="text" class="form-field animation a3" name="tipo_richiesta"
									id="tipo_richiesta" value=<%=r.getTipo_richiesta()%>
								readonly>
								<h4 class="animation a2">Data </h4>
								<input type="text" class="form-field animation a3" name="data" id="data"
									value=<%=r.getData()%> readonly>
								<h4 class="animation a2">Messaggio</h4>
								<input type="text" class="form-field animation a3" name="messaggio" id="messaggio"
									value=<%=r.getMessaggio()%> readonly>
								<h4 class="animation a2"> Status Attuale </h4>
								<input type="text" class="form-field animation a3" name="status" id="status"
									value=<%=r.getStatus()%> readonly>

								<h4 class="animation a2"> Status da aggiornare </h4>
								<div class="gridRadio">
									<h4 class="animation a2"> Accettato</h4>
									<input type="radio" class="radio" id="statoAggiornato" name="statoAggiornato" value="accettato">
									<h4 class="animation a2">Rifiutato </h4>
									<input type="radio" class="radio"  id="statoAggiornato" name="statoAggiornato" value="rifiutato">
									<h4 class="animation a2"> In attesa</h4>
									<input type="radio" class="radio"  id="statoAggiornato" name="statoAggiornato" value="in_attesa">
								</div>
							</div>
							<button class="btn btn__secondary" name="azioneAmm" value="aggiornaRichiesta">Aggiorna
								richiesta</button>
						</div>

					</form>
					<div class="right"></div>
				</div>


			</body>

		</html>



		<!-- </head>
<body>
<!-- 
<div class="container">
	<div class="left">
	  <div class="header">
		<h2 class="animation a1">Welcome Back</h2>
		<h4 class="animation a2">Log in to your account using email and password</h4>
	  </div>
	  <div class="form">
		<input type="email" class="form-field animation a3" placeholder="Email Address">
		<input type="password" class="form-field animation a4" placeholder="Password">
		<p class="animation a5"><a href="#">Forgot Password</a></p>
		<button class="animation a6">LOGIN</button>
	  </div>
	</div>
	<div class="right"></div>
  </div>
  
	
  </body>
  </html>
   -->