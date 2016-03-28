
package Modelo.Entidad;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import Modelo.Entidad.BeanUsuario;
import Modelo.Entidad.interfaceCRUD;
import Controlador.*;


public class DaoUsuario extends ClassConex implements  interfaceCRUD{
    
    public Connection conn=null;
    public Statement st=null;
    public ResultSet rs=null;
    
    
    public boolean encontrado=false;
    public boolean listo = false;
    
    public Integer idusuarios;
    public String id="";
    public String usuario="";
    public String nombre="";
    public String rol="";
    public String pass="";
    
    
    
    /**
     *
     * @param cliente
     */
    public DaoUsuario(BeanUsuario bcliente) {
        super();
        try {
            conn = this.ObtenerConexion();
            st = conn.createStatement();
            
            id     =  bcliente.getId();
            usuario = bcliente.getUsuario();
            nombre =  bcliente.getNombre();
            rol =     bcliente.getRol();
            pass =    bcliente.getPass();
            
        } catch (SQLException ex) {
            Logger.getLogger(DaoUsuario.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    
    
    
    
    

    public boolean agregarRegistro() { //opcion 1.
        try {
            st.executeUpdate("INSERT INTO usuarios (id,usuario,nombre,rol,pss)" + "values ("+id+","+usuario+","+nombre+","+rol+","+pass+");");
            listo=true;
            System.out.print(st);
        } catch (SQLException ex) {
            Logger.getLogger(DaoUsuario.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listo;
    }

   
    public boolean borrarRegistro() {// opcion 2.
        try {
            
            st.executeUpdate("delete from cliente where id_cliente='"+usuario+"';");
            listo=true;
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(DaoUsuario.class.getName()).log(Level.SEVERE, null, ex);
      
        }
        return listo;
    }

   
    public boolean actualizarRegistro() { //opcion 3.
        try {
            st.executeUpdate("UPDATE usuarios SET id="+id+",usuario="+usuario+",nombre="+nombre+",rol="+rol+",pss="+pass+" WHERE idusuarios="+idusuarios+"; ");
            listo=true;
           
        } catch (SQLException ex) {
            Logger.getLogger(DaoUsuario.class.getName()).log(Level.SEVERE, null, ex);
      
        }
        return listo;
    }

    
    public ResultSet consultarRegistro() { //opcion 4.
         try {        
            rs = st.executeQuery("SELECT id_cliente,nom_cliente,ape_cliente, genero_cliente  FROM cliente where id_cliente='"+id+"';");
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
