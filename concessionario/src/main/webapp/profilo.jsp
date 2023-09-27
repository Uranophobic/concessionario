<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList, bean.Richiesta, bean.Ticket, bean.Macchina, bean.Acquirente, bean.Amministratore"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Area Personale</title>
<link rel="stylesheet" href="static/css/stylesheet.css">
</head>
<%
ArrayList<Richiesta> r = (ArrayList<Richiesta>) session.getAttribute("richieste_utente");
ArrayList<Ticket> t = (ArrayList<Ticket>) session.getAttribute("ticket_aperti");
%>

<%
ArrayList<Macchina> m = (ArrayList<Macchina>) session.getAttribute("allMacchine");
ArrayList<Richiesta> allR = (ArrayList<Richiesta>) session.getAttribute("allRichieste");
ArrayList<Ticket> allTicket = (ArrayList<Ticket>) session.getAttribute("allTicket");
ArrayList<Richiesta> rAttese = (ArrayList<Richiesta>) session.getAttribute("richiesteInAttesa");
%>

<%
String email = (String) session.getAttribute("email");
String ruolo =(String) session.getAttribute("ruolo");

Acquirente acq = (Acquirente) session.getAttribute("acq");
Amministratore amm = (Amministratore) session.getAttribute("amm");
%>
<body>


<%@ include file="header.jsp"%>

<% if(ruolo.equals("acquirente")) { %>

<!-- 	<p class="benvenutoTit"></p> -->

<!--  tabella di dati personali -->	
<div class="container">
  <h2>Benvenuto <%= acq.getNome() %> <%= acq.getCognome() %></h2>
  <ul class="responsive-table">
    <li class="table-row">
      <div class="col col-1" data-label="Email"><span><%= acq.getEmail() %></span></div>
      <div class="col col-2" data-label="Password"><span><input type="password" value ="<%= acq.getPassword() %>"></span></div>
      <div class="col col-3" data-label="Indirizzo di residenza"><span><%= acq.getIndirizzoResidenza() %></span></div>
      <div class="col col-4" data-label="Patente e anno di conseguimento"><span>Tipo <%= acq.getPatente() %>, conseguita nell'anno  <%= acq.getAnnoPatente() %></span></div>
    </li>
  </ul>
 </div>
	
	
	
<!--  tabella per la visualizzazione delle richieste effettuate -->
	
	<div class="container">
 	 <p class="sub-title">Per il tuo profilo risultano le seguenti richieste</p>
 	 
 	 
  	<ul class="responsive-table-big">
    <li class="table-header">
     <!--  <div class="col-big col-1">Id della richiesta</div> -->
      <div class="col-big col-2">Tipo di richiesta</div>
      <div class="col-big col-3">Messaggio della richiesta</div>
      <div class="col-big col-4">Status della richiesta</div>
    </li>
   <%if (r.size() != 0) {
		int i = 0;
		for (i = 0; i < r.size(); i++) {
		%>

    <li class="table-row">
<%--       <div class="col-big col-1" data-label="Job Id"><span><%=r.get(i).getId_richiesta()%></span></div>--%>      
		<div class="col-big col-2" data-label="Tipo di richiesta"><span><%=r.get(i).getTipo_richiesta()%></span></div>
      <div class="col-big col-3" data-label="Messaggio della richiesta"><span><%=r.get(i).getMessaggio()%></span></div>
      <div class="col-big col-4" data-label="Status della richiesta"><span><%=r.get(i).getStatus()%></span></div>
    </li>
   <%}%>
  <li> <p class="domanda"> Desideri effettuare un'altra richiesta?</p>
		<form action="Acquirente" method="get">
		<a> <button class="btn btn__secondary" name="azioneAcq" value="addRichiesta"><p>Effettua una richiesta</p></button></a>
				
	</form></li>
	<%}else{%>
		<li><p> Sul tuo profilo non risultano ancora richieste effettuate! Per effetturare una richiesta clicca qui. </p>
		<br>
		<form action="Acquirente" method="get">
		<a> <button class="btn btn__secondary" name="azioneAcq" value="addRichiesta"><p>Effettua una richiesta</p></button></a>
				
	</form></li>
	<%}%>
  </ul>
  
</div>
		
	
	
		
	
	
	
	
<!--  Tabella dei ticket -->
	
<div class="container">
  <p class="sub-title"> Qui sotto troverai l'elenco dei ticket da te aperti </p>
  <ul class="responsive-table-big">
    <li class="table-header">
      <!-- <div class="col-big col-1"> Id-Ticket </div> -->
      <div class="col-big col-2"> Oggetto dell'assistenza </div>
      <div class="col-big col-3"> Messaggio dell'assistenza </div>
      <div class="col-big col-4"> Risposta dell'assistenza </div>
    </li>
    
    <%if (t.size() !=0) {
    	int i = 0;
		for (i = 0; i < t.size(); i++) {%>
    
    <li class="table-row">
      <%-- <div class="col-big col-1" data-label="Id-Ticket"><span><%=t.get(i).getId_ticket()%></span></div> --%>
      <div class="col-big col-2" data-label="Oggetto dell'assistenza"><span><%=t.get(i).getTitolo()%></span></div>
      <div class="col-big col-3" data-label="Messaggio dell'assistenza"><span><%=t.get(i).getMessaggio()%></span></div>
      <div class="col-big col-4" data-label="Risposta dell'assistenza"><span><%=t.get(i).getRisposta()%></span></div>
    </li>
   <%}%>
   <li>
	<p> Se hai bisogno di assistenza puoi inviare un ticketi di assistenza al nostro costumer service. </p>
		<form action="Acquirente" method="get">
		<a><button class="btn btn__secondary" name="azioneAcq" value="addTicket">
				<p>Apri un ticket</p></button></a>
		</form> </li>


		

	<%} else {%>
	<li>
	<p> Sul tuo profilo non risultano ancora ticket aperti! Per aprire un ticket clicca qui. </p>
		<form action="Acquirente" method="get">
		<a><button class="btn btn__secondary" name="azioneAcq" value="addTicket">
				<p>Apri un ticket</p></button></a>
	</form></li>  </ul>
	<%}%></div>
	<%}%>
	
	
	<% if(ruolo.equals("amministratore")) { %>

	<p>
		Benvenuto amministratore
		<%=email%>
	</p>
	
	<p>Lista macchine presenti</p>
	<% if(m.size()>0){%>
	
	<table>
		<tr>
			<th>Modello</th>
			<th>Marca</th>
			<th>Anno di Produzione</th>
			<th>Cilindrata</th>
			<th>Carburante</th>
			<th>Colore</th>
			<th>Stato veicolo</th>
			<th>Prezzo</th>
			<th>Kilometraggio</th>
			<th>Categoria</th>
			<th>Posti a sedere</th>
			<th>Tipo cambio</th>
			<th>Kw</th>
			<th>Descrizione</th>
			<th>IMG</th>
			<th>Operazioni</th>
		</tr>

		<%for(int i=0; i<m.size(); i++){%>
		

		<tr>
			<td><%=m.get(i).getModello()%></td>
			<td><%=m.get(i).getMarca()%></td>
			<td><%=m.get(i).getAnno_produzione()%></td>
			<td><%=m.get(i).getCilindrata()%></td>
			<td><%=m.get(i).getCarburante()%></td>
			<td><%=m.get(i).getColore()%></td>
			<td><%=m.get(i).getStato_veicolo()%></td>
			<td><%=m.get(i).getPrezzo()%></td>
			<td><%=m.get(i).getKilometraggio()%></td>
			<td><%=m.get(i).getCategoria()%></td>
			<td><%=m.get(i).getPosti()%></td>
			<td><%=m.get(i).getTipo_cambio()%></td>
			<td><%=m.get(i).getkW()%></td>
			<td><%=m.get(i).getDescrizione()%></td>
			<td><%=m.get(i).getImg()%></td>
			
			<td>
			<a href="Amministratore?azioneAmm=upAuto&id_auto=<%=m.get(i).getId_auto()%>">
	            <button name="azioneAmm" value="upAuto">Aggiorna auto</button>
	         </a>
			<a href="Amministratore?azioneAmm=delAuto&id_auto=<%=m.get(i).getId_auto()%>">
	            <button name="azioneAmm" value="delAuto">Elimina auto</button>
	         </a>
	        </td>
	        
		</tr>
		<%}%>
			
	</table><%}%>
	<form action="Amministratore" method="get">
	<button name="azioneAmm" value="addAuto">Aggiungi auto</button>
	</form>
	
	
	<div> 
		<%if(rAttese.size()>0){%>
		<table> 
			<tr>
				<th> Id Richiesta </th>
				<th> Tipo Richiesta </th>
				<th> Data </th>
				<th> Messaggio </th>
				<th> Status </th>
				<th> Email utente </th>
				<th> Id Auto </th>
				<th> Aggiorna Richiesta </th>
			</tr>
			
			<% for(int i=0; i<rAttese.size(); i++){ %>
			<tr>
				<td><%=rAttese.get(i).getId_richiesta() %> </td>
				<td><%=rAttese.get(i).getTipo_richiesta() %> </td>
		 		<td><%=rAttese.get(i).getData() %> </td>
				<td><%=rAttese.get(i).getMessaggio() %> </td>
				<td><%=rAttese.get(i).getStatus() %> </td>
				<td><%=rAttese.get(i).getEmail_utente() %> </td>
				<td><%=rAttese.get(i).getId_auto() %> </td>
				<td> <a href="Amministratore?azioneAmm=aggiornaRichiesta&id_richiesta=<%=rAttese.get(i).getId_richiesta()%>">
	            <button name="azioneAmm" value="aggiornaRichiesta">Aggiorna Richiesta</button>
	         </a></td>
			</tr>
			<%}%>
		</table>
	
	<%}else{
	System.out.println("richieste amministratore vuoto");}%>

	</div>
	
	<p> elenco dei ticket</p>
	
	<% if(allTicket.size()>0){%>
	
	<table>
		<tr>
			<th>ID</th>
			<th>Titolo</th>
			<th>Messaggio</th>
			<th>Email utente</th>
			<th>Rispondi</th>
			
		</tr>

		<%for(int i=0; i<allTicket.size(); i++){%>
		

		<tr>
			<td><%=allTicket.get(i).getId_ticket()%></td>
			<td><%=allTicket.get(i).getTitolo()%></td>
			<td><%=allTicket.get(i).getMessaggio()%></td>
			<td><%=allTicket.get(i).getEmail_utente()%></td>
			<td><a href="Amministratore?azioneAmm=aggiornaTicket&id_ticket=<%=allTicket.get(i).getId_ticket()%>"><button name="azioneAmm" value="aggiornaTicket" >Rispondi</button></a></td>
		</tr>
	
	
	<%}%>
	</table>
    <%}else{
    System.out.println("lista dei ticket vuota");}%>
	<%}%>

</body>
</html>