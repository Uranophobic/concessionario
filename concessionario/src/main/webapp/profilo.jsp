<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList, bean.Richiesta, bean.Ticket, bean.Macchina, bean.Acquirente, bean.Amministratore"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Area Personale</title>
<link rel="stylesheet" href="static/css/stylesheet.css">
<script src="https://cdn.lordicon.com/bhenfmcm.js"></script>
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

//String email = (String) session.getAttribute("email");
//String ruolo =(String) session.getAttribute("ruolo");

Acquirente acq = (Acquirente) session.getAttribute("acq");
Amministratore amm = (Amministratore) session.getAttribute("amm");
%>
<body>


	<%@ include file="header.jsp"%>

<% if(ruolo.equals("acquirente")) { %>

<!-- 	<p class="benvenutoTit"></p> -->

<!--  tabella di dati personali -->	
<div class="container">
<br>
  <h2>Benvenuto sul tuo profilo <%= acq.getNome() %> <%= acq.getCognome() %></h2>
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
      <div class="col-big col-3">Status della richiesta</div>
    </li>
   <%if (r.size() != 0) {
		int i = 0;
		for (i = 0; i < r.size(); i++) {
		%>

    <li class="table-row">
<%--       <div class="col-big col-1" data-label="Job Id"><span><%=r.get(i).getId_richiesta()%></span></div>--%>      
		<div class="col-big col-2" data-label="Tipo di richiesta"><span><%=r.get(i).getTipo_richiesta()%></span></div>
      <div class="col-big col-3" data-label="Messaggio della richiesta"><span><%=r.get(i).getMessaggio()%></span></div>
      <div class="col-big col-3" data-label="Status della richiesta"><span><%=r.get(i).getStatus()%></span></div>
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
      <div class="col-big col-3"> Risposta dell'assistenza </div>
    </li>
    
    <%if (t.size() !=0) {
    	int i = 0;
		for (i = 0; i < t.size(); i++) {%>
    
    <li class="table-row">
      <%-- <div class="col-big col-1" data-label="Id-Ticket"><span><%=t.get(i).getId_ticket()%></span></div> --%>
      <div class="col-big col-2" data-label="Oggetto dell'assistenza"><span><%=t.get(i).getTitolo()%></span></div>
      <div class="col-big col-3" data-label="Messaggio dell'assistenza"><span><%=t.get(i).getMessaggio()%></span></div>
      <div class="col-big col-3" data-label="Risposta dell'assistenza"><span><%=t.get(i).getRisposta()%></span></div>
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
	
	
	<form action="Acquirente" method="get">
<div class="buttonCenter">  <button class="btn btn__secondary" name="azioneAcq" value="logout"> LOGOUT </button></form></div>
	<%}%>
	
	
	
<!--  profilo amministratore -->
	<% if(ruolo.equals("amministratore")) { %>
<br>
<br>
	  <h2>Benvenuto sul tuo profilo caro <%= amm.getNome() %> <%= amm.getCognome() %></h2>
	
	
	<div class="containerAmm">
  		<p class="sub-title"> Qui sotto troverai l'elenco delle auto in vendita </p>
 	 <ul class="responsive-table-big-amm">
   		<li class="table-header-amm">
      <!-- <div class="col-big col-1"> Id-Ticket </div> -->
      
        <div class="col-big col-5">Modello</div>
		<div class="col-big col-5">Marca</div>
		<div class="col-big col-5">Anno di Produzione</div>
		<div class="col-big col-5">Cilindrata</div>
		<div class="col-big col-5">Carburante</div>
		<div class="col-big col-5">Colore</div>
		<div class="col-big col-5">Stato veicolo</div>
		<div class="col-big col-5">Prezzo</div>
		<div class="col-big col-5">Kilometraggio</div>
		<div class="col-big col-5">Categoria</div>
		<div class="col-big col-5">Posti a sedere</div>
		<div class="col-big col-5">Tipo cambio</div>
		<div class="col-big col-5">Kw</div>
		<div class="col-big col-5">Descrizione</div>
<!-- 		<div class="col-big col-4">IMG</div> -->
		<div class="col-big col-5">Operazioni</div>
    </li>
    
    <%if (m.size() !=0) {
    	int i = 0;
		for (i = 0; i < m.size(); i++) {%>
    
    <li class="table-row">
      <%-- <div class="col-big col-1" data-label="Id-Ticket"><span><%=t.get(i).getId_ticket()%></span></div> --%>
   
      <div class="col-big col-2" data-label="Modello"><span><%=m.get(i).getModello()%></span></div>
	  <div class="col-big col-2" data-label="Marca"><span><%=m.get(i).getMarca()%></span></div>
	  <div class="col-big col-2" data-label="Anno di produzione"><span><%=m.get(i).getAnno_produzione()%></span></div>
	  <div class="col-big col-2" data-label="Cilindrata"><span><%=m.get(i).getCilindrata()%></span></div>
	  <div class="col-big col-2" data-label="Carburante"><span><%=m.get(i).getCarburante()%></span></div>
	  <div class="col-big col-2" data-label="Colore"><span><%=m.get(i).getColore()%></span></div>
	  <div class="col-big col-2" data-label="Stato veicolo"><span><%=m.get(i).getStato_veicolo()%></span></div>
	  <div class="col-big col-2" data-label="Prezzo"><span><%=m.get(i).getPrezzo()%></span></div>
	  <div class="col-big col-2" data-label="Kilometraggio"><span><%=m.get(i).getKilometraggio()%></span></div>
	  <div class="col-big col-2" data-label="Categoria"><span><%=m.get(i).getCategoria()%></span></div>
      <div class="col-big col-2" data-label="Posti"><span><%=m.get(i).getPosti()%></span></div>
	  <div class="col-big col-2" data-label="Tipo cambio"><span><%=m.get(i).getTipo_cambio()%></span></div>
	  <div class="col-big col-2" data-label="KiloWatt"><span><%=m.get(i).getkW()%></span></div>
	  <div class="col-big col-2" data-label="Descrizione"><span><%=m.get(i).getDescrizione()%></span></div>
<%-- 	  <div class="col-big col-4" data-label="Risposta dell'assistenza"><span><%=m.get(i).getImg()%></span></div> --%>
    
      <div class="col-big col-2" data-label="Descrizione"><span> <a href="Amministratore?azioneAmm=upAuto&id_auto=<%=m.get(i).getId_auto()%>">
	            <button  class="no-style" name="azioneAmm" value="upAuto"><lord-icon src="https://cdn.lordicon.com/kulwmpzs.json" trigger="hover" colors="primary:black" style="width:32px;height:32px"></lord-icon></button>
	         </a>
			<a href="Amministratore?azioneAmm=delAuto&id_auto=<%=m.get(i).getId_auto()%>">
	            <button  class="no-style" name="azioneAmm" value="delAuto"><lord-icon src="https://cdn.lordicon.com/kfzfxczd.json" trigger="hover" colors="primary:black" style="width:32px;height:32px">
</lord-icon></button>
	         </a> </span></div>
    
    </li>
   <%}%>
   <li>
	<p class="domanda"> Desideri aggiungere un'altra auto? </p>
		<form action="Amministratore" method="get">
	<button  class="btn btn__secondary" name="azioneAmm" value="addAuto">Aggiungi auto</button>
	</form> </li>


		

	<%} else {%>
	<li>
	<p> Sul sito non risulta inserita alcuna macchina. Clicca qui per inserirne una. </p>
		<form action="Amministratore" method="get">
	<button  class="btn btn__secondary" name="azioneAmm" value="addAuto">Aggiungi auto</button>
	</form></li>  </ul>
	<%}%></div>
	
	
	
<!--  tabella delle richieste che può aggiornare l'amministratore  -->
	
		
<div class="container">
  <p class="sub-title"> Qui sotto troverai l'elenco delle richieste in attesa di essere aggiornate </p>
  <ul class="responsive-table-big">
    <li class="table-header">
				 <div class="col-big col-5"> Tipo  di richiesta</div>
				 <div class="col-big col-5"> Data </div>
				 <div class="col-big col-5"> Messaggio </div>
				 <div class="col-big col-5"> Status </div>
				 <div class="col-big col-5"> Email del richiedente </div>
				 <div class="col-big col-5"> Identificativo dell'auto richiesta </div>
				 <div class="col-big col-5"> Aggiorna la Richiesta </div>
    </li>
    
   <%if(rAttese.size() !=0){
    	int i = 0;
		for (i = 0; i < rAttese.size(); i++) {%>
    
    <li class="table-row">
     
    
			<div class="col-big col-2" data-label="Tipo  di richiesta"><span><%=rAttese.get(i).getTipo_richiesta() %> </span></div>
		 	<div class="col-big col-2" data-label="Data"><span><%=rAttese.get(i).getData() %></span></div>
			<div class="col-big col-2" data-label="Messaggio"><span><%=rAttese.get(i).getMessaggio() %></span></div>
			<div class="col-big col-2" data-label="Status"><span><%=rAttese.get(i).getStatus() %></span></div>
			<div class="col-big col-2" data-label="Email del richiedente"><span><%=rAttese.get(i).getEmail_utente() %></span></div>
			<div class="col-big col-2" data-label="Identificativo dell'auto richiesta "><span><%=rAttese.get(i).getId_auto() %></span></div>
    	    <div class="col-big col-2" data-label="Aggiorna la richiesta">
	    	    <span>
		    	    <a href="Amministratore?azioneAmm=aggiornaRichiesta&id_richiesta=<%=rAttese.get(i).getId_richiesta()%>">
			            <button class="no-style" name="azioneAmm" value="aggiornaRichiesta">
			            	<lord-icon src="https://cdn.lordicon.com/iiixgoqp.json" trigger="hover" colors="primary:black" style="width:32px;height:32px"></lord-icon>
			            </button>
			        </a>
		        </span>
		    </div>
    
    
    </li>
   <%}%>
<!--    <li> -->
<!-- 	<p> Se hai bisogno di assistenza puoi inviare un ticketi di assistenza al nostro costumer service. </p> -->
<!-- 		<form action="Acquirente" method="get"> -->
<!-- 		<a><button class="btn btn__secondary" name="azioneAcq" value="addTicket"> -->
<!-- 				<p>Apri un ticket</p></button></a> -->
<!-- 		</form> </li> -->


		

	<%} else {%>
	<li>
	<p class="domanda"> Non è presente alcuna richiesta da aggiornare. Attendi che un utente effettui una richiesta. </p>
		</li>  </ul>
	<%}%></div>

	
	

<!--  tabella dEI TICKET che può aggiornare l'amministratore  -->
	
		
<div class="container">
  <p class="sub-title"> Qui sotto troverai l'elenco dei ticket aperti dagli utenti che hanno bisogno di assistenza </p>
  <ul class="responsive-table-big">
    <li class="table-header">	 
		 <div class="col-big col-5">Oggetto del ticket</div>
		 <div class="col-big col-5">Corpo del ticket</div>
		 <div class="col-big col-5">Email dell'utente</div>
		 <div class="col-big col-5">Rispondi all'utente </div>		
    </li>
    
   <%if(allTicket.size()!=0){
    	int i = 0;
		for (i = 0; i < allTicket.size(); i++) {%>
    
    <li class="table-row">
     
    
    
   <div class="col-big col-2" data-label="Oggetto del ticket"><span><%=allTicket.get(i).getId_ticket()%></span></div>
	<div class="col-big col-2" data-label="Corpo del ticket"><span><%=allTicket.get(i).getTitolo()%></span></div>
	<div class="col-big col-2" data-label="Email dell'utente"><span><%=allTicket.get(i).getMessaggio()%></span></div>
	<div class="col-big col-2" data-label="Rispondi all'utente"><span><%=allTicket.get(i).getEmail_utente()%></span></div>
	
	<div class="col-big col-2" data-label="Aggiorna la richiesta"><span><a href="Amministratore?azioneAmm=aggiornaTicket&id_ticket=<%=allTicket.get(i).getId_ticket()%>">
	            <button class="no-style" name="azioneAmm" value="aggiornaTicket">
	              <lord-icon src="https://cdn.lordicon.com/itnlluqc.json" trigger="hover" colors="primary:black" style="width:32px;height:32px"></lord-icon>
	            </button></a></span></div>

    </li>
   <%}%>
   
   
   
<!--    <li> -->
<!-- 	<p> Se hai bisogno di assistenza puoi inviare un ticketi di assistenza al nostro costumer service. </p> -->
<!-- 		<form action="Acquirente" method="get"> -->
<!-- 		<a><button class="btn btn__secondary" name="azioneAcq" value="addTicket"> -->
<!-- 				<p>Apri un ticket</p></button></a> -->
<!-- 		</form> </li> -->


		

	<%} else {%>
	<li>
	<p class="domanda"> Non è presente alcun ticket a cui rispondere. Attendi che un utente apra un ticket. </p>
		</li>  </ul>
	<%}%></div>
	
	<form action="Amministratore" method="get">
 	<div class="buttonCenter"> <button  class="btn btn__secondary" name="azioneAmm" value="logout"> LOGOUT </button></div></form>
    <%}%>
	<%@ include file="footer.jsp"%>
</body>
</html>