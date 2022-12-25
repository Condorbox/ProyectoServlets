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
    <table>
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
            <th><%= viaje.getCodviaje()%></th>
            <th><%= viaje.getCodprop()%></th>
            <th><%= viaje.getDestino()%></th>
            <th><%= viaje.getFecha()%></th>
            <th><%= viaje.getPrecio()%></th>
            <th><%= viaje.getNumplazas()%></th>
            <th><%= viaje.getPasajeros()%></th>
        </tr>
        <% }%>
    </table>
    <%}%>
    <h3><a href="main.jsp">Menú</a></h3>

</div>
</body>
</html>
