<%-- 
    Document   : SesionAsistente
    Created on : 14-feb-2016, 18:21:38
    Author     : SHADY-
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Transportes Urimar</title>

        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="stilos.css" rel="stylesheet">

        <% HttpSession sesion = request.getSession();

            String usu = sesion.getAttribute("nombre").toString();


        %>




    </head>

    <body>

        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <img id="logo" alt="Trasportes Urimar" src="img/banner4.jpg" width="100%" height="100%">
                    <div class="row">
                        <div class="col-md-12">

                            <nav class="navbar navbar-inverse">
                                <div class="container-fluid">
                                    <div class="navbar-header">
                                        <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-th"> <%=usu%></span></a>
                                    </div>
                                    <div>
                                        <ul class="nav navbar-nav">
                                            <li class="active"><a href="SesionAsistente.jsp"><span class="glyphicon glyphicon-home"></span> Inicio</a></li>
                                            <li><a href="ConsultaPedidos.jsp"><span class="glyphicon glyphicon-list-alt"></span> Pedidos </a></li>
                                            <li><a href="#"><span class="glyphicon glyphicon-road"></span> Crear ruta</a></li>
                                            <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-info-sign"></span>Parque Automotor<span class="caret"></span></a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="RegistroConductor.jsp">Registro Conductores</a></li>
                                                    <li><a href="RegistroCamion.jsp">Registro Vehiculos</a></li>
                                                    <li><a href="VerAsignamiento.jsp">Asignamiento</a></li>
                                                    <li><a href="VerCamion.jsp">Lista camiones</a></li>
                                                    <li><a href="VerConductor.jsp">Lista conductores</a></li>
                                                </ul>
                                            <li ><a href="Viajes.html"><span class="glyphicon glyphicon-send"></span> Viajes</a></li>


                                        </ul>
                                    </div>

                                    <div>
                                        <form action="" class="navbar-form navbar-right">
                                            <div class="form-group">
                                                <input type="text" class="form-control" placeholder="Buscar...">
                                            </div>

                                            <button class="btn btn-default" top="5" href="login.html"><span class="glyphicon glyphicon-search"></span></button>
                                            <a href="Index.jsp"><button type="button" class="btn btn-default"><span class="glyphicon glyphicon-off"> CerrarSesion</span></button></a>
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
                                                    <br>

                                                    </center>
                                                </div>
                                                <div>
                                                </div>
                                        </div>
                                    </div>












                                    <!-----Este es el footer---->

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
                    </body>
                    </html>