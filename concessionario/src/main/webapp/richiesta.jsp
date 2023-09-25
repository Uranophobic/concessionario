<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="bean.Macchina, java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Effettua una richiesta</title>
</head>
<% ArrayList<Macchina> m = (ArrayList<Macchina>) session.getAttribute("allMacchine"); %>
<body>
<form action="Acquirente" method="post">
	
	<label> Tipo richiesta: </label> <input type="text" name="tipo" id="tipo">
	<label> Data </label> <input type="text" name="data" id="data">
	<label> Messaggio </label> <input type="text" name="messaggio" id="messaggio">
	<label> Email  </label> <input type="text" name="email" id="email">
	<label> Seleziona l'auto: </label>
	<select name="auto" > 
		<% for(int i=0; i<m.size(); i++){ %>
			<option name="id_auto" value="<%=m.get(i).getId_auto()%>"> <%= m.get(i).getModello() %> </option>
		<%}%>
	</select>
	
	
<a href="profilo.jsp"><button type="submit">  Invia </button></a>
					
</form>
</body>
</html>