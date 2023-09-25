<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Aggiungi auto</title>
</head>
<body>
<h1>Ciao amministratore, quì potrai aggiungere una nuva auto al catalogo</h1>
<p>Per proseguire compila il form sottostante.</p>

<form action="Amministratore" method="post">
<label> Modello </label> 
<input type="text" name="modello" id="modello">
<label> Marca </label> 
<input type="text" name="marca"id="marca"> 
<label> Anno di Porduzione </label> 
<input type="text" name="annoProd" id="annoProd">

<label> Cilindrata </label> 
<input type="text" name="cilindrata" id="cilindrata">
<label> Carburante </label> 
<input type="text" name="carburante"id="carburante"> 
<label> Colore </label> 
<input type="text" name="colore" id="colore">

<label> Stato del veicolo </label> 
<input type="text" name="stato_veicolo" id="stato_veicolo">
<label> Prezzo </label> 
<input type="text" name="prezzo"id="prezzo"> 
<label> Kilometraggio </label> 
<input type="text" name="kilometraggio" id="kilometraggio">

<label> Categoria </label> 
<input type="text" name="categoria" id="categoria">
<label> Posti a sedere </label> 
<input type="text" name="posti"id="posti"> 
<label> Tipo cambio </label> 
<input type="text" name="tipo_cambio" id="tipo_cambio">

<label> KW </label> 
<input type="text" name="kW" id="kW">
<label> Descrizione </label> 
<input type="text" name="descrizione"id="descrizione"> 


<a><button name="azioneAmm" value="addAuto">Invia</button></a>


</form>

</body>
</html>