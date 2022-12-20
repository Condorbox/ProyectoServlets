<!DOCTYPE html>
<html lang="es">
<head>
    <link rel="stylesheet" href="style.css">
    <meta charset="UTF-8">
    <title>BlaBlaUJI</title>
</head>
<body>
    <h1>
        <div class="encabezado">
            <h1> <img src="header.jpg" alt="Coche"> </h1>
        </div>

        <div class="titulo">
            <h2> Por un planeta ... </h2>
        </div>
    </h1>
    <div class="cuerpo">
        <form action="ServletDeBienvenida" method="GET">
            <label> Código de cliente: </label> <input type="text" name="codcli" required> <br>
            <br><input type="submit" value="Acceder">
        </form>
    </div>
</body>
</html>