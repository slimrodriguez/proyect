
package Modelo.Entidad;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import Modelo.Entidad.interfaceCRUD;
import Controlador.*;
import Modelo.Entidad.DaoConductor;
import Modelo.Entidad.interfaceCRUD;
import Modelo.Entidad.interfaceCRUD;
import Modelo.Entidad.interfaceCRUD;


public class DaoConductor extends ClassConex implements  interfaceCRUD{
    
    public Connection conn=null;
    public Statement st=null;
    public ResultSet rs=null;
    
    
    public boolean encontrado=false;
    public boolean listo = false;
    
    public Integer idconductor;
    public String nombre="";
    public String apellido="";
    public String cedula="";
    public String direccion;
    public String telefono="";
    public String celular="";
    public String categoria="";
    public String vencimiento="";
    
    
    
    /**
     *
     * @param cliente
     */
    public DaoConductor(BeanConductor bconductor) {
        super();
        try {
            conn = this.ObtenerConexion();
            st = conn.createStatement();
            
            idconductor = bconductor.getIdconductor(); 
            nombre    = bconductor.getNombre();
            apellido   = bconductor.getApellido();
            cedula  = bconductor.getCedula();
            direccion  = bconductor.getDireccion();
            telefono =bconductor.getTelefono();
            celular   =  bconductor.getCelular();
            categoria = bconductor.getCategoria();
            vencimiento =  bconductor.getVencimiento();       
                    
        } catch (SQLException ex) {
            Logger.getLogger(DaoPedido.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    
    
    
    
    

    public boolean agregarRegistro() { //opcion 1.
        try {
            st.executeUpdate("INSERT INTO Condutores (nombre,apellido,cedula,direccion,telefono,celular,categoria,vencimiento)" + "values ("+nombre+","+apellido+","+cedula+","+direccion+","+telefono+","+celular+","+categoria+","+vencimiento+");");
            listo=true;
            System.out.print(st);
        } catch (SQLException ex) {
            Logger.getLogger(DaoConductor.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listo;
    }

   
    public boolean borrarRegistro() {// opcion 2.
        try {
            
            st.executeUpdate("delete from Condutores where idconductor='"+idconductor+"';");
            listo=true;
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(DaoConductor.class.getName()).log(Level.SEVERE, null, ex);
      
        }
        return listo;
    }

   
    public boolean actualizarRegistro() { //opcion 3.
        try {
            st.executeUpdate("UPDATE Condutores SET nombre="+nombre+",apellido="+apellido+",cedula="+cedula+",direccion="+direccion+",telefono="+telefono+",celular="+celular+",categoria="+categoria+",vencimiento="+vencimiento+" WHERE idconductor="+idconductor+"; ");
            listo=true;
           
        } catch (SQLException ex) {
            Logger.getLogger(DaoConductor.class.getName()).log(Level.SEVERE, null, ex);
      
        }
        return listo;
    }

    
    public ResultSet consultarRegistro() { //opcion 4.
         try {        
            rs = st.executeQuery("SELECT id_cliente,nom_cliente,ape_cliente, genero_cliente  FROM cliente where id_cliente='';");
        } catch (SQLException ex) {
            Logger.getLogger(DaoConductor.class.getName()).log(Level.SEVERE, null, ex);
        }
         return rs;
    }


    public ResultSet listarTabla() { //opcion 5.
        try {        
            rs = st.executeQuery("SELECT *  FROM Conductores;");
            
        } catch (SQLException ex) {
            Logger.getLogger(DaoPedido.class.getName()).log(Level.SEVERE, null, ex);
        }
         return rs;
        
    }
    
}
