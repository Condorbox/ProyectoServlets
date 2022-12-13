<!DOCTYPE html>
<html lang="es">
<head>
  <link rel="stylesheet" href="style.css">
  <meta charset="UTF-8">
  <title>BlaBlaUJI-Reserva Viajes</title>
</head>
<body>
<h1>
  <div class="encabezado">
    <h1> <img src="header.jpg" alt="Coche"> </h1>
  </div>

  <div class="titulo">
    <h2> Formulario de retirada de oferta de viaje </h2>
  </div>
</h1>

<div class="cuerpo">
  <form action="ServletBorrarViajes" method="POST">
    <label>Código del viaje que quieres retirar: </label>
    <input type="text" id="codviajes" name="codviajes" maxlength="40" size="40" required>
    <br><br>
    <input type = "submit" name = "submit" value = "Borrar"/>
  </form>
</div>
</body>
</html>