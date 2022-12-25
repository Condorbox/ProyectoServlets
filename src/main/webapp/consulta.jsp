<%@ page import="org.json.simple.JSONArray" %>
<%@ page import="es.uji.proyectoservlets.modelo.Viaje" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="style.css">
    <meta charset="UTF-8">
    <title>Consulta Viajes</title>
</head>
<body>
<div class="cuerpo">
    <h1> Viajes disponibles desde '<%= request.getParameter("origen")%>'</h1>
    <%
        JSONArray consulta = (JSONArray) request.getAttribute("resultado");
        if (consulta.isEmpty()){%>
    <b> Lo sentimos, no se ha encontrado ningún viaje con dicho origen :c</b>
    <%} else{%>
    <table class="tabla">
        <tr>
            <th> Código viaje</th>
            <th> Código propietario</th>
            <th> Destino</th>
            <th> Fecha</th>
            <th> Precio</th>
            <th> Plazas</th>
            <th> Pasajeros</th>
        </tr>
        <% for(Object elem : consulta){
            Viaje viaje = (Viaje) elem;%>
        <tr>
            <td class = "contenido"><%= viaje.getCodviaje()%></td>
            <td class = "contenido"><%= viaje.getCodprop()%></td>
            <td class = "contenido"><%= viaje.getDestino()%></td>
            <td class = "contenido"><%= viaje.getFecha()%></td>
            <td class = "contenido"><%= viaje.getPrecio()%></td>
            <td class = "contenido"><%= viaje.getNumplazas()%></td>
            <td class = "contenido"><%= viaje.getPasajeros()%></td>
        </tr>
        <% }%>
    </table>
    <%}%>
    <h3><a href="main.jsp">Menú</a></h3>

</div>
</body>
</html>
