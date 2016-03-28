/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Entidad.BeanUsuario;
import Modelo.Entidad.DaoUsuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author SHADY-
 */
@WebServlet(name = "ActualizarUsuarios", urlPatterns = {"/ActualizarUsuarios"})
public class ActualizarUsuarios extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
               ClassConex link = new ClassConex();
            try{Connection cn = link.ObtenerConexion(); 
                
            Statement stm = cn.createStatement();
            
                String usuario = "\""+request.getParameter("usuario")+"\"";
                String nombre =  "\""+request.getParameter("nombre")+"\"";
                String rol=  "\""+request.getParameter("rol")+"\"";
                String pass=  "\""+request.getParameter("contrasena")+"\"";
                String id=  "\""+request.getParameter("id")+"\"";
                Integer idusuarios=Integer.parseInt(request.getParameter("idusuarios"));
                
                
            
             
             BeanUsuario BCliente=new BeanUsuario(idusuarios,id,usuario,nombre,rol,pass);
              DaoUsuario DCliente=new DaoUsuario(BCliente);
              ResultSet rs;
            
              String mExito="Operacion exitosa, Felicidades!!!!"; 
              String mError="Operacion Fallida, Lo siento mucho!!!!";
         
         
           // AGREGAR REGISTROS
                if(DCliente.actualizarRegistro()){
                    request.setAttribute("mensaje", "Registro ACTUALIZADO exitosamente");
                }else{request.setAttribute("mensaje", "El registro no se pudo ACTUALIZAR");}
                
                request.getRequestDispatcher("ListaUsuarios.jsp").forward(request, response);
            
        
            }catch(SQLException e){
            
            e.printStackTrace();}
              
                
                
                
                
                
                
                
                
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
