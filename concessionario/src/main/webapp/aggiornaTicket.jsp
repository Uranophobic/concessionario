<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import= "bean.Ticket" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Aggiorna Ticket</title>
</head>
<% Ticket t = (Ticket) session.getAttribute("ticketDaAggiornare");%>
<body>

<p> Caro amministratore, qui potrai risponde al ticket dell'utente  <%=t.getEmail_utente()%> </p>

<form action="Amministratore" method="post">

		<label> Titolo </label> 
		<input type="text" name="titolo" id="tipo" value=<%=t.getTitolo()%> readonly>
		<label> Messaggio </label> 
		<input type="text" name="messaggio"id="messaggio"  value=<%=t.getMessaggio()%> readonly> 
		<label> Email </label> 
		<input type="text" name="email" id="email" value=<%=t.getEmail_utente()%>  readonly>
		<label>Risposta</label>
		<input type="text" name="risposta"id="risposta">
			<a><button name="azioneAmm" value="aggiornaTicket">Rispondi</button></a>
</form> 


</body>
</html>