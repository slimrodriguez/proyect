/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo.Entidad;

/**
 *
 * @author SHADY-
 */
public class BeanUsuario {
    private Integer idusuarios;
    private String id;

  
    private String usuario;
    private String nombre;
    private String rol;
    private String pass;

    public BeanUsuario(Integer idusuarios , String id,String usuario, String nombre, String rol, String pass) {
        this.id= id;
        this.usuario = usuario;
        this.nombre = nombre;
        this.rol = rol;
        this.pass = pass;
        
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public BeanUsuario(String id) {
        this.id = id;
    }

    public BeanUsuario(String usuario, String nombre, String pass) {
        this.usuario = usuario;
        this.nombre = nombre;
        this.pass = pass;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getRol() {
        return rol;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }
   
    public BeanUsuario(Integer idusuarios) {
        this.idusuarios = idusuarios;
    }

    public Integer getIdusuarios() {
        return idusuarios;
    }

    public void setIdusuarios(Integer idusuarios) {
        this.idusuarios = idusuarios;
    }
   
  
}