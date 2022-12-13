<%--
  Created by IntelliJ IDEA.
  User: al405390
  Date: 13/12/2022
  Time: 10:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Bienvenida</title>
</head>
<body>
<h1>Página de bienvenida en <%= request.getAttribute("ruta")%></h1>
<p> Bienvenido <%= request.getParameter("nombre")%>
    <%=request.getParameter("apellidos")%>
</p>
</body>
</html>
