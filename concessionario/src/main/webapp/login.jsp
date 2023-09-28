<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Benvenuto!</title>
<link rel="stylesheet" href="static/css/login.css">
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css'>
</head>

<body>



		<div class="container" id="container">
		
		<!-- registrazione -->
			<div class="form-container sign-up-container">
				<div class="form1">
					<h1>Create Account</h1>
					<div class="social-container">
						<a href="#" class="social"><i class="fab fa-facebook-f"></i></a> 
						<a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
						<a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
					</div>
					<form action="Login" method="post">
					<input type="text" placeholder="Nome" id="nome" name="nome"/> 
					<input type="text" placeholder="Cognome" id="cognome" name="cognome"/> 
					<input type="email" placeholder="Email" id="email" name="email" />
					<input type="password" placeholder="Password" id="password" name="password"/>
					<input type="text" placeholder="Età" id="eta" name="eta" />
					<input type="text" placeholder="Indirizzo" id="indirizzo" name="indirizzo"/>
					<input type="text" placeholder="Patente" id="patente" name="patente"/>
					<input type="text" placeholder="Anno patente" id="anno_patente" name="anno_patente"/>
						
					<button name="azioneLogin" value="registrati" class="buttonLogin" >Registrati</button> <!--  pulsante di registrazione -->
					</form>
			</div>
			</div>
			
			<!-- login -->
			<div class="form-container sign-in-container">
				<div class="form1">
					<p class="titAccedi">Accedi</p>
					<div class="social-container">
						<a href="#" class="social"><i class="fab fa-facebook-f"></i></a> <a
							href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
						<a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
					</div>
					<form action="Login" method="post">
					<input type="email" placeholder="Email" name="email" id="email"/> 
					<input type="password" placeholder="Password" name="password" id="password"/> 
					<a href="#"> Hai dimenticato la password?</a>
						<br>
					<button name="azioneLogin" value="login" class="buttonLogin" >ACCEDI</button> <!--  pulsante di ACCEDI -->
					</form>
				</div>
			</div>
			
			<!-- pagina che slitta -->
			<div class="overlay-container">
				<div class="overlay">
					<div class="overlay-panel overlay-left">
						<h1>Bentornato</h1>
						<p>Crea il tuo account inserendo i tuoi dati personali</p>
						<p> oppure </p>
						<div class="ghost" id="signIn">Accedi</div>
					</div>
					<div class="overlay-panel overlay-right">
						<h1>Benvenuto</h1>
						<p>Accedi con i tuoi dati personali</p>
						<p> oppure </p>
						<div class="ghost" id="signUp">Registrati</div>
					</div>
				</div>
			</div>
			
		</div>
	</form>

	<script src="static/js/login.js"></script>
</body>

</html>