

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/style.css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div id="formulario-2">
            <form action="/Multicines_Hibernate/ServletProyeccion">
                <h2>Nueva proyeccion</h2>
                <input type="text" name="nombre" id="nombre" placeholder="Nombre película" class="inputFomr-2" required>
                <input type="text" name="sala" id="sala" placeholder="Sala" class="inputFomr-2" required>
                <input type="time" name="hora" id="hora" placeholder="Hora" class="inputFomr-2" required>
                <hr>
                <!--<div id="botones">-->
                <div id="g1">
                    <br>
                    <button id="nuevo" class="grupo1" onclick="window.location = '../index.html'">Atrás</button>

                    <button name="nuevo" value="nuevo" id="nuevo" class="grupo1" >Nuevo</button>

                </div>
            </form>

        </div>
    </body>
</html>
