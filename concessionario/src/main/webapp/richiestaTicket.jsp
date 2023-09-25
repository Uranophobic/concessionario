<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Effettua una richiesta</title>
</head>

<body>
	<form action="Acquirente" method="post">

		<label> Titolo </label> <input type="text" name="titolo" id="tipo">
		<label> Messaggio </label> <input type="text" name="messaggio"id="messaggio"> 
		<label> Email </label> <input type="text" name="email" id="email">
		<form action="Acquirente" method="post">
			<a><button name="azioneAcq" value="addTicket">invia</button></a>
		</form>

	</form>
</body>
</html>