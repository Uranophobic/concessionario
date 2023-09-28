<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="bean.Acquirente, bean.Amministratore, bean.Macchina, java.util.ArrayList"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Concessionario</title>
		<link rel="stylesheet" href="static/css/header.css">
		<link rel="stylesheet" href="static/css/catalogo.css">
		<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
		<script src="https://cdn.lordicon.com/bhenfmcm.js"></script>
		<script src="https://kit.fontawesome.com/33ac70226a.js" crossorigin="anonymous"></script>
		<style>
			header{
				position:relative !important;
			}
		</style>
	</head>
	<% ArrayList<Macchina> m = (ArrayList<Macchina>) session.getAttribute("allMacchine"); %>
	<body>
		<%@ include file="header.jsp"%>
		<!-- audi -->
		<section>
			<div class="img-section">
				<div class="logo-macchina">
					<img src="static/loghi/logoaudi.png">
				</div>
			</div>
			<div class="blocco">
				<div class="div-car-macchina">
			  		<div class="mySlidestesla card-macchina">
			  		<% if(m.size() != 0){ 
						for(int i = 0; i < m.size(); i++){
							if(m.get(i).getMarca().equals("Audi")){%>
							<div class="card-macchine">
								<div class="card">
									<img src="static/miniatureAuto/<%= m.get(i).getMin()%>">
									<h1><%= m.get(i).getModello() %></h1>
									<p class="price"><%= m.get(i).getPrezzo() %></p>
									<a href="Acquirente?azioneAcq=visualizzaAuto&id_auto=<%=m.get(i).getId_auto()%>">
										<button name="azioneAcq" value="visualizzaAuto">Info</button>
									</a>
								</div>
							</div>
						<% }}} %>
					</div>
					<div class="next-prev">
						<i id="prev" onclick="plusDivstesla(-1)" class="fa-solid fa-chevron-left"></i>
			  			<i id="next" onclick="plusDivstesla(1)" class="fa-solid fa-chevron-right"></i>
			  		</div>
				</div>
			</div>
		</section>
		<!-- dacia -->
		<section>
			<div class="img-section">
				<div class="logo-macchina">
					<img src="static/loghi/logodacia.png">
				</div>
			</div>
			<div class="blocco">
				<div class="div-car-macchina">
			  		<div class="mySlidestesla card-macchina">
			  		<% if(m.size() != 0){ 
						for(int i = 0; i < m.size(); i++){
							if(m.get(i).getMarca().equals("Dacia")){%>
							<div class="card-macchine">
								<div class="card">
									<img src="static/miniatureAuto/<%= m.get(i).getMin()%>">
									<h1><%= m.get(i).getModello() %></h1>
									<p class="price"><%= m.get(i).getPrezzo() %></p>
									<a href="Acquirente?azioneAcq=visualizzaAuto&id_auto=<%=m.get(i).getId_auto()%>">
										<button name="azioneAcq" value="visualizzaAuto">Info</button>
									</a>
								</div>
							</div>
						<% }}} %>
					</div>
					<div class="next-prev">
						<i id="prev" onclick="plusDivstesla(-1)" class="fa-solid fa-chevron-left"></i>
			  			<i id="next" onclick="plusDivstesla(1)" class="fa-solid fa-chevron-right"></i>
			  		</div>
				</div>
			</div>
		</section>
		<!-- ferrari -->
		<section>
			<div class="img-section">
				<div class="logo-macchina">
					<img src="static/loghi/logoferrari.png">
				</div>
			</div>
			<div class="blocco">
				<div class="div-car-macchina">
			  		<div class="mySlidestesla card-macchina">
			  		<% if(m.size() != 0){ 
						for(int i = 0; i < m.size(); i++){
							if(m.get(i).getMarca().equals("Ferrari")){%>
							<div class="card-macchine">
								<div class="card">
									<img src="static/miniatureAuto/<%= m.get(i).getMin()%>">
									<h1><%= m.get(i).getModello() %></h1>
									<p class="price"><%= m.get(i).getPrezzo() %></p>
									<a href="Acquirente?azioneAcq=visualizzaAuto&id_auto=<%=m.get(i).getId_auto()%>">
										<button name="azioneAcq" value="visualizzaAuto">Info</button>
									</a>
								</div>
							</div>
						<% }}} %>
					</div>
					<div class="next-prev">
						<i id="prev" onclick="plusDivstesla(-1)" class="fa-solid fa-chevron-left"></i>
			  			<i id="next" onclick="plusDivstesla(1)" class="fa-solid fa-chevron-right"></i>
			  		</div>
				</div>
			</div>
		</section>
		<!-- fiat -->
		<section>
			<div class="img-section">
				<div class="logo-macchina">
					<img src="static/loghi/logofiat.png">
				</div>
			</div>
			<div class="blocco">
				<div class="div-car-macchina">
			  		<div class="mySlidestesla card-macchina">
			  		<% if(m.size() != 0){ 
						for(int i = 0; i < m.size(); i++){
							if(m.get(i).getMarca().equals("Fiat")){%>
							<div class="card-macchine">
								<div class="card">
									<img src="static/miniatureAuto/<%= m.get(i).getMin()%>">
									<h1><%= m.get(i).getModello() %></h1>
									<p class="price"><%= m.get(i).getPrezzo() %></p>
									<a href="Acquirente?azioneAcq=visualizzaAuto&id_auto=<%=m.get(i).getId_auto()%>">
										<button name="azioneAcq" value="visualizzaAuto">Info</button>
									</a>
								</div>
							</div>
						<% }}} %>
					</div>
					<div class="next-prev">
						<i id="prev" onclick="plusDivstesla(-1)" class="fa-solid fa-chevron-left"></i>
			  			<i id="next" onclick="plusDivstesla(1)" class="fa-solid fa-chevron-right"></i>
			  		</div>
				</div>
			</div>
		</section>
		<!-- hyundai -->
		<section>
			<div class="img-section">
				<div class="logo-macchina">
					<img src="static/loghi/logohyundai.png">
				</div>
			</div>
			<div class="blocco">
				<div class="div-car-macchina">
			  		<div class="mySlidestesla card-macchina">
			  		<% if(m.size() != 0){ 
						for(int i = 0; i < m.size(); i++){
							if(m.get(i).getMarca().equals("Hyundai")){%>
							<div class="card-macchine">
								<div class="card">
									<img src="static/miniatureAuto/<%= m.get(i).getMin()%>">
									<h1><%= m.get(i).getModello() %></h1>
									<p class="price"><%= m.get(i).getPrezzo() %></p>
									<a href="Acquirente?azioneAcq=visualizzaAuto&id_auto=<%=m.get(i).getId_auto()%>">
										<button name="azioneAcq" value="visualizzaAuto">Info</button>
									</a>
								</div>
							</div>
						<% }}} %>
					</div>
					<div class="next-prev">
						<i id="prev" onclick="plusDivstesla(-1)" class="fa-solid fa-chevron-left"></i>
			  			<i id="next" onclick="plusDivstesla(1)" class="fa-solid fa-chevron-right"></i>
			  		</div>
				</div>
			</div>
		</section>
		<!-- Land_rover -->
		<section>
			<div class="img-section">
				<div class="logo-macchina">
					<img src="static/loghi/logolandrover.png">
				</div>
			</div>
			<div class="blocco">
				<div class="div-car-macchina">
			  		<div class="mySlidestesla card-macchina">
			  		<% if(m.size() != 0){ 
						for(int i = 0; i < m.size(); i++){
							if(m.get(i).getMarca().equals("Land Rover")){%>
							<div class="card-macchine">
								<div class="card">
									<img src="static/miniatureAuto/<%= m.get(i).getMin()%>">
									<h1><%= m.get(i).getModello() %></h1>
									<p class="price"><%= m.get(i).getPrezzo() %></p>
									<a href="Acquirente?azioneAcq=visualizzaAuto&id_auto=<%=m.get(i).getId_auto()%>">
										<button name="azioneAcq" value="visualizzaAuto">Info</button>
									</a>
								</div>
							</div>
						<% }}} %>
					</div>
					<div class="next-prev">
						<i id="prev" onclick="plusDivstesla(-1)" class="fa-solid fa-chevron-left"></i>
			  			<i id="next" onclick="plusDivstesla(1)" class="fa-solid fa-chevron-right"></i>
			  		</div>
				</div>
			</div>
		</section>
		<!-- lotus -->
		<section>
			<div class="img-section">
				<div class="logo-macchina">
					<img src="static/loghi/logolotus.png">
				</div>
			</div>
			<div class="blocco">
				<div class="div-car-macchina">
			  		<div class="mySlidestesla card-macchina">
			  		<% if(m.size() != 0){ 
						for(int i = 0; i < m.size(); i++){
							if(m.get(i).getMarca().equals("Lotus")){%>
							<div class="card-macchine">
								<div class="card">
									<img src="static/miniatureAuto/<%= m.get(i).getMin()%>">
									<h1><%= m.get(i).getModello() %></h1>
									<p class="price"><%= m.get(i).getPrezzo() %></p>
									<a href="Acquirente?azioneAcq=visualizzaAuto&id_auto=<%=m.get(i).getId_auto()%>">
										<button name="azioneAcq" value="visualizzaAuto">Info</button>
									</a>
								</div>
							</div>
						<% }}} %>
					</div>
					<div class="next-prev">
						<i id="prev" onclick="plusDivstesla(-1)" class="fa-solid fa-chevron-left"></i>
			  			<i id="next" onclick="plusDivstesla(1)" class="fa-solid fa-chevron-right"></i>
			  		</div>
				</div>
			</div>
		</section>
		<!-- maserati -->
		<section>
			<div class="img-section">
				<div class="logo-macchina">
					<img src="static/loghi/logomaserati.png">
				</div>
			</div>
			<div class="blocco">
				<div class="div-car-macchina">
			  		<div class="mySlidestesla card-macchina">
			  		<% if(m.size() != 0){ 
						for(int i = 0; i < m.size(); i++){
							if(m.get(i).getMarca().equals("Maserati")){%>
							<div class="card-macchine">
								<div class="card">
									<img src="static/miniatureAuto/<%= m.get(i).getMin()%>">
									<h1><%= m.get(i).getModello() %></h1>
									<p class="price"><%= m.get(i).getPrezzo() %></p>
									<a href="Acquirente?azioneAcq=visualizzaAuto&id_auto=<%=m.get(i).getId_auto()%>">
										<button name="azioneAcq" value="visualizzaAuto">Info</button>
									</a>
								</div>
							</div>
						<% }}} %>
					</div>
					<div class="next-prev">
						<i id="prev" onclick="plusDivstesla(-1)" class="fa-solid fa-chevron-left"></i>
			  			<i id="next" onclick="plusDivstesla(1)" class="fa-solid fa-chevron-right"></i>
			  		</div>
				</div>
			</div>
		</section>
		<!-- mazda -->
		<section>
			<div class="img-section">
				<div class="logo-macchina">
					<img src="static/loghi/logomazda.png">
				</div>
			</div>
			<div class="blocco">
				<div class="div-car-macchina">
			  		<div class="mySlidestesla card-macchina">
			  		<% if(m.size() != 0){ 
						for(int i = 0; i < m.size(); i++){
							if(m.get(i).getMarca().equals("Mazda")){%>
							<div class="card-macchine">
								<div class="card">
									<img src="static/miniatureAuto/<%= m.get(i).getMin()%>">
									<h1><%= m.get(i).getModello() %></h1>
									<p class="price"><%= m.get(i).getPrezzo() %></p>
									<a href="Acquirente?azioneAcq=visualizzaAuto&id_auto=<%=m.get(i).getId_auto()%>">
										<button name="azioneAcq" value="visualizzaAuto">Info</button>
									</a>
								</div>
							</div>
						<% }}} %>
					</div>
					<div class="next-prev">
						<i id="prev" onclick="plusDivstesla(-1)" class="fa-solid fa-chevron-left"></i>
			  			<i id="next" onclick="plusDivstesla(1)" class="fa-solid fa-chevron-right"></i>
			  		</div>
				</div>
			</div>
		</section>
		<!-- mercedes -->
		<section>
			<div class="img-section">
				<div class="logo-macchina">
					<img src="static/loghi/logomercedes.png">
				</div>
			</div>
			<div class="blocco">
				<div class="div-car-macchina">
			  		<div class="mySlidestesla card-macchina">
			  		<% if(m.size() != 0){ 
						for(int i = 0; i < m.size(); i++){
							if(m.get(i).getMarca().equals("Mercedes")){%>
							<div class="card-macchine">
								<div class="card">
									<img src="static/miniatureAuto/<%= m.get(i).getMin()%>">
									<h1><%= m.get(i).getModello() %></h1>
									<p class="price"><%= m.get(i).getPrezzo() %></p>
									<a href="Acquirente?azioneAcq=visualizzaAuto&id_auto=<%=m.get(i).getId_auto()%>">
										<button name="azioneAcq" value="visualizzaAuto">Info</button>
									</a>
								</div>
							</div>
						<% }}} %>
					</div>
					<div class="next-prev">
						<i id="prev" onclick="plusDivstesla(-1)" class="fa-solid fa-chevron-left"></i>
			  			<i id="next" onclick="plusDivstesla(1)" class="fa-solid fa-chevron-right"></i>
			  		</div>
				</div>
			</div>
		</section>
		<!-- porsche -->
		<section>
			<div class="img-section">
				<div class="logo-macchina">
					<img src="static/loghi/logoporsche.png">
				</div>
			</div>
			<div class="blocco">
				<div class="div-car-macchina">
			  		<div class="mySlidestesla card-macchina">
			  		<% if(m.size() != 0){ 
						for(int i = 0; i < m.size(); i++){
							if(m.get(i).getMarca().equals("Porsche")){%>
							<div class="card-macchine">
								<div class="card">
									<img src="static/miniatureAuto/<%= m.get(i).getMin()%>">
									<h1><%= m.get(i).getModello() %></h1>
									<p class="price"><%= m.get(i).getPrezzo() %></p>
									<a href="Acquirente?azioneAcq=visualizzaAuto&id_auto=<%=m.get(i).getId_auto()%>">
										<button name="azioneAcq" value="visualizzaAuto">Info</button>
									</a>
								</div>
							</div>
						<% }}} %>
					</div>
					<div class="next-prev">
						<i id="prev" onclick="plusDivstesla(-1)" class="fa-solid fa-chevron-left"></i>
			  			<i id="next" onclick="plusDivstesla(1)" class="fa-solid fa-chevron-right"></i>
			  		</div>
				</div>
			</div>
		</section>
		<!-- tesla -->
		<section>
			<div class="img-section">
				<div class="logo-macchina">
					<img src="static/loghi/logotesla.png">
				</div>
			</div>
			<div class="blocco">
				<div class="div-car-macchina">
			  		<div class="mySlidestesla card-macchina">
			  		<% if(m.size() != 0){ 
						for(int i = 0; i < m.size(); i++){
							if(m.get(i).getMarca().equals("Tesla")){%>
							<div class="card-macchine">
								<div class="card">
									<img src="static/miniatureAuto/<%= m.get(i).getMin()%>">
									<h1><%= m.get(i).getModello() %></h1>
									<p class="price"><%= m.get(i).getPrezzo() %></p>
									<a href="Acquirente?azioneAcq=visualizzaAuto&id_auto=<%=m.get(i).getId_auto()%>">
										<button name="azioneAcq" value="visualizzaAuto">Info</button>
									</a>
								</div>
							</div>
						<% }}} %>
					</div>
					<div class="next-prev">
						<i id="prev" onclick="plusDivstesla(-1)" class="fa-solid fa-chevron-left"></i>
			  			<i id="next" onclick="plusDivstesla(1)" class="fa-solid fa-chevron-right"></i>
			  		</div>
				</div>
			</div>
		</section>
		<!-- toyota -->
		<section>
			<div class="img-section">
				<div class="logo-macchina">
					<img src="static/loghi/logotoyota.png">
				</div>
			</div>
			<div class="blocco">
				<div class="div-car-macchina">
			  		<div class="mySlidestesla card-macchina">
			  		<% if(m.size() != 0){ 
						for(int i = 0; i < m.size(); i++){
							if(m.get(i).getMarca().equals("Toyota")){%>
							<div class="card-macchine">
								<div class="card">
									<img src="static/miniatureAuto/<%= m.get(i).getMin()%>">
									<h1><%= m.get(i).getModello() %></h1>
									<p class="price"><%= m.get(i).getPrezzo() %></p>
									<a href="Acquirente?azioneAcq=visualizzaAuto&id_auto=<%=m.get(i).getId_auto()%>">
										<button name="azioneAcq" value="visualizzaAuto">Info</button>
									</a>
								</div>
							</div>
						<% }}} %>
					</div>
					<div class="next-prev">
						<i id="prev" onclick="plusDivstesla(-1)" class="fa-solid fa-chevron-left"></i>
			  			<i id="next" onclick="plusDivstesla(1)" class="fa-solid fa-chevron-right"></i>
			  		</div>
				</div>
			</div>
		</section>
		<!-- volkswagen -->
		<section>
			<div class="img-section">
				<div class="logo-macchina">
					<img src="static/loghi/logovolkswagen.png">
				</div>
			</div>
			<div class="blocco">
				<div class="div-car-macchina">
			  		<div class="mySlidestesla card-macchina">
			  		<% if(m.size() != 0){ 
						for(int i = 0; i < m.size(); i++){
							if(m.get(i).getMarca().equals("Volkswagen")){%>
							<div class="card-macchine">
								<div class="card">
									<img src="static/miniatureAuto/<%= m.get(i).getMin()%>">
									<h1><%= m.get(i).getModello() %></h1>
									<p class="price"><%= m.get(i).getPrezzo() %></p>
									<a href="Acquirente?azioneAcq=visualizzaAuto&id_auto=<%=m.get(i).getId_auto()%>">
										<button name="azioneAcq" value="visualizzaAuto">Info</button>
									</a>
								</div>
							</div>
						<% }}} %>
					</div>
					<div class="next-prev">
						<i id="prev" onclick="plusDivstesla(-1)" class="fa-solid fa-chevron-left"></i>
			  			<i id="next" onclick="plusDivstesla(1)" class="fa-solid fa-chevron-right"></i>
			  		</div>
				</div>
			</div>
		</section>
		<!-- volvo -->
		<section>
			<div class="img-section">
				<div class="logo-macchina">
					<img src="static/loghi/logovolvo.png">
				</div>
			</div>
			<div class="blocco">
				<div class="div-car-macchina">
			  		<div class="mySlidestesla card-macchina">
			  		<% if(m.size() != 0){ 
						for(int i = 0; i < m.size(); i++){
							if(m.get(i).getMarca().equals("Volvo")){%>
							<div class="card-macchine">
								<div class="card">
									<img src="static/miniatureAuto/<%= m.get(i).getMin()%>">
									<h1><%= m.get(i).getModello() %></h1>
									<p class="price"><%= m.get(i).getPrezzo() %></p>
									<a href="Acquirente?azioneAcq=visualizzaAuto&id_auto=<%=m.get(i).getId_auto()%>">
										<button name="azioneAcq" value="visualizzaAuto">Info</button>
									</a>
								</div>
							</div>
						<% }}} %>
					</div>
					<div class="next-prev">
						<i id="prev" onclick="plusDivstesla(-1)" class="fa-solid fa-chevron-left"></i>
			  			<i id="next" onclick="plusDivstesla(1)" class="fa-solid fa-chevron-right"></i>
			  		</div>
				</div>
			</div>
		</section>
		<script src="static/js/catalogo.js"></script>
		<%@ include file="footer.jsp"%>
	</body>
</html>