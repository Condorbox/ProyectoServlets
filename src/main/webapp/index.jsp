<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Servlet de Bienvenida</title>
</head>
<body>
<h1> Servlet de Bienvenida</h1>
<br/>
<form action="ServletDeBienvenida" method="POST">
    <table>
        <tr><th>Nombre: </th> <td> <input type="text" name="nombre"> </td></tr>
        <tr><th>Apellidos: </th> <td> <input type="text" name="apellidos"> </td></tr>
        <tr><td colspan="2"> <input type="submit" value="Envia"> </td></tr>
    </table>
</form>
</body>
</html>