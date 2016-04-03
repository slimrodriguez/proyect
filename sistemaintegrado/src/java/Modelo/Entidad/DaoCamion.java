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

public class DaoCamion extends ClassConex implements interfaceCRUD {

    public Connection conn = null;
    public Statement st = null;
    public ResultSet rs = null;

    public boolean encontrado = false;
    public boolean listo = false;

    private String color = "";
    private String marca = "";
    private String linea = "";
    private String modelo = "";
    private String nromotor = "";
    private String nrochasis = "";
    private String placa = "";
    private String soat = "";
    private String tecnomecanica = "";

    public DaoCamion(BeanCamion bcamion) {
        super();
        try {
            conn = this.ObtenerConexion();
            st = conn.createStatement();

            color = bcamion.getColor();
            marca = bcamion.getMarca();
            linea = bcamion.getLinea();
            modelo = bcamion.getModelo();
            nromotor = bcamion.getNromotor();
            nrochasis = bcamion.getNrochasis();
            placa = bcamion.getPlaca();
            soat = bcamion.getSoat();
            tecnomecanica = bcamion.getTecnomecanica();

        } catch (SQLException ex) {
            Logger.getLogger(DaoPedido.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public boolean agregarRegistro() { //opcion 1.
        try {
            st.executeUpdate("INSERT INTO camiones (color,marca,linea,modelo,nromotor,nrochasis,placa,soat,tecnomecanica)" + "values (" + color + "," + marca + "," + linea + "," + modelo + "," + nromotor + "," + nrochasis + "," + placa + "," + soat + "," + tecnomecanica + ");");
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
