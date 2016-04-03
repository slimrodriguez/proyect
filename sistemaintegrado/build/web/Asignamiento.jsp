<%-- 
    Document   : Asignamiento
    Created on : 14-feb-2016, 19:13:41
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
                                        <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-th"> ASISTENTE</span></a>
                                    </div>
                                    <div>
                                        <ul class="nav navbar-nav">
                                            <li ><a href="sesionasistente.jsp"><span class="glyphicon glyphicon-home"></span> Inicio</a></li>
                                            <li><a href="liquidaciones.jsp"><span class="glyphicon glyphicon-list-alt"></span> Liquidaciones</a></li>
                                            <li><a href="CrearRuta.jsp"><span class="glyphicon glyphicon-road"></span> Crear ruta</a></li>
                                            <li class="active"class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-info-sign"></span>Parque Automotor<span class="caret"></span></a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="RegistroConductor.jsp">Registro Conductores</a></li>
                                                    <li><a href="RegistrarCamion.jsp">Registro Vehiculos</a></li>
                                                    <li class="active"><a href="Asignamiento.jsp">Asignamiento</a></li>
                                                </ul>
                                            <li ><a href="Viajes.jsp"><span class="glyphicon glyphicon-send"></span> Viajes</a></li>


                                        </ul>
                                    </div>

                                    <div>
                                        <form action="" class="navbar-form navbar-right">


                                            <button class="btn btn-default" top="5" href="login.html"><span class="glyphicon glyphicon-search"></span></button>
                                            <a href="Index.jsp"><button type="button" class="btn btn-default"><span class="glyphicon glyphicon-off"> CerrarSesion</span></button></a>
                                        </form>



                                    </div>
                                </div>
                            </nav>	

                        </div>
                    </div>
                    <!---Aqui va el contenido de la pagina---->


                    <center><font color="black" size="10" face="arial" align="justify"> Asignar</font></font>
                    </center>







                    <HR width="100%">

                    <center><font color="black" size="6" face="arial" align="justify"> Datos vehículo</font></font>
                    </center>




                    <div class="container">

                        <form   class="form-inline" role="form" method="post" action="ServletAsignar">
                            <div class="form-group">
                                <label for="text">Placa:</label>
                                <input type="text" class="form-control" id="email" placeholder=""/>
                            </div>

                            <button class="btn btn-default" top="5"><span class="glyphicon glyphicon-search"></span></button>



                            <br> </br>

                            <div class="row">
                                <div class="col-md-4">
                                    <label for="text">Placa:</label>
                                    <input type="text" class="form-control" name="placa"/>
                                </div>
                                <div class="col-md-4">
                                    <label for="text">Modelo:</label>
                                    <input type="text" class="form-control" name="modelo"/>
                                </div>
                                <div class="col-md-4">
                                    <label for="text">Color:</label>
                                    <input type="text" class="form-control" name="color"/>
                                </div>
                            </div>


                            <br> </br>

                            <div class="row">
                                <div class="col-md-4">
                                    <label for="text">Soat:</label>
                                    <input type="date" class="form-control" name="soat"/>
                                </div>
                                <div class="col-md-4">
                                    <label for="text">Tecnomecanica:</label>
                                    <input type="date" class="form-control" name="tecnomecanica"/>
                                </div>
                            </div>

                            <br> </br>






                            <HR width="100%">

                            <center><font color="black" size="6" face="arial" align="justify"> Conductor: </font></font>
                            </center>




                            <div class="form-group">
                                <label for="text">Cédula:</label>
                                <input type="text" class="form-control" name="cedula"/>
                            </div>

                            <button class="btn btn-default" top="5"><span class="glyphicon glyphicon-search"></span></button>


                            <br> </br>

                            <div class="row">
                                <div class="col-md-4">
                                    <label for="text">Nombre:</label>
                                    <input type="text" class="form-control" name="nombre">
                                </div>


                            </div>


                            <br> </br>

                            <div class="row">
                                <div class="col-md-4">
                                    <label for="text">Categoria:</label>
                                    <input type="text" class="form-control" name="categoria">
                                </div>
                                <div class="col-md-4">
                                    <label for="text">Vencimiento:</label>
                                    <input type="date" class="form-control" name="vencimiento">
                                </div>
                            </div>


                            <br> </br>


                            <div class="row">
                                <div class="col-md-4">
                                    <label for="text">Dirección:</label>
                                    <input type="text" class="form-control" name="direccion">
                                </div>
                                <div class="col-md-4">
                                    <label for="text">Teléfono:</label>
                                    <input type="text" class="form-control" name="telefono">
                                </div>
                            </div>
                        
                        <br> </br>
                        <br> </br>

                        <div class="row">
                            <div class="col-md-1">
                                    <button type="submit" class="btn btn-danger">Guardar</button>
                            </div>
                            <div class="col-md-1">
                                    <button type="button" class="btn btn-danger">Modificar</button>
                            </div>
                            <div class="col-md-1">
                                    <button type="button" class="btn btn-danger">Eliminar</button>
                            </div>
                            <div class="col-md-1">
                                    <button type="button" class="btn btn-danger">Nuevo</button>
                            </div>
                        </div>
</form>

                        <br> </br>
                    </div>
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