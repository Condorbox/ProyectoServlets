<%@ page import="org.json.simple.JSONObject" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <link rel="stylesheet" href="style.css">
  <meta charset="UTF-8">
  <title>Reserva - Viajes</title>
</head>
<body>
<div class="cuerpo">
  <%
    JSONObject res = (JSONObject) request.getAttribute("resultado");

    if (res.isEmpty()){%>
  <h1> Lo sentimos, no se ha podido efectuar correctamente la reserva.</h1>
  <%} else{%>

  <h1>Enhorabuena. Tu reserva de viaje ha sido aceptada.</h1>
  <br>
  <h1>El viaje tiene el siguiente estado:</h1>
  <br>
  <ul class="optionList">
    <li>Código del viaje: <%= res.get("codviaje").toString()%>></li>
    <li>Código del propetario: <%=res.get("codprop").toString()%></li>
    <li>Origen: <%=res.get("origen").toString()%></li>
    <li>Destino: <%=res.get("destino").toString()%></li>
    <li>Fecha: <%=res.get("fecha").toString()%></li>
    <li>Pasajeros: <%=res.get("pasajeros").toString()%></li>
    <li>Precio: <%=res.get("precio").toString()%></li>
    <li>Plazas disponibles: <%=res.get("numplazas").toString()%></li>
  </ul>
  <%}%>
  <h3><a href="main.jsp">Menú</a></h3>
</div>
</body>
</html>
