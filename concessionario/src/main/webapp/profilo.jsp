<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList, bean.Richiesta, bean.Ticket, bean.Macchina"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profilo utente</title>
</head>
<%
ArrayList<Richiesta> r = (ArrayList<Richiesta>) session.getAttribute("richieste_utente");
%>

<%
ArrayList<Ticket> t = (ArrayList<Ticket>) session.getAttribute("ticket_aperti");
ArrayList<Macchina> m = (ArrayList<Macchina>) session.getAttribute("allMacchine");
ArrayList<Richiesta> allR = (ArrayList<Richiesta>) session.getAttribute("allRichieste");

ArrayList<Richiesta> rAttese = (ArrayList<Richiesta>) session.getAttribute("richiesteInAttesa");
%>

<%
String email = (String) session.getAttribute("email");
String ruolo =(String) session.getAttribute("ruolo");
%>
<body>

<% if(ruolo.equals("acquirente")) { %>

	<p>
		Benvenuto acquirente
		<%=email%>
	</p>
	
		<%
	if (r != null) {
	%>
	<p>Per il tuo profilo risultano le seguenti richieste</p>
	<table>
		<tr>
			<th>id_richiesta</th>
			<th>tipo_richiesta</th>

			<th>messaggio</th>
			<th>status</th>
		</tr>

		<%
		int i = 0;
		for (i = 0; i < r.size(); i++) {
		%>

		<tr>
			<td><%=r.get(i).getId_richiesta()%></td>
			<td><%=r.get(i).getTipo_richiesta()%></td>

			<td><%=r.get(i).getMessaggio()%></td>
			<td><%=r.get(i).getStatus()%></td>
		</tr>
		<%
		}
		%>
	</table>

	<%
	} else {
	System.out.println("VuotoRichiesta");
	}
	%>

	<form action="Acquirente" method="get">
		<a><button name="azioneAcq" value="addRichiesta">
				RICHIESTA</button></a>
	</form>

	<%
	if (t != null) {
	%>
	<p>Per il tuo profilo risultano le seguenti richieste</p>
	<table>
		<tr>
			<th>id_ticket</th>
			<th>Titolo</th>
			<th>Messaggio</th>
			<th>Risposta</th>
			<th>email_utente</th>
		</tr>

		<%
		int i = 0;
		for (i = 0; i < t.size(); i++) {
		%>

		<tr>
			<td><%=t.get(i).getId_ticket()%></td>
			<td><%=t.get(i).getTitolo()%></td>
			<td><%=t.get(i).getMessaggio()%></td>
			<td><%=t.get(i).getRisposta()%></td>
			<td><%=t.get(i).getEmail_utente()%></td>
		</tr>
		<%
		}
		%>
	</table>

	<%
	} else {
	System.out.println("VuotoTicket");
	}
	%>
	
	<form action="Acquirente" method="get">
		<a><button name="azioneAcq" value="addTicket">
				RICHIESTA</button></a>
	</form>
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
	
	

	<%}%>

	
	
	
	








</body>
</html>