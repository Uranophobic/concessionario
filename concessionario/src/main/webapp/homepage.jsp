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
 <% String ruolo = (String) session.getAttribute("email"); %>

<body>

<p> HOMEPAGE </p>



   
    <p> Benvenuto nel nostro concessionario <%= ruolo %> </p>
    







	
	

	
</body>
</html>