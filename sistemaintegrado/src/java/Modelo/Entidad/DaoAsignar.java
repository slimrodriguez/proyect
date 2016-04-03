package Modelo.Entidad;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import Modelo.Entidad.interfaceCRUD;
import Controlador.*;
import Modelo.Entidad.DaoPedido;
import Modelo.Entidad.DaoPedido;
import Modelo.Entidad.DaoPedido;
import Modelo.Entidad.interfaceCRUD;
import Modelo.Entidad.interfaceCRUD;
import Modelo.Entidad.interfaceCRUD;

public class DaoAsignar extends ClassConex implements interfaceCRUD {

    public Connection conn = null;
    public Statement st = null;
    public ResultSet rs = null;

    public boolean encontrado = false;
    public boolean listo = false;

   
    private String placa= "";
    private String modelo= "";
    private String color= "";
    private String soat= "";
    private String tecnomecanica= "";
    private String nombre= "";
    private String categoria= "";
    private String vencimiento= "";
    private String direccion= "";
    private String telefono= "";

    public DaoAsignar(BeanAsignar basignar) {
        super();
        try {
            conn = this.ObtenerConexion();
            st = conn.createStatement();

            placa = basignar.getPlaca();
            modelo = basignar.getModelo();
            color = basignar.getColor();
            soat = basignar.getSoat();
            tecnomecanica = basignar.getTecnomecanica();
            nombre = basignar.getNombre();
            categoria = basignar.getCategoria();
            vencimiento = basignar.getVencimiento();
            direccion = basignar.getDireccion();
            telefono = basignar.getTelefono();

        } catch (SQLException ex) {
            Logger.getLogger(DaoPedido.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public boolean agregarRegistro() { //opcion 1.
        try {
            st.executeUpdate("INSERT INTO asignar (placa,modelo,color,soat,tecnomecanica,nombre,categoria,vencimiento,direccion,telefono)" + "values (" + placa + "," + modelo + "," + color + "," + soat + "," + tecnomecanica + "," + nombre + "," + categoria + "," + vencimiento + "," + direccion + "," + telefono + ");");
            listo = true;
            System.out.print(st);
        } catch (SQLException ex) {
            Logger.getLogger(DaoPedido.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listo;
    }

    public boolean borrarRegistro() {// opcion 2.
        try {

            st.executeUpdate("delete from placa ='" + placa + "';");
            listo = true;
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(DaoPedido.class.getName()).log(Level.SEVERE, null, ex);

        }
        return listo;
    }

    public boolean actualizarRegistro() { //opcion 3.
        try {
            st.executeUpdate("");
            listo = true;

        } catch (SQLException ex) {
            Logger.getLogger(DaoPedido.class.getName()).log(Level.SEVERE, null, ex);

        }
        return listo;
    }

    public ResultSet consultarRegistro() { //opcion 4.
        try {
            rs = st.executeQuery("SELECT id_cliente,nom_cliente,ape_cliente, genero_cliente  FROM cliente where id_cliente='';");
        } catch (SQLException ex) {
            Logger.getLogger(DaoPedido.class.getName()).log(Level.SEVERE, null, ex);
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
