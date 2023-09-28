
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<%@page import="bean.Ticket" %>
		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="ISO-8859-1">
			<title>Insert title here</title>
			<link rel="stylesheet" href="static/css/stylesheet.css">
		</head>
		<% Ticket t=(Ticket) session.getAttribute("ticketDaAggiornare");%>





			<body>
				<%@ include file="header.jsp" %>
					<br>
					<div class="containerRichiesta">
						
						<h2> Caro amministratore, qu� potrai risponde al ticket dell'utente <%=t.getEmail_utente()%>
						</h2>
						<form action="Amministratore" method="post">
							<fieldset class="field">
								<legend> Rispondi al ticket</legend>
								<div class="tab-richiesta">
									<label> Titolo </label>
									<input type="text" name="titolo" id="tipo" value=<%=t.getTitolo()%> readonly>
									<label> Messaggio </label>
									<input type="text" name="messaggio" id="messaggio" value=<%=t.getMessaggio()%>
									readonly>
									<label> Email </label>
									<input type="text" name="email" id="email" value=<%=t.getEmail_utente()%> readonly>
									<label>Risposta</label>
									<input type="text" name="risposta" id="risposta">
									
								</div>
							</fieldset>
							<div class="buttonCenter">
								<a><button class="btn btn__secondary" name="azioneAmm"
										value="aggiornaTicket">Rispondi</button></a>
							</div>
						</form>

					</div>
			</body>

		</html>