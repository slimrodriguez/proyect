/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Entidad.BeanConductor;
import Modelo.Entidad.DaoConductor;
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
@WebServlet(name = "ActualizarConductor", urlPatterns = {"/ActualizarConductor"})
public class ActualizarConductor extends HttpServlet {

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
            ClassConex link = new ClassConex();
            
            try{Connection cn = link.ObtenerConexion(); 
                
            Statement stm = cn.createStatement();
            
         
                String nombre =  "\""+request.getParameter("nombre")+"\"";
                String apellido=  "\""+request.getParameter("apellido")+"\"";
                String cedula=  "\""+request.getParameter("cedula")+"\"";
                String direccion= "\""+request.getParameter("direccion")+"\"";
                String telefono=  "\""+request.getParameter("telefono")+"\"";
                String celular=  "\""+request.getParameter("celular")+"\"";
                String categoria=  "\""+request.getParameter("categoria")+"\"";
                String vencimiento=  "\""+request.getParameter("vencimiento")+"\"";
                Integer idconductor = Integer.parseInt(request.getParameter("idconductor"));
                BeanConductor BcConductor = new BeanConductor(idconductor,nombre,apellido,cedula,direccion,telefono,celular,categoria,vencimiento);
                DaoConductor DcConductor=new DaoConductor(BcConductor);
                ResultSet rs; 
             
              
             
            
              String mExito="Operacion exitosa, Felicidades!!!!"; 
              String mError="Operacion Fallida, Lo siento mucho!!!!";
         
         
           // AGREGAR REGISTROS
                if(DcConductor.actualizarRegistro()){
                    request.setAttribute("mensaje", "Registro ACTUALIZADO exitosamente");
                }else{request.setAttribute("mensaje", "El registro no se pudo guardar");}
                
                request.getRequestDispatcher("TablaConductores.jsp").forward(request, response);
            
                
            
            
      
               
              
             
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
