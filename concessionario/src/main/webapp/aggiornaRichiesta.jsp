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

<p> <%= r.getMessaggio()  %>
<%= r.getStatus()  %>
</body>
</html>