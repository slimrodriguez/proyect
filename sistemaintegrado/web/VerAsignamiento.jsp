<%-- 
    Document   : VerAsignamiento
    Created on : 3/04/2016, 11:38:06 AM
    Author     : wilson
--%>



<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Controlador.ClassConex"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Controlador.ServletCamion"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Transportes Urimar</title>

   <% HttpSession sesion = request.getSession();
    
         String usu= sesion.getAttribute("nombre").toString();
    %>
   

    </head>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="stilos.css" rel="stylesheet">
    <body>

        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <img id="logo" alt="Trasportes Urimar" src="img/logo.jpg">
                    <div class="row">
                        <div class="col-md-12">

                            <nav class="navbar navbar-inverse">
                                <div class="container-fluid">
                                    <div class="navbar-header">
                                        <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-th"> <%=usu%></span></a>
                                    </div>
                                    <div>
                                        <ul class="nav navbar-nav">
                                            <li><a href="SesionCliente.jsp"><span class="glyphicon glyphicon-home"></span>Inicio</a></li>
                                            <li  class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-info-sign"></span> Pedidos<span class="caret"></span></a>
                                                <ul class="dropdown-menu">
                                                    <li class="active"><a href="VerPedidosCliente.jsp">Ver Pedidos</a></li>
                                                    <li><a href="CrearPedido.jsp">Crear Pedido</a></li>
                                                </ul>
                                            <li><a href="VerFacturasCliente.jsp"><span class="glyphicon glyphicon-globe"></span> Facturas</a></li>
                                            <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-info-sign"></span> Estado de carga<span class="caret"></span></a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="VerRutaCliente.jsp">Estado de Ruta</a></li>
                                                </ul>


                                        </ul>
                                    </div>

                                    <div>
                                        <form action="" class="navbar-form navbar-right">
                                           

                                            <button class="btn btn-default" top="5" href="login.html"><span class="glyphicon glyphicon-search"></span></button>
                                            <a href="Index.jsp"><button type="button" class="btn btn-default"><span class="glyphicon glyphicon-off"> CerrarSesion</span>
                                                </button></a>
                                        </form>



                                    </div>
                                </div>
                            </nav>	

                        </div>
                    </div>
                    <!---Aqui va el contenido de la pagina---->

                    <div class="container" >

                      

                       
                        <br> </br>
                      

                        
                          <h1 class="h1 text-center text-info"> CAMIONES </h1>
            <br>
            <br>
            <table class="table table-hover table-condensed table-bordered">
                <thead>
                <th>PLACA</th>
                <th>MODELO</th>
                <th>COLOR</th>
                <th>SOAT</th>
                <th>TECNOMECANICA</th>
                <th>NOMBRE</th>
                <th>CATEGORIA</th>
                <th>VENCIMIENTO</th>
                <th>DIRECCION</th>
                <th>TELEFONO</th>
                <th class="text-center">OPCIONES</th>
                </thead>
                <tbody>
                    
              <%  ClassConex con = new ClassConex();
                Connection cn = con.ObtenerConexion(); 
                
                Statement stm = cn.createStatement();
                String query = "select * from asignar ;";
                 ResultSet rs = stm.executeQuery(query);         
              %>      
                 </thead>
                <tbody>
                    <%while (rs.next()) {%>
                    <tr>
                        <td> <%= rs.getString("placa")%> </td>
                        <td> <%= rs.getString("modelo")%> </td>
                        <td> <%= rs.getString("color")%> </td>
                        <td> <%= rs.getString("soat")%> </td>
                        <td> <%= rs.getString("tecnomecanica")%> </td>
                        <td> <%= rs.getString("nombre")%> </td>
                        <td> <%= rs.getString("categoria")%> </td>
                        <td> <%= rs.getString("vencimiento")%> </td>
                        <td> <%= rs.getString("direccion")%> </td>
                        <td> <%= rs.getString("telefono")%> </td>
                        <td>   
                    
                    
                    
                    
                            <form action="CRUD" method="POST">
                                <div class="text-center">
                                    <input class="btn btn-primary" type="submit" value="EDITAR" name="edit">
                                    <input class="btn btn-danger" type="submit" value="ELIMINAR" name="delete">
                                </div>
                            </form>
                        </td>
                        
                    </tr>   
                   <% }%>
                        
               </tbody>
            </table>
           
             
                         
             
       
        

                        
                    </div>



                    <!----Este es el footer---->
                    <div class="row">
                        <div class="col-md-12">
                            <img id="footer" alt="Bootstrap Image Preview" src="img/footer.png">
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/scripts.js"></script>
    </body>
</html>
