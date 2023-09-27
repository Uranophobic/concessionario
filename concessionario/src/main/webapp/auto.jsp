<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="bean.Acquirente"%>
<%@ page import="bean.Amministratore"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Concessionario</title>
		<link rel="stylesheet" href="static/css/header.css">
		<link rel="stylesheet" href="static/css/auto.css">
		<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
		<script src="https://cdn.lordicon.com/bhenfmcm.js"></script>
		<script src="https://kit.fontawesome.com/33ac70226a.js" crossorigin="anonymous"></script>
	</head>

	<body>
		<!-- Navbar -->
		<%@ include file="header.jsp"%>
		<!-- Fine navbar -->
		
		<section class="section1">
			<img src="static/images/background-audi.jpg">
			<div class="principali-info-macchina">
				<p><%  %>Modello</p>
				<p><%  %>Prezzo</p>
				<p><%  %>KW</p>
			</div>
			<div class="bottone">
				<button>Richiedi</button>
			</div>
		</section>
		<section class="section2">
			<div class="info-macchina-container">
				<div class="info-macchina-righe">
					<div class="info-macchina">
						<p>Cilindrata</p>
						<h1>100</h1>
					</div>
					<div class="info-macchina">
						<p>Carburante</p>
						<h1>Diesel</h1>
					</div>
					<div class="info-macchina">
						<p>Cambio</p>
						<h1>Automatico</h1>
					</div>
				</div>
			</div>
		</section>
		<section class="section3">
			<div class="blocco">
				<div class="div-video-macchina-sinistra">
					<div class="next-prev">
						<i id="prev" onclick="plusDivs(-1)" class="fa-solid fa-chevron-left"></i>
			  			<i id="next" onclick="plusDivs(1)" class="fa-solid fa-chevron-right"></i>
			  		</div>
			  		
			  		<div class="mySlides1 descrizione-macchina">
						<h1>Descrizione</h1>
						<p><%  %>
							L'aerodinamica può essere regolata attivamente a 
							seconda delle situazioni di guida, attraverso l'impostazione
							per il diffusore posteriore e per le prese d'aria di raffreddamento, 
							poste nella parte anteriore.
						</p>
					</div>
					<div class="mySlides1 descrizione-macchina">
						<h1>Cerchi</h1>
						<p><%  %>
							I cerchi in lega ottimizzati aerodinamicamente, 
							disponibili su richiesta, integrano gli equipaggiamenti di 
							Audi e-tron GT quattro per renderla sinonimo inequivocabile 
							di efficienza e grandi performance.
						</p>
					</div>
					<div class="mySlides1 descrizione-macchina">
						<h1>I contrasti definiscono l'ambiente</h1>
						<p><%  %>
							Personalizza gli interni della tua e-tron GT, scegliendo, per esempio, i rivestimenti in pregiata pelle Nappa Grigio 
							Jet-Nero di Audi exclusive. Inoltre, lasciati conquistare dalle cuciture di alta qualità in Verde Iguana, che decorano 
							i sedili, o dal volante in combinazione Alcantara pelle con marcatore a ore 12 e le cinture di sicurezza con bordo 
							colorato Audi exclusive, entrambi disponibili su richiesta.
						</p>
					</div>
				</div>
			  	<div class="div-video-macchina-destra">
					<div class="mySlides video">
						<video loop autoplay muted src="https://www.audi.it/content/dam/nemo/models/audi-e-tron-gt/e-tron-gt/my-2022/NeMo-Derivate-Startpage/market-introduction/product-highlight/21_01_Dynamic.mp4#t=0.001"></video>
					</div>
					<div class="mySlides video">
						<img src="https://www.audi.it/content/dam/nemo/models/audi-e-tron-gt/e-tron-gt/my-2022/NeMo-Derivate-Startpage/market-introduction/product-highlight/21_02.jpg?imwidth=1344">
					</div>
					<div class="mySlides video">
						<img src="https://www.audi.it/content/dam/nemo/models/audi-e-tron-gt/e-tron-gt/my-2023/product-highlight/eGT_ae_2022_3851-L.jpg?imwidth=1344">
					</div>
				</div>
			</div>
		</section>
		<script>
			var slideIndex = 1;
			showDivs(slideIndex);
	
			function plusDivs(n) {
				showDivs(slideIndex += n);
			}
	
			function showDivs(n) {
				var i;
				var x = document.getElementsByClassName("mySlides");
				var y = document.getElementsByClassName("mySlides1");
				if (n > x.length) { slideIndex = 1 }
				if (n < 1) { slideIndex = x.length }
				for (i = 0; i < x.length; i++) {
					x[i].style.display = "none";
					y[i].style.display = "none";
				}
				x[slideIndex - 1].style.display = "flex";
				y[slideIndex - 1].style.display = "flex";
			}
		</script>
	</body>
</html>