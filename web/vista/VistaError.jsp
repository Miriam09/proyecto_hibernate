<%-- 
    Document   : VistaError
    Created on : 15-dic-2015, 16:02:28
    Author     : Miriam
--%>

<%@page import="java.util.*"%>
<%@page import="POJO.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<% String mensaje = (String) session.getAttribute("mensaje");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="../css/style.css"></link>
        <!--<script type="text/javascript" src="ArchJS.js"></script>-->
        <link src=""
              <title></title>
    </head>
    <body>
         <form action="../index.html">
        <div id="formulario">
        <h1 class="tituloCaja"><% out.println(mensaje);%></h1>
         <button name="opcion" value="alta" id="alta" class="grupo1" >Aceptar</button>
        </div>
         </form>
<!--        <table class="tabla-1">
            <tr>
                <th class="negrita cabecera-tabla"> NIF </th>
            </tr>
           
            <tr>
                <td class="color-td">  </td>
            </tr>
           
        </table>-->
    </body>
</html>
