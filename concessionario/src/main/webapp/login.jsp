<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Benvenuto!</title>
<link rel="stylesheet" href="static/css/login.css">
<link rel='stylesheet'
	href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css'>
</head>
<header> </header>
<body>

	<form action="Login" method="post">

		<div class="container" id="container">
		
		<!-- registrazione -->
			<div class="form-container sign-up-container">
				<div class="form1">
					<h1>Create Account</h1>
					<div class="social-container">
						<a href="#" class="social"><i class="fab fa-facebook-f"></i></a> <a
							href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
						<a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
					</div>
					<span>or use your email for registration</span> <input type="text"
						placeholder="Nome" /> <input type="email" placeholder="Email" />
					<input type="password" placeholder="Password" />
					<button>Registrati</button>
				</div>
			</div>
			
			<!-- login -->
			<div class="form-container sign-in-container">
				<div class="form1">
					<h1>Accedi</h1>
					<div class="social-container">
						<a href="#" class="social"><i class="fab fa-facebook-f"></i></a> <a
							href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
						<a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
					</div>
					<span>o usa il tuo account</span> <input type="email"
						placeholder="Email" name="email" id="email"/> <input type="password"
						placeholder="Password" name="password" id="password"/> <a href="#">Hai dimenticato la
						password?</a>
					<button>Accedi</button>
				</div>
			</div>
			
			<!-- pagina che slitta -->
			<div class="overlay-container">
				<div class="overlay">
					<div class="overlay-panel overlay-left">
						<h1>Bentornato!</h1>
						<p>Crea il tuo account inserendo i tuoi dati personali</p>
						<button class="ghost" id="signIn">Accedi</button>
					</div>
					<div class="overlay-panel overlay-right">
						<h1>Bentornato!</h1>
						<p>Accedi con i tuoi dati personali</p>
						<button class="ghost" id="signUp">Registrati</button>
					</div>
				</div>
			</div>
			
		</div>
	</form>

	<script src="static/js/login.js"></script>
</body>

</html>