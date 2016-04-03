/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo.Entidad;

/**
 *
 * @author wilson
 */
public class BeanAsignar {
    
    private String placa;
    private String modelo;
    private String color;
    private String soat;
    private String tecnomecanica;
    private String nombre;
    private String categoria;
    private String vencimiento;
    private String direccion;
    private String telefono;
    
    

    public BeanAsignar(String placa,String modelo,String color,String soat,String tecnomecanica,String nombre,String categoria, String vencimiento,String direccion,String telefono ) {
        
        this.placa = placa;
        this.modelo = modelo;
        this.color = color;
        this.soat = soat;
        this.tecnomecanica = tecnomecanica;
        this.nombre = nombre;
        this.categoria = categoria;
        this.vencimiento = vencimiento;
        this.direccion = direccion;
        this.telefono = telefono;
}

    public String getPlaca() {
        return placa;
    }

    public void setPlaca(String placa) {
        this.placa = placa;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getSoat() {
        return soat;
    }

    public void setSoat(String soat) {
        this.soat = soat;
    }

    public String getTecnomecanica() {
        return tecnomecanica;
    }

    public void setTecnomecanica(String tecnomecanica) {
        this.tecnomecanica = tecnomecanica;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public String getVencimiento() {
        return vencimiento;
    }

    public void setVencimiento(String vencimiento) {
        this.vencimiento = vencimiento;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }
    
}
