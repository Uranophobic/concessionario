<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="bean.Acquirente" %>
<%@ page import="bean.Amministratore" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Homepage</title>
</head>
<% Amministratore amm = (Amministratore) session.getAttribute("AmministratoreSessione");%>
<% Acquirente acq = (Acquirente) session.getAttribute("AcquirenteSessione");%>
<body>

<p> HOMEPAGE </p>


<% if(!acq.getEmail().equals("")){ %>
	<p> Benvenuto nel nostro concessionario	<%=acq.getEmail()%> </p>

<%} else if(!amm.getEmail().equals("")){ %>
	<p> Benvenuto nel nostro concessionario	<%=amm.getEmail()%> </p>
	
<%} else {%>
<p> Non sei loggato </p>
<%} %>

	
	

	
</body>
</html>