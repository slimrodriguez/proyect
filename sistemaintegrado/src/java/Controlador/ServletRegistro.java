/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Modelo.Entidad.*;
import java.sql.ResultSet;
import java.sql.SQLException;
import Controlador.*;
import java.sql.Connection;
import java.sql.Statement;
/**
 *
 * @author SHADY-
 */
@WebServlet(name = "ServletRegistro", urlPatterns = {"/ServletRegistro"})
public class ServletRegistro extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
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
                
                
                
            
             
             BeanUsuario BCliente=new BeanUsuario(null,id,usuario,nombre,rol,pass);
              DaoUsuario DCliente=new DaoUsuario(BCliente);
              ResultSet rs;
            
              String mExito="Operacion exitosa, Felicidades!!!!"; 
              String mError="Operacion Fallida, Lo siento mucho!!!!";
         
         
           // AGREGAR REGISTROS
                if(DCliente.agregarRegistro()){
                    request.setAttribute("mensaje", "Registro agregado exitosamente");
                }else{request.setAttribute("mensaje", "El registro no se pudo guardar");}
                
                request.getRequestDispatcher("RegistrosGenerales.jsp").forward(request, response);
            
        
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
