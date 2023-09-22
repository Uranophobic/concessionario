<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList, bean.Richiesta" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profilo utente</title>
</head>
<% ArrayList<Richiesta> r = (ArrayList<Richiesta>) session.getAttribute("richieste_utente");%>
<body>

<p> Le tue richieste </p>

 
<%if ( r != null){%>
	<p> Per il tuo profilo risultano le seguenti richieste </p>
	<table>
		<tr>
			<th> id_richiesta </th>
			<th> tipo_richiesta</th>
			<th> data </th>
			<th> messaggio </th>
			<th> status </th>
		</tr>
		
		<% int i=0;
			for(i=0; i< r.size(); i++){
		%>
		
		<tr>
			<td> <%= r.get(i).getId_richiesta() %></td>
			<td> <%=r.get(i).getTipo_richiesta() %></td>
			<td> <%= r.get(i).getData() %> </td>
			<td> <%= r.get(i).getMessaggio() %></td>
			<td> <%= r.get(i).getStatus() %></td>
		</tr>
	<%}%>	
	</table>
		
		

		<%}else { 
 		System.out.println("Vuoto");
		}%>
		<a href="richiesta.jsp"><button> RICHIESTA </button></a>
</body>
</html>