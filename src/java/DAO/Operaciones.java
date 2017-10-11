/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import POJO.*;
import static java.lang.System.out;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author Miriam
 */
public class Operaciones {
    
    
    public Sala buscarSala(Sala objSala, SessionFactory conexion){
        Session sesion = conexion.openSession();
        String nombre = objSala.getNombre();
        String hql = "from Sala where nombre =:getNom";

        Query query = sesion.createQuery(hql);
        query.setParameter("getNom", nombre);
        return (Sala) query.uniqueResult();
    }
    
    public Peliculas buscarPelicula(Peliculas objPeli, SessionFactory conexion){
        Session sesion = conexion.openSession();
        String titulo = objPeli.getTitulo();
        String hql = "from Peliculas where titulo =:getTitl";

        Query query = sesion.createQuery(hql);
        query.setParameter("getTitl", titulo);
        return (Peliculas) query.uniqueResult();
    }
    
    
    public int NuevaProyeccion(Proyeccion objP, SessionFactory conexion){
         Session sesion = conexion.openSession();
        int hecho = 0;
        Transaction tx = null;
        try {
            tx = sesion.beginTransaction();
            sesion.save(objP);
            hecho = 1;
            tx.commit();

        } catch (HibernateException e) {
            if (tx != null) {
                tx.rollback();
            }
            hecho = 2;
        } finally {
            sesion.close();
        }

        return hecho;
    }
    
    public int borrarPelicula (Peliculas objP, SessionFactory conexion){
        Session sesion = conexion.openSession();
        Transaction tx = null;
        int borrado = 0;
        try {
            String titulo = objP.getTitulo();
            Query q = sesion.createQuery("from Peliculas where titulo=:titulo2");
            q.setParameter("titulo2", titulo);
            Peliculas pers = (Peliculas) q.uniqueResult();
            tx = sesion.beginTransaction();
//            Persona Buser = ConsultarPersona(objPersona, conexion);
//             sesion.persist(Buser);
            sesion.delete(pers);
            borrado = 1;
            tx.commit();

        } catch (HibernateException e) {
            if (tx != null) {
                tx.rollback();
                borrado = 0;
            }
        } finally {
            sesion.close();
        }

        return borrado;
    }
    public ArrayList<Proyeccion> Cartelera(SessionFactory conexion){
        ArrayList<Proyeccion> arrayCartelera = new ArrayList();
        Session sesion = conexion.openSession();
        String hql = "from Proyeccion";
        Query query = sesion.createQuery(hql);
        List results = query.list();
        if (results != null) {
            for (int i = 0; i < results.size(); i++) {
                arrayCartelera.add((Proyeccion) results.get(i));
                
            }
        } else {
            out.println("Error");
        }

        return arrayCartelera;
    }
    
    public Multicine mostrarCine (SessionFactory conexion){
        Session sesion = conexion.openSession();
        String hql = "from Multicine where codigoM =:getcod";

        Query query = sesion.createQuery(hql);
        query.setParameter("getcod", 1);
        return (Multicine) query.uniqueResult();
    }
}
