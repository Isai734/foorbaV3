package app.model;
// Generated Jul 4, 2018 8:41:06 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Persona generated by hbm2java
 */
public class Persona  implements java.io.Serializable {


     private Integer idPersona;
     private Escuela escuela;
     private Grupo grupo;
     private Iglesia iglesia;
     private Persona persona;
     private Vivienda vivienda;
     private String nombre;
     private String APaterno;
     private String AMaterno;
     private String fechaNacimiento;
     private String telefono;
     private String estadoCivil;
     private String ocupacion;
     private Set personas = new HashSet(0);

    public Persona() {
    }

	
    public Persona(String nombre, String APaterno, String AMaterno, String fechaNacimiento, String estadoCivil) {
        this.nombre = nombre;
        this.APaterno = APaterno;
        this.AMaterno = AMaterno;
        this.fechaNacimiento = fechaNacimiento;
        this.estadoCivil = estadoCivil;
    }
    public Persona(Escuela escuela, Grupo grupo, Iglesia iglesia, Persona persona, Vivienda vivienda, String nombre, String APaterno, String AMaterno, String fechaNacimiento, String telefono, String estadoCivil, String ocupacion, Set personas) {
       this.escuela = escuela;
       this.grupo = grupo;
       this.iglesia = iglesia;
       this.persona = persona;
       this.vivienda = vivienda;
       this.nombre = nombre;
       this.APaterno = APaterno;
       this.AMaterno = AMaterno;
       this.fechaNacimiento = fechaNacimiento;
       this.telefono = telefono;
       this.estadoCivil = estadoCivil;
       this.ocupacion = ocupacion;
       this.personas = personas;
    }
   
    public Integer getIdPersona() {
        return this.idPersona;
    }
    
    public void setIdPersona(Integer idPersona) {
        this.idPersona = idPersona;
    }
    public Escuela getEscuela() {
        return this.escuela;
    }
    
    public void setEscuela(Escuela escuela) {
        this.escuela = escuela;
    }
    public Grupo getGrupo() {
        return this.grupo;
    }
    
    public void setGrupo(Grupo grupo) {
        this.grupo = grupo;
    }
    public Iglesia getIglesia() {
        return this.iglesia;
    }
    
    public void setIglesia(Iglesia iglesia) {
        this.iglesia = iglesia;
    }
    public Persona getPersona() {
        return this.persona;
    }
    
    public void setPersona(Persona persona) {
        this.persona = persona;
    }
    public Vivienda getVivienda() {
        return this.vivienda;
    }
    
    public void setVivienda(Vivienda vivienda) {
        this.vivienda = vivienda;
    }
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public String getAPaterno() {
        return this.APaterno;
    }
    
    public void setAPaterno(String APaterno) {
        this.APaterno = APaterno;
    }
    public String getAMaterno() {
        return this.AMaterno;
    }
    
    public void setAMaterno(String AMaterno) {
        this.AMaterno = AMaterno;
    }
    public String getFechaNacimiento() {
        return this.fechaNacimiento;
    }
    
    public void setFechaNacimiento(String fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }
    public String getTelefono() {
        return this.telefono;
    }
    
    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }
    public String getEstadoCivil() {
        return this.estadoCivil;
    }
    
    public void setEstadoCivil(String estadoCivil) {
        this.estadoCivil = estadoCivil;
    }
    public String getOcupacion() {
        return this.ocupacion;
    }
    
    public void setOcupacion(String ocupacion) {
        this.ocupacion = ocupacion;
    }
    public Set getPersonas() {
        return this.personas;
    }
    
    public void setPersonas(Set personas) {
        this.personas = personas;
    }




}


