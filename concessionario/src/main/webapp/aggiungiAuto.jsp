<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="ISO-8859-1">
        <title>Aggiungi auto</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
        <link rel="stylesheet" href="static/css/form.css">
    </head>

    <body>
        
        <div class="container" style="margin-left: 1%;">
            <form class="form"  action="Amministratore" method="post" >
                <div class="left">
                    <div class="header"></div>
                    <h2>Ciao amministratore, qu� potrai aggiungere una nuva auto al catalogo</h1>
                        <p style="margin-bottom: 2%;">Per proseguire compila il form sottostante.</p>
                </div>
                <div class="gridAdd">
                    
                    <input type="text" class="form-field animation a3" name="modello" id="modello" placeholder="Modello">
                    
                    <input type="text" class="form-field animation a3" name="marca" id="marca" placeholder="Marca">
                    
                    <input type="text" class="form-field animation a3" name="annoProd" id="annoProd" placeholder="Anno di produzione">

                    
                    <input type="text" class="form-field animation a3" name="cilindrata" id="cilindrata" placeholder="Cilindrata">
                    
                    <input type="text" class="form-field animation a3" name="carburante" id="carburante" placeholder="Carburante">
                   
                    <input type="text" class="form-field animation a3" name="colore" id="colore" placeholder="Colore">

                    
                    <input type="text" class="form-field animation a3" name="stato_veicolo" id="stato_veicolo" placeholder="Stato del veicolo">
                    
                    <input type="text" class="form-field animation a3" name="prezzo" id="prezzo" placeholder="Prezzo">
                    
                    <input type="text" class="form-field animation a3" name="kilometraggio" id="kilometraggio" placeholder="Kilometraggio">

                    
                    <input type="text" class="form-field animation a3" name="categoria" id="categoria" placeholder="Categoria">
                    
                    <input type="text" class="form-field animation a3" name="posti" id="posti" placeholder="Posti a sedere">
                    
                    <input type="text" class="form-field animation a3" name="tipo_cambio" id="tipo_cambio" placeholder="Tipo cambio">

                    
                    <input type="text" class="form-field animation a3" name="kW" id="kW" placeholder="KW">
                    
                    <input type="text" class="form-field animation a3" name="descrizione" id="descrizione" placeholder="Descrizione">

                    <input type="text" class="form-field animation a3" name="img" id="img" placeholder="Immagine auto">
                    
                    <input type="text" class="form-field animation a3" name="min" id="min" placeholder="Miniatura auto">
                </div>
                <a style="margin-top: 2%;"><button class="btn btn__secondary"  name="azioneAmm" value="addAuto">Invia</button></a>

            </form>
            <div class="right">
                <img src="https://wlt-p-001.sitecorecontenthub.cloud/api/public/content/3b76260044f041a99868238b37560c2b?v=eff840c6">
            </div>
        </div>
       
    </body>

    </html>