<%-- 
    Document   : RegistrosGenerales
    Created on : 21-feb-2016, 15:05:18
    Author     : SHADY-
--%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Transportes Urimar</title>



    </head>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="stilos.css" rel="stylesheet">
    
    
          <% HttpSession sesion = request.getSession();
    
     String usu= sesion.getAttribute("nombre").toString();
             
          
             %>
        
            
    <body>

         <h1> </h1>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <img id="logo" alt="Trasportes Urimar" src="img/banner4.jpg" width="100%" height="100%">
                    <div class="row">
                        <div class="col-md-12">

                            <nav class="navbar navbar-inverse">
                                <div class="container-fluid">
                                    <div class="navbar-header">
                                        <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-user"> <%= usu %></span></a>
                                    </div>
                                    <div>
                                        <ul class="nav navbar-nav">
                                            <li><a href="SesionJefeFac.html"><span class="glyphicon glyphicon-cog"></span>Configuraciones</a></li>
                                            <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-info-sign"></span> Mod Facturacion<span class="caret"></span></a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="CrearFactura.html">Facturacion</a></li>
                                                    <li><a href="ListadoFacturas.html">Listado de Facturas</a></li>
                                                </ul>
                                            <li><a href="EstadoCartera.html"><span class="glyphicon glyphicon-briefcase"></span>Mod Cartera</a></li>
                                            <li><a href="PedidosPendientes.html"><span class="glyphicon glyphicon-globe"></span>Mod Pedidos </a></li>
                                            <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-info-sign"></span>Usuarios<span class="caret"></span></a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="RegistrosGenerales.jsp">Registros</a></li>
                                                    <li><a href="ListaSolicitudes.jsp">Solicitudes</a></li>
                                                    <li><a href="ListaUsuarios.jsp">Lista usuarios</a></li>

                                                    </div>

                                                    <div>
                                                        <form action="" class="navbar-form navbar-right">
                                                             <a href="Index.jsp">
                                                                <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-off"> CerrarSesion</span>
                                                                </button>
                                                             </a>

                                                        </form>



                                                    </div>
                                                    </div>
                                                    </nav>	

                                                    </div>
                                                    </div>

                                    <table border='0px' width='200%' height='200px' align='center'>
                                        <div  style='width:700px ;margin:0 auto; margin-top:1em; margin-bottom:.1em'>


                                            <img class="imgcenter" src="img/regis.png">
                                            <font color="black" size="5"  face="arial" align="justify" >
                                            <center>
                                                <p> Registro de usuarios </p><br><br>
                                            </center>
                                            
                                            <div class="alert alert-info fade in">
                                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                             <h5>
                                            <% if (request.getAttribute("mensaje")!=null){%>

                                            ${mensaje}

                                            <%}%>
                                            </h5>
                                            
                                            </div>

                                            </font>

                                            <form class="form-horizontal" method="post" action="ServletRegistro" >
                                                <div class="form-group">
                                                    <label class="control-label col-xs-3">Identificacion:</label>
                                                    <div class="col-xs-9">
                                                        <input type="text" class="form-control" id="inputEmail" placeholder="id" name="id" required><br>
                                                    </div>
                                                    <label class="control-label col-xs-3">NombreUsuario:</label>
                                                    <div class="col-xs-9">
                                                        <input type="text" class="form-control" id="inputEmail" placeholder="usuario" name="usuario" required><br>
                                                    </div><br>

                                                </div>

                                                <br></br>

                                                <div class="form-group">
                                                    <label class="control-label col-xs-3">Nombre completo:</label>
                                                    <div class="col-xs-9">
                                                        <input type="text" class="form-control" id="inputPassword" placeholder="nombre" name="nombre" required><br>
                                                    </div>
                                                </div>

                                                <br></br>

                                                <div class="form-group">
                                                    <label class="control-label col-xs-3">Rol:</label><br>
                                                    <div class="col-xs-9">

                                                        <select name="rol">
                                                            <option value="Admin">--Administrador--</option> 
                                                            <option value="Asistente">--Asistente--</option> 
                                                            <option value="cliente">--Cliente--</option>
                                                            <option value="jefe">-Jefe Departamento-</option>

                                                        </select><br>
                                                    </div>
                                                </div>

                                                <br></br>

                                                <div class="form-group">
                                                    <label class="control-label col-xs-3">Password:</label>
                                                    <div class="col-xs-9">
                                                        <input type="hidden" name="txtopcion" value="1">
                                                        <input type="text" class="form-control" placeholder="Password" name="contrasena"><br>
                                                    </div>
                                                </div>
                                                <br></br>




                                                </br>
                                                <div class="form-group">



                                                    <div class="col-xs-offset-3 col-xs-9">
                                                        <input type="submit" class="btn btn-primary" value="Enviar">
                                                        <input type="reset" class="btn btn-default" value="Limpiar">

                                                        

                                                    </div>


                                                </div>




                                            </form>


                                    </table>
                            </div>

                        </div>
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