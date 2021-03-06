package POJO;
// Generated 01-mar-2016 10:02:24 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Sala generated by hbm2java
 */
public class Sala  implements java.io.Serializable {


     private Integer codigoS;
     private String nombre;
     private String aforo;
     private String datos;
     private Set proyeccions = new HashSet(0);

    public Sala() {
    }

    public Sala(String nombre) {
        this.nombre = nombre;
    }

    
    public Sala(String nombre, String aforo, String datos) {
        this.nombre = nombre;
        this.aforo = aforo;
        this.datos = datos;
    }
    public Sala(String nombre, String aforo, String datos, Set proyeccions) {
       this.nombre = nombre;
       this.aforo = aforo;
       this.datos = datos;
       this.proyeccions = proyeccions;
    }
   
    public Integer getCodigoS() {
        return this.codigoS;
    }
    
    public void setCodigoS(Integer codigoS) {
        this.codigoS = codigoS;
    }
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public String getAforo() {
        return this.aforo;
    }
    
    public void setAforo(String aforo) {
        this.aforo = aforo;
    }
    public String getDatos() {
        return this.datos;
    }
    
    public void setDatos(String datos) {
        this.datos = datos;
    }
    public Set getProyeccions() {
        return this.proyeccions;
    }
    
    public void setProyeccions(Set proyeccions) {
        this.proyeccions = proyeccions;
    }




}


