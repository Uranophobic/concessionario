<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="bean.Macchina, java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inoltra la tua richiesta</title>
<link rel="stylesheet" href="static/css/stylesheet.css">
</head>
<% ArrayList<Macchina> m = (ArrayList<Macchina>) session.getAttribute("allMacchine"); 
Macchina mV = (Macchina) session.getAttribute("macchinaRichiesta");%>
<body>
<%@ include file="header.jsp"%>


<div class="containerRichiesta">
 <h2>Inoltra la tua richiesta</h2>

<form action="Acquirente" method="post">
	
	
	<fieldset class="field">
	<legend> Compila i seguenti campi</legend>
		<div class="tab-richiesta">
		<label> Tipo richiesta: </label>
			<div> 
				 <label> Acquisto</label>
				 <input type="radio" name="tipo" id="tipo" value="acquisto"> 
				 <label> Noleggio</label>
				 <input type="radio" name="tipo" id="tipo" value="noleggio">
			</div>
			<label> Data </label> <input type="date" name="data" id="data">
			<label> Messaggio </label> <input type="text" name="messaggio" id="messaggio" placeholder="Inserisci qui un messaggio per la tua richiesta">
			<label> Email  </label> <input type="text" name="email" id="email" value="<%=email%>">
			<%if(mV == null){ %>
		<label> Seleziona l'auto dall'elenco: </label> 
			<select name="id_auto" >
				<% for(int i=0; i<m.size(); i++){ %>
					<option name="id_auto" value="<%=m.get(i).getId_auto()%>"> <%= m.get(i).getModello() %> </option>
				<%}%>
			</select>
			<%} %>
		</div>
			<%if(mV != null){ %>
			<label> L'auto da te selezionata è la seguente: </label>
			<select name="id_auto" > 
					<option name="id_auto" value="<%=mV.getId_auto() %>"> <%= mV.getModello() %> </option>
			</select>
			<%} %>
			
	</fieldset>
	
	
	
	<div class="buttonRichiesta">
	
		<form action="Acquirente" method="post"><a ><button class="btn btn__secondary" name="azioneAcq" value="addRichiesta"> invia </button></a></form>
		</div>			
</form>
</div>
</body>
</html>