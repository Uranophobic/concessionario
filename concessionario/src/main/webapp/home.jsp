<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="static/css/style.css">
     <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
</head>

<body>
    <!-- Navbar -->
    <header>
        <nav class="menu menu-1">
            <ul>
                <li><a href="home.jsp">Home</a></li>
                <li><a href="menu2.jsp">Menu</a></li>
                <li><a href="contatti.jsp">Contatti</a></li>
                <li><a href="about.jsp">Chi siamo</a></li>
                <li><a href="login.jsp">Accedi</a></li>
            </ul>
        </nav>

    </header> <!-- Fine navbar -->


    <!-- Inizio sezioni -->
    <section>
        <!-- Sezione carousel -->
        <div class="carousel">
            <div class="carousel-container">
                <div class="carousel-slide">
                    <img src="https://images8.alphacoders.com/114/1146097.jpg" alt="Immagine 1">
                </div>
                <div class="carousel-slide">
                    <img src="https://images8.alphacoders.com/114/1146097.jpg" alt="Immagine 2">
                </div>
                <div class="carousel-slide">
                    <img src="https://images8.alphacoders.com/114/1146097.jpg" alt="Immagine 3">
                </div>
                <div class="carousel-slide">
                    <img src="https://images8.alphacoders.com/114/1146097.jpg" alt="Immagine 4">
                </div>
                <!-- Aggiungi altri 4 elementi simili per le tue altre immagini -->
            </div>
            <div class="carousel-buttons">
                <button class="carousel-button prev-button" aria-label="Precedente">&#8592;</button>
                <button class="carousel-button next-button" aria-label="Successiva">&#8594;</button>
            </div>
        </div> <!-- fine sezione carousel -->
        <!-- primo titolo sezione 1 -->
        <div class="container1">

            <img src="https://www.emmedimeccanica.com/wp-content/uploads/2021/04/iStock-1073743202.jpg" class="img">


            <p class="titolo1">GARANTIAMO QUALITA' E SICUREZZA <br><span>Lorem ipsum dolor sit amet consectetur adipisicing elit. <br>
                 Quia quos perferendis molestias labore nulla qui
                possimus obcaecati, totam, voluptatum eius autem?  <br>
                At molestias quis quidem soluta dolor fugit ex
                numquam?</span></p>

            
        </div>
        <!-- fine primo titolo -->
        <!-- inizio sezione 2 -->


    </section> <!-- fine sezioni -->


    <!-- inizio footer -->
    <footer class="footer">
        <div class="containerf">
         <div class="row">
           <div class="footer-col">
             <h4>Sezione 1</h4>
             <ul>
               <li><a href="#">Chi siamo</a></li>
               <li><a href="#">I nostri servizi</a></li>
               <li><a href="#">Privacy Policy</a></li>
               <li><a href="#">Accedi</a></li>
             </ul>
           </div>
           <div class="footer-col">
             <h4>Sezione 2</h4>
             <ul>
               <li><a href="#">FAQ</a></li>
               <li><a href="#">Spedizioni</a></li>
               
               <li><a href="#">Modalità Di Pagamento</a></li>
             </ul>
           </div>
           
           <div class="footer-col">
             <h4>Seguici</h4>
             <div class="social-links">
               <a href="#"><i class="fab fa-facebook-f"></i></a>
               <a href="#"><i class="fab fa-twitter"></i></a>
               <a href="#"><i class="fab fa-instagram"></i></a>
               <a href="#"><i class="fab fa-linkedin-in"></i></a>
             </div>
           </div>
         </div>
        </div>
     </footer>
 <!-- fine footer -->
    <script src="static/js/js.js"></script>
</body>

</html>