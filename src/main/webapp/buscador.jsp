<!DOCTYPE html>
<html lang="es">
<head>
    <link rel="stylesheet" href="style.css">
    <meta charset="UTF-8">
    <title>BlaBlaUJI Buscador</title>
</head>
<body>
<h1>
    <div class="encabezado">
        <h1> <img src="header.jpg" alt="Coche"> </h1>
    </div>

    <div class="titulo">
        <h2> Oferta un nuevo Viaje </h2>
    </div>
</h1>

<div class="cuerpo">
    <form action="buscador.jsp" method="get">
        <table class ="tabla">
            <tr>
                <th>Cuenta:</th>
                <td>
                    <input type="radio" id="standard" name="account" value="standard" required>
                    <label for="standard">Estándar</label>
                    <input type="radio" id="premium" name="account" value="premium" required>
                    <label for="premium">Premium</label>
                </td>
            </tr>

            <tr>
                <th>Código cliente:</th>
                <td>
                    <label for="cod_cli"></label>
                    <input type="text" id="cod_cli" name="cod_cli" required>
                </td>

            </tr>

            <tr>
                <th>Origen:</th>
                <td>
                    <label for="origin"></label>
                    <input type="text" id="origin" name="origin" maxlength="40" size="40" required>
                </td>

                <th>Destino:</th>
                <td>
                    <label for="destination"></label>
                    <input type="text" id="destination" name="destination" maxlength="40" size="40" required>
                </td>
            </tr>

            <tr>
                <th>Fecha:</th>
                <td>
                    <label for="date"></label>
                    <input type="date" id="date" name="date" datatype="dd-mm-yy" required>
                </td>
            </tr>

            <tr>
                <th>Precio:</th>
                <td>
                    <label for="quantity"></label>
                    <input type="number" id="quantity" name="quantity" min="0" required>
                </td>

                <th>Plazas:</th>
                <td>
                    <label>
                        <select name = "seats" required>
                            <option value = "one" selected>Una</option>
                            <option value = "two">Dos</option>
                            <option value = "three">Tres</option>
                            <option value = "four">Cuatro</option>
                        </select>
                    </label>
                </td>
            </tr>
        </table>
        <input type = "submit" name = "submit" value = "Haz la oferta"/>
    </form>
</div>
<br>
</body>
</html>