/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo.Entidad;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import Modelo.Entidad.BeanClientes;
import Modelo.Entidad.interfaceCRUD;
import Controlador.*;


public class DaoClientes extends ClassConex implements  interfaceCRUD{
    
    public Connection conn=null;
    public Statement st=null;
    public ResultSet rs=null;
    
    
    public boolean encontrado=false;
    public boolean listo = false;
    
   private Integer idcliente;
   private String nombre;
   private String nit;
   private String direccion;
   private String telefono; 
   private String email; 
   private String contacto; 
   private String password;

    
    
    
    /**
     *
     * @param cliente
     */
    public DaoClientes(BeanClientes bcliente) {
        super();
        try {
            conn = this.ObtenerConexion();
            st = conn.createStatement();
                idcliente=bcliente.getIdcliente();
                nombre = bcliente.getNombre();
                nit=bcliente.getNit();
                direccion=bcliente.getDireccion();
                telefono=bcliente.getTelefono(); 
                email=bcliente.getEmail(); 
                contacto=bcliente.getContacto(); 
                password=bcliente.getPassword();
            
        
            
        } catch (SQLException ex) {
            Logger.getLogger(DaoUsuario.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    
    
    
    
    

    public boolean agregarRegistro() { //opcion 1.
        try {
            st.executeUpdate("INSERT INTO clientes (nombre,nit,direccion,telefono,email,contacto,password)" + "values ("+nombre+","+nit+","+direccion+","+telefono+","+email+","+contacto+","+password+");");
            listo=true;
            System.out.print(st);
        } catch (SQLException ex) {
            Logger.getLogger(DaoUsuario.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listo;
    }

   
    public boolean borrarRegistro() {// opcion 2.
        try {
            
            st.executeUpdate("DELETE from clientes WHERE idcliente='"+idcliente+"';");
            listo=true;
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(DaoUsuario.class.getName()).log(Level.SEVERE, null, ex);
      
        }
        return listo;
    }

   
    public boolean actualizarRegistro() { //opcion 3.
        try {
            st.executeUpdate("UPDATE clientes SET nombre="+nombre+",nit="+nit+",direccion="+direccion+",telefono="+telefono+",email="+email+",contacto="+contacto+",password="+password+" WHERE idcliente="+idcliente+"; ");
            listo=true;
           
        } catch (SQLException ex) {
            Logger.getLogger(DaoUsuario.class.getName()).log(Level.SEVERE, null, ex);
      
        }
        return listo;
    }

    
    public ResultSet consultarRegistro() { //opcion 4.
         try {        
            rs = st.executeQuery("SELECT id_cliente,nom_cliente,ape_cliente, genero_cliente  FROM cliente where id_cliente='"+nombre+"';");
        } catch (SQLException ex) {
            Logger.getLogger(DaoUsuario.class.getName()).log(Level.SEVERE, null, ex);
        }
         return rs;
    }


    public ResultSet listarTabla() { //opcion 5.
        try {        
            rs = st.executeQuery("SELECT id_cliente,nom_cliente,ape_cliente, genero_cliente  FROM cliente order by id_cliente;");
        } catch (SQLException ex) {
            Logger.getLogger(DaoUsuario.class.getName()).log(Level.SEVERE, null, ex);
        }
         return rs;
        
    }
    
}
