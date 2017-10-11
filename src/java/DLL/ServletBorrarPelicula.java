/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DLL;

import DAO.HibernateUtil;
import DAO.Operaciones;
import POJO.Peliculas;
import java.util.ArrayList;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.SessionFactory;

/**
 *
 * @author Miriam
 */
public class ServletBorrarPelicula extends HttpServlet {
   private SessionFactory conexion;
    
    
    public void init(){
         conexion = HibernateUtil.getSessionFactory();
    }
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        try (PrintWriter out = response.getWriter()) {
           try{
//               Session sesion = conexion.openSession();
            String pelicula = request.getParameter("pelicula");
            Operaciones op = new Operaciones();
//            
            Peliculas peliculaB = new Peliculas(pelicula);
            int BorrarUsuario = op.borrarPelicula(peliculaB, conexion);
//      
            if (BorrarUsuario ==1) {
               
                HttpSession SesionUser = request.getSession(true);
                SesionUser.setAttribute("usuario", BorrarUsuario);
                
             SesionUser = request.getSession(true);
            SesionUser.setAttribute("mensaje", "Borrado correctamente.");
            response.sendRedirect("vista/VistaError.jsp");
                
            } else {
                HttpSession SesionUser = request.getSession(true);
            SesionUser.setAttribute("mensaje", "Error al borrar");
            response.sendRedirect("vista/VistaError.jsp");
            }
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
//            out.println("<title>Servlet ServletComprobarUser</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>ServletComprobarUser</h1>");
//            for(int i = 0; i<ListUsuario.size(); i++){
//            out.println("<p>"+ListUsuario.get(i).getNombre()+"</p>");
//            out.println("<p>"+ListUsuario.get(i).getId()+"</p>");
//            out.println("<p>"+ListUsuario.get(i).getNif()+"</p>");
//             out.println("<p>"+ListUsuario.get(i).getDireccion().getDireccion()+"</p>");
            
            
            out.println("</body>");
            out.println("</html>");
            
           } catch (Exception e){
                out.println("ERROR: 'ServletComprobarUser.java'<br><br>");
                out.println("EXCEPCION: " + e.getClass().getName() + "<br><br>");
                out.println("MENSAJE: " + e.getMessage() + "<br><br>");
                e.printStackTrace(out);
           }
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
