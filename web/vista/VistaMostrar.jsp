<%-- 
    Document   : vistaMostrar
    Created on : 15-feb-2016, 18:30:33
    Author     : Miriam
--%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="POJO.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<% ArrayList<Proyeccion> Cartelera = (ArrayList) session.getAttribute("cartelera");
    Multicine cine = (Multicine) session.getAttribute("cine");
    LocalDate hoy = LocalDate.now();

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
        <div >
            <h1 class="centrado tituloMostrar"><%out.print(cine.getNombre());%><%out.print(cine.getUbicacion());%> <%out.print(hoy);%></h1>



            <% for (Iterator it = Cartelera.iterator(); it.hasNext();) {
                    Proyeccion cartelera = (Proyeccion) it.next(); %>
            <table class="tabla-3">
                <tr>
                    <td  class="titulos" colspan="4"> <strong>Sala: </strong>  <% out.println(cartelera.getSala().getNombre()); %></th>
                </tr>
                <tr>
                    <td  class="titulos" colspan="4"> <strong>Título: </strong> <% out.println(cartelera.getPeliculas().getTitulo()); %></th>
                </tr>
                <tr>
                    <td  class="titulos" colspan="4"> <strong>Género: </strong> <% out.println(cartelera.getPeliculas().getGenero()); %></th>
                </tr>
                <tr>
                    <td  class="titulos" colspan="4"> <strong>Director: </strong> <% out.println(cartelera.getPeliculas().getDirector()); %></th>
                </tr>
                <tr>
                    <td  class="titulos" colspan="4"><strong> Actores:  </strong> </th>
                </tr>
                <% for (Iterator itP = cartelera.getPeliculas().getActors().iterator(); itP.hasNext();) {
                        Actor actor = (Actor) itP.next(); %>
                <tr>
                    <td ></td>
                    <td  class="direccion" colspan="3"> - <% out.print(actor.getNombre()); %> <% out.print(actor.getApellidos()); %></td>
                </tr>
                <% } %>
                <tr>
                    <td  class="titulos" colspan="4"> <strong>Duracion:  </strong> <% out.println(cartelera.getPeliculas().getDuracion()); %></th>
                </tr>
                <tr>
                    <td  class="titulos" colspan="4"> <strong>Duracion:  </strong> <% out.println(cartelera.getHoraProyeccioon()); %></th>
                </tr>
            </table>
            <br>
            <% }%>


        </div>

        <br>    
        <button id="atras" class="grupo1" onclick="window.location = '../index.html'">Atrás</button>


    </body>
</html>