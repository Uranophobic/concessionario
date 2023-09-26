<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "bean.Richiesta" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Aggiorna Richiesta</title>
</head>
<% Richiesta r = (Richiesta) session.getAttribute("richiestaDaAggiornare");%>

<body>

<p> ciao caro amministratore, quì puoi gestire la richiesta da parte dell'utente <%=r.getEmail_utente() %> </p>

<form action="Amministratore" method="post">
<label> ID </label> 
<input type="text" name="id_richiesta" id="id_richiesta" value=<%=r.getId_richiesta()%> readonly>
<label> Tipo richiesta </label> 
<input type="text" name="tipo_richiesta" id="tipo_richiesta" value=<%=r.getTipo_richiesta()%> readonly>
<label> Data </label> 
<input type="text" name="data"id="data" value=<%=r.getData()%> readonly> 
<label> Messaggio </label> 
<input type="text" name="messaggio" id="messaggio" value=<%=r.getMessaggio()%> readonly>
<label> Status Attuale </label> 
<input type="text" name="status" id="status" value=<%=r.getStatus()%> readonly>
<label> Status da aggiornare </label> 
<label> Accettato</label> 
<input type="radio" id="statoAggiornato" name="statoAggiornato" value="accettato">
<label> Rifiutato </label> 
<input type="radio" id="statoAggiornato"  name="statoAggiornato" value="rifiutato">
<label> In attesa</label> 
<input type="radio" id="statoAggiornato"  name="statoAggiornato" value="in_attesa">
<button name="azioneAmm" value="aggiornaRichiesta"> Aggiorna richiesta </button>
</form>

</body>
</html>