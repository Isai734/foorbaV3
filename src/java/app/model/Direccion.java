package app.model;
// Generated Jul 4, 2018 8:41:06 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Direccion generated by hbm2java
 */
public class Direccion  implements java.io.Serializable {


     private Integer idDireccion;
     private String pais;
     private String estado;
     private String ciudad;
     private String calonia;
     private String calle;
     private Integer numero;
     private Integer codigoPostal;
     private String tipo;
     private Set iglesias = new HashSet(0);
     private Set viviendas = new HashSet(0);

    public Direccion() {
    }

	
    public Direccion(String pais) {
        this.pais = pais;
    }
    public Direccion(String pais, String estado, String ciudad, String calonia, String calle, Integer numero, Integer codigoPostal, String tipo, Set iglesias, Set viviendas) {
       this.pais = pais;
       this.estado = estado;
       this.ciudad = ciudad;
       this.calonia = calonia;
       this.calle = calle;
       this.numero = numero;
       this.codigoPostal = codigoPostal;
       this.tipo = tipo;
       this.iglesias = iglesias;
       this.viviendas = viviendas;
    }
   
    public Integer getIdDireccion() {
        return this.idDireccion;
    }
    
    public void setIdDireccion(Integer idDireccion) {
        this.idDireccion = idDireccion;
    }
    public String getPais() {
        return this.pais;
    }
    
    public void setPais(String pais) {
        this.pais = pais;
    }
    public String getEstado() {
        return this.estado;
    }
    
    public void setEstado(String estado) {
        this.estado = estado;
    }
    public String getCiudad() {
        return this.ciudad;
    }
    
    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }
    public String getCalonia() {
        return this.calonia;
    }
    
    public void setCalonia(String calonia) {
        this.calonia = calonia;
    }
    public String getCalle() {
        return this.calle;
    }
    
    public void setCalle(String calle) {
        this.calle = calle;
    }
    public Integer getNumero() {
        return this.numero;
    }
    
    public void setNumero(Integer numero) {
        this.numero = numero;
    }
    public Integer getCodigoPostal() {
        return this.codigoPostal;
    }
    
    public void setCodigoPostal(Integer codigoPostal) {
        this.codigoPostal = codigoPostal;
    }
    public String getTipo() {
        return this.tipo;
    }
    
    public void setTipo(String tipo) {
        this.tipo = tipo;
    }
    public Set getIglesias() {
        return this.iglesias;
    }
    
    public void setIglesias(Set iglesias) {
        this.iglesias = iglesias;
    }
    public Set getViviendas() {
        return this.viviendas;
    }
    
    public void setViviendas(Set viviendas) {
        this.viviendas = viviendas;
    }




}


