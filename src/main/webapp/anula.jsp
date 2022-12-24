<%@ page import="org.json.simple.JSONObject" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="style.css">
    <meta charset="UTF-8">
    <title>Anula reserva</title>
</head>
<body>
<% JSONObject res = (JSONObject) request.getAttribute("resultado");
 if (res.isEmpty()) { %>
   <h1>Lo sentimos, no se ha podido anular la reserva</h1>
 <%} else {%>
    <h1> Tu anulación ha sido aceptada</h1>
    <h2>El viaje <%=request.getParameter("codviaje")%> tiene el siguiente estado: </h2>
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
</body>
</html>
