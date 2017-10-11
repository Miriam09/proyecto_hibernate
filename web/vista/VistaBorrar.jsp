<%-- 
    Document   : VistaBorrar
    Created on : 15-feb-2016, 13:16:48
    Author     : Miriam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <link rel="stylesheet" href="../css/style.css"/>
            <title>JSP Page</title>
        </head>
        <body>
            <div id="formulario-3">
                <form action="/Multicines_Hibernate/ServletBorrarPelicula">
                    <h2>Borrar película</h2>

                    <input type="text" name="pelicula" id="pelicula" placeholder="Nombre película" class="inputFomr-2" required>
                    <hr>
                    <!--<div id="botones">-->
                    <div id="g1">
                        <br>
                       <button id="nuevo" class="grupo1" onclick="window.location = '../index.html'">Atrás</button>
                        <button name="borrar" value="borrar" id="borrar" class="grupo1" >Borrar</button>
                       
                            
                       
                    </div>
                </form>

            </div>
        </body>
    </html>
