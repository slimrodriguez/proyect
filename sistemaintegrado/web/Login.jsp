<%-- 
    Document   : Login
    Created on : 05-feb-2016, 23:03:11
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
    </head>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="css/stilos.css" type="text/css" />
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
                                        <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-th"> URIMAR</span></a>
                                    </div>
                                    <div>
                                        <ul class="nav navbar-nav">
                                            <li  class="active"><a href="Index.jsp"><span class="glyphicon glyphicon-home"></span> Inicio</a></li>
                                            <li><a href="somos.jsp"><span class="glyphicon glyphicon-briefcase"></span> Quiénes Somos</a></li>
                                            <li><a href="Instalaciones.jsp"><span class="glyphicon glyphicon-globe"></span> Instalaciones</a></li>
                                            <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-info-sign"></span> Nuestros Servicios<span class="caret"></span></a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="granel.jsp">Transporte a Granel</a></li>
                                                    <li><a href="contenedor.jsp">Transporte Contenedorizada</a></li>

                                                </ul>
                                            <li><a href="contacto.jsp"><span class="glyphicon glyphicon-envelope"> </span> Contáctenos</a></li>

                                        </ul>
                                    </div>

                                   </div>
                                </div>
                            </nav>	

                        </div>
                    </div>



                    <div class="container-fluid" >
                        <div class="row" >
                            <div class="col-md-4">

                            </div>
                            <div   class="col-md-4" >
                                <br><br><br>
                                <center> <img   src="img/acceso.png" class="img-responsive" class="img-circle" ></center>
                                <h2 class="text-center" >
                                    <font color="red">Inicio de  Sesion !</font> 
                                </h2>


                                <form role="form" action="ServletLogin" method="post">
                                    <div class="form-group">

                                        <label for="usuario">
                                            <h4 class="pull-center"><font color="black" >Nombre Usuario</font></h4>
                                        </label>
                                        <input type="text" class="form-control" id="usuario" name="usuario">
                                    </div>
                                    <div class="form-group">

                                        <label for="Password">
                                            <h4><font color="black"> Contraseña </font></h4>
                                        </label>
                                        <input type="password" class="form-control" id="pass" name="password">
                                    </div>
                                    <button type="submit" class="btn btn-lg btn-block btn btn-danger">
                                        Entrar
                                    </button>
                                    <div class="checkbox">


                                </form>
                                <br>

                                <a href="TipoRegistro.jsp"><button type="button" class="btn btn-lg btn-block btn btn-link">
                                        Registrarte!
                                    </button></a>



                                <div class="col-md-4">

                                </div>
                            </div>
                        </div>
                    </div>






                    <div class="row">
                        <div class="col-md-12">

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
