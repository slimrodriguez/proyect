/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Controlador.ClassConex;
import Controlador.ClassConex;
import Modelo.Entidad.BeanAsignar;
import Modelo.Entidad.DaoAsignar;
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
 * @author wilson
 */
@WebServlet(name = "ServletAsignar", urlPatterns = {"/ServletAsignar"})
public class ServletAsignar extends HttpServlet {

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
              ClassConex link = new ClassConex();

            try {
                Connection cn = link.ObtenerConexion();

                Statement stm = cn.createStatement();
                
                String placa = "\"" + request.getParameter("placa") + "\"";
                String modelo = "\"" + request.getParameter("modelo") + "\"";
                String color = "\"" + request.getParameter("color") + "\"";
                String soat = "\"" + request.getParameter("soat") + "\"";
                String tecnomecanica = "\"" + request.getParameter("tecnomecanica") + "\"";
                String nombre = "\"" + request.getParameter("nombre") + "\"";
                String categoria = "\"" + request.getParameter("categoria") + "\"";
                String vencimiento = "\"" + request.getParameter("vencimiento") + "\"";
                String direccion = "\"" + request.getParameter("direccion") + "\"";
                String telefono = "\"" + request.getParameter("telefono") + "\"";
                
                

                BeanAsignar BcAsignar = new BeanAsignar(placa,modelo,color,soat,tecnomecanica,nombre,categoria,vencimiento,direccion,telefono);
                DaoAsignar DcAsignar = new DaoAsignar(BcAsignar);
                ResultSet rs;

                String mExito = "Operacion exitosa, Felicidades!!!!";
                String mError = "Operacion Fallida, Lo siento mucho!!!!";

                // AGREGAR REGISTROS
                if (DcAsignar.agregarRegistro()) {
                    request.setAttribute("mensaje", "Registro agregado exitosamente");
                } else {
                    request.setAttribute("mensaje", "El registro no se pudo guardar");
                }

                request.getRequestDispatcher("Asignamiento.jsp").forward(request, response);

            } catch (SQLException e) {

                e.printStackTrace();
            }

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
