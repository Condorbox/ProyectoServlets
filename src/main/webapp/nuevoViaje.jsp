<html>
<head>
    <head>
        <link rel="stylesheet" href="style.css">
        <meta charset="UTF-8">
        <title>Consulta viajes</title>
    </head>
</head>
<body>
    <div class="cuerpo">
        <h1>
            Formulario de oferta de nuevo viaje
        </h1>
        <form action="ServletDeBienvenida" method="GET">
            <table class="tabla">
                <tr>
                    <th>Origen</th>
                    <td>
                        <label for="origen"></label>
                        <input type="text" name="origen" id="origen" maxlength="40" size="40" required>
                    </td>
                </tr>
                <tr>
                    <th>Destino</th>
                    <td>
                        <label for="destino"></label>
                        <input type="text" name="destino" id="destino" maxlength="40" size="40" required>
                    </td>
                </tr>
                <tr>
                    <th>Fecha</th>
                    <td>
                        <label for="date"></label>
                        <input type="date" id="date" name="date" datatype="dd-mm-yy" required>
                    </td>
                </tr>
                <tr>
                    <th>Precio:</th>
                    <td>
                        <label for="quantity"></label>
                        <input type="number" id="quantity" name="precio" min="0" required>
                    </td>
                </tr>
                <tr>
                    <th>Plazas:</th>
                    <td>
                        <label>
                            <select name = "seats" required>
                                <option value = "1" selected>Una</option>
                                <option value = "2">Dos</option>
                                <option value = "3">Tres</option>
                                <option value = "4">Cuatro</option>
                                <option value = "5">Cinco</option>
                            </select>
                        </label>
                    </td>
                </tr>
            </table>
            <input type="submit" value="Acceder">
        </form>
    </div>
</body>
</html>