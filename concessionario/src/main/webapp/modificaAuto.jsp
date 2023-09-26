<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="bean.Macchina" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Modifca auto</title>

</head>
<%Macchina mac= (Macchina)session.getAttribute("autoDaModificare"); %>
<body>

<form action="Amministratore" method="post">
<label> ID </label> 
<input type="text" name="idAuto" id="idAuto" value=<%=mac.getId_auto()%> readonly>
<label> Modello </label> 
<input type="text" name="modello" id="modello" value=<%=mac.getModello()%>>
<label> Marca </label> 
<input type="text" name="marca"id="marca" value=<%=mac.getMarca()%>> 
<label> Anno di Porduzione </label> 
<input type="text" name="annoProd" id="annoProd" value=<%=mac.getAnno_produzione()%>>

<label> Cilindrata </label> 
<input type="text" name="cilindrata" id="cilindrata" value=<%=mac.getCilindrata()%>>
<label> Carburante </label> 
<input type="text" name="carburante"id="carburante" value=<%=mac.getCarburante()%>> 
<label> Colore </label> 
<input type="text" name="colore" id="colore" value=<%=mac.getColore()%>>

<label> Stato del veicolo </label> 
<input type="text" name="stato_veicolo" id="stato_veicolo" value=<%=mac.getStato_veicolo()%>>
<label> Prezzo </label> 
<input type="text" name="prezzo"id="prezzo" value=<%=mac.getPrezzo()%>> 
<label> Kilometraggio </label> 
<input type="text" name="kilometraggio" id="kilometraggio" value=<%=mac.getKilometraggio()%>>

<label> Categoria </label> 
<input type="text" name="categoria" id="categoria" value=<%=mac.getCategoria()%>>
<label> Posti a sedere </label> 
<input type="text" name="posti"id="posti" value=<%=mac.getPosti()%>> 
<label> Tipo cambio </label> 
<input type="text" name="tipo_cambio" id="tipo_cambio" value=<%=mac.getTipo_cambio()%>>

<label> KW </label> 
<input type="text" name="kW" id="kW" value=<%=mac.getkW()%>>
<label> Descrizione </label> 
<input type="text" name="descrizione"id="descrizione" value=<%=mac.getDescrizione()%>> 
<label> IMG </label> 
<input type="text" name="img"id="img" value=<%=mac.getImg()%>> 


<a><button name="azioneAmm" value="upAuto">Aggiorna</button></a>


</form>
</body>
</html>