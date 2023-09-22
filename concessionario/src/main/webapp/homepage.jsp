<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<% String email = (String) session.getAttribute("email");%>
<body>
<p>Benvenuto <%=email %> </p>

<form method="post"  action="Acquirente">
<a href="profilo.jsp"><button>Profiloooooo</button></a>
</form>
</body>
</html>