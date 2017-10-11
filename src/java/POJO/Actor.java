package POJO;
// Generated 01-mar-2016 10:02:24 by Hibernate Tools 4.3.1



/**
 * Actor generated by hbm2java
 */
public class Actor  implements java.io.Serializable {


     private Integer codigoA;
     private Peliculas peliculas;
     private String nombre;
     private String apellidos;

    public Actor() {
    }

	
    public Actor(String nombre, String apellidos) {
        this.nombre = nombre;
        this.apellidos = apellidos;
    }
    public Actor(Peliculas peliculas, String nombre, String apellidos) {
       this.peliculas = peliculas;
       this.nombre = nombre;
       this.apellidos = apellidos;
    }
   
    public Integer getCodigoA() {
        return this.codigoA;
    }
    
    public void setCodigoA(Integer codigoA) {
        this.codigoA = codigoA;
    }
    public Peliculas getPeliculas() {
        return this.peliculas;
    }
    
    public void setPeliculas(Peliculas peliculas) {
        this.peliculas = peliculas;
    }
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public String getApellidos() {
        return this.apellidos;
    }
    
    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }




}


