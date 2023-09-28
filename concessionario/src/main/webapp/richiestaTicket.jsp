<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="ISO-8859-1">
		<title>Richiedi assistenza</title>
		<link rel="stylesheet" href="static/css/stylesheet.css">
	</head>

	<body>
		<%@ include file="header.jsp" %>

			<div class="containerRichiesta">
				<h2>Richiedi assistenza</h2>
				<form action="Acquirente" method="post">
					<fieldset class="field">
						<legend> Compila i seguenti campi</legend>
						<div class="tab-richiesta">
							<label> Titolo </label> <input type="text" name="titolo" id="tipo"
								placeholder="Inserisci qui l'oggetto della tua richiesta per l'assistenza">
							<label> Messaggio </label> <input type="text" name="messaggio" id="messaggio"
								placeholder="Inserisci qui la tua richiesta per l'assistenza">
							<label> Email </label> <input type="text" name="email" id="email" value="<%=email%>">

						</div>
					</fieldset>
					<div class="buttonCenter">
						<form action="Acquirente" method="post">
							<a><button class="btn btn__secondary" name="azioneAcq" value="addTicket">Invia</button></a>
						</form>
					</div>
				</form>
			</div>
	</body>

	</html>