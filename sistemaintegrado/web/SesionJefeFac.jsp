<%-- 
    Document   : SesionJefeFac
    Created on : 2/02/2016, 11:23:43 AM
    Author     : USER
--%>

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
    <link href="css/stilos.css" rel="stylesheet">
    
    
          <% HttpSession sesion = request.getSession();
    
     String usu= sesion.getAttribute("nombre").toString();
             
          
             %>
        
            
    <body>
        <%if (usu != null){%>
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
                                            <li><a href="SesionJefeFac.jsp"><span class="glyphicon glyphicon-home"></span>Inicio</a></li>
                                            <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-info-sign"></span> Facturacion<span class="caret"></span></a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="CrearFactura.jsp">Crear Factura</a></li>
                                                    <li><a href="ListadoFacturas.jsp">Listado de Facturas</a></li>
                                                </ul>
                                            <li><a href="EstadoCartera.jsp"><span class="glyphicon glyphicon-briefcase"></span> Cartera</a></li>
                                            <li><a href="ConsultaPedidos.jsp"><span class="glyphicon glyphicon-globe"></span> Pedidos </a></li>
                                            <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-info-sign"></span>CLientes<span class="caret"></span></a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#">Empresas</a></li>
                                                    <li><a href="#">Personas</a></li>


                                                    </div>

                                                    <div>
                                                        <form action="" class="navbar-form navbar-right">
                                                            <div class="form-group">
                                                                <input type="text" class="form-control" placeholder="Buscar...">
                                                            </div>

                                                            <button class="btn btn-default" top="5" href="login.html"><span class="glyphicon glyphicon-search"></span></button>
                                                            <a href="index.html"><button type="button" class="btn btn-default"><span class="glyphicon glyphicon-off"> CerrarSesion</span>
                                                                </button></a>

                                                        </form>



                                                    </div>
                                                    </div>
                                                    </nav>	

                                                    </div>
                                                    </div>
                                                    <!---Aqui va el contenido de la pagina---->
                                                    <div class="container-fluid" id="container1">
                                                        <div class="row">
                                                            <div class="col-md-12">

                                                                <center>
                                                                    <br><br>
                                                                    <div class="media well"> 

                                                                        <a href="#" class="pull-center" > <img alt="quienes somos" class="img-responsive" src="img/bienv.gif" class="media-object" width="500px" /></a>
                                                                        <div class="media-body">

                                                                            <h4>
                                                                                <div>
                                                                                    <br><br><br><br>
                                                                                    <p class="text-justify" class="text-responsive">
                                                                                    </p></div></h4>




                                                                            </center>
                                                                        </div>
                                                                        <div>
                                                                        </div>
                                                                    </div>
                                                            </div>








                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <img id="footer"  src="img/footer.png">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    </div>

                                                    <script src="js/jquery.min.js"></script>
                                                    <script src="js/bootstrap.min.js"></script>
                                                    <script src="js/scripts.js"></script>
                                                    <%}else response.sendRedirect("Login.jsp");%>    
                                                    
                                                    </body>
                                                    </html>
