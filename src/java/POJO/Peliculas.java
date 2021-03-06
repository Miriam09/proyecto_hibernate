package POJO;
// Generated 01-mar-2016 10:02:24 by Hibernate Tools 4.3.1

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Peliculas generated by hbm2java
 */
public class Peliculas implements java.io.Serializable {

    private Integer codigoP;
    private String coidgo;
    private String titulo;
    private String genero;
    private String director;
    private Date fechaEstreno;
    private int duracion;
    private Set proyeccions = new HashSet(0);
    private Set actors = new HashSet(0);

    public Peliculas() {
    }

    public Peliculas(String titulo) {
        this.titulo = titulo;
    }

    public Peliculas(String coidgo, String titulo, String genero, String director, Date fechaEstreno, int duracion) {
        this.coidgo = coidgo;
        this.titulo = titulo;
        this.genero = genero;
        this.director = director;
        this.fechaEstreno = fechaEstreno;
        this.duracion = duracion;
    }

    public Peliculas(String coidgo, String titulo, String genero, String director, Date fechaEstreno, int duracion, Set proyeccions, Set actors) {
        this.coidgo = coidgo;
        this.titulo = titulo;
        this.genero = genero;
        this.director = director;
        this.fechaEstreno = fechaEstreno;
        this.duracion = duracion;
        this.proyeccions = proyeccions;
        this.actors = actors;
    }

    public Integer getCodigoP() {
        return this.codigoP;
    }

    public void setCodigoP(Integer codigoP) {
        this.codigoP = codigoP;
    }

    public String getCoidgo() {
        return this.coidgo;
    }

    public void setCoidgo(String coidgo) {
        this.coidgo = coidgo;
    }

    public String getTitulo() {
        return this.titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getGenero() {
        return this.genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getDirector() {
        return this.director;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    public Date getFechaEstreno() {
        return this.fechaEstreno;
    }

    public void setFechaEstreno(Date fechaEstreno) {
        this.fechaEstreno = fechaEstreno;
    }

    public int getDuracion() {
        return this.duracion;
    }

    public void setDuracion(int duracion) {
        this.duracion = duracion;
    }

    public Set getProyeccions() {
        return this.proyeccions;
    }

    public void setProyeccions(Set proyeccions) {
        this.proyeccions = proyeccions;
    }

    public Set getActors() {
        return this.actors;
    }

    public void setActors(Set actors) {
        this.actors = actors;
    }

}
