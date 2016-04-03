<%-- 
    Document   : RegistroConductor
    Created on : 17/03/2016, 07:26:26 PM
    Author     : wilson
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
                    <img id="logo" alt="Trasportes Urimar" src="img/logo.jpg">
                    <div class="row">
                        <div class="col-md-12">

                            <nav class="navbar navbar-inverse">
                                <div class="container-fluid">
                                    <div class="navbar-header">
                                        <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-th"> ASISTENTE</span></a>
                                    </div>
                                    <div>
                                        <ul class="nav navbar-nav">
                                            <li ><a href="InicioAsistente.html"><span class="glyphicon glyphicon-home"></span> Inicio</a></li>
                                            <li ><a href="liquidaciones.html"><span class="glyphicon glyphicon-list-alt"></span> Liquidaciones</a></li>
                                            <li><a href="CrearRuta.html"><span class="glyphicon glyphicon-road"></span> Crear ruta</a></li>
                                            <li class="active" class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-info-sign"></span>Parque Automotor<span class="caret"></span></a>
                                                <ul class="dropdown-menu">
                                                    <li class="active"><a href="RegistrarConductor.html">Registro Conductores</a></li>
                                                    <li><a href="RegistrarCamion.html">Registro Vehiculos</a></li>
                                                    <li><a href="VerAsignamiento.jsp">Asignamiento</a></li>
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
                                            <a href="index.html"><button type="button" class="btn btn-default"><span class="glyphicon glyphicon-off"> CerrarSesion</span></button></a>
                                        </form>



                                    </div>
                                </div>
                            </nav>	

                        </div>
                    </div>
                    <!---Aqui va el contenido de la pagina---->
                    <center><font color="black" size="6"  face="arial" align="justify" >Registro Motorista</font></font></center>


                    <div class="container">
                        <img src="img/perfil.jpg" style="float:right;"/>

                        <form   class="form-inline" role="form" method="post" action="ServletConductor">
                            <div class="form-group">
                                <label class="control-label">
                                    <div class="col-xs-3">
                                        Nombre: <input class="form-control" type="text" name="nombre" />
                                    </div>
                                </label>
                            </div>
                            <div class="form-group">
                                <label class="control-label">
                                    <div class="col-xs-3">
                                        Apellidos: <input class="form-control" type="text" name="apellido" />
                                    </div>
                                </label>
                            </div>
                            <div class="form-group">
                                <label class="control-label">
                                    <div class="col-xs-3">
                                        cedula: <input class="form-control" type="text" name="cedula" />
                                    </div>
                                </label>
                            </div>
                            <div class="form-group">
                                <label class="control-label">
                                    <div class="col-xs-3">
                                        Direccio: <input class="form-control" type="text" name="direccion" />
                                    </div>
                                </label>
                            </div>
                            <div class="form-group">
                                <label class="control-label">
                                    <div class="col-xs-3">
                                        Teléfono: <input class="form-control" type="text" name="telefono" />
                                    </div>
                                </label>
                            </div>
                            <div class="form-group">
                                <label class="control-label">
                                    <div class="col-xs-3">
                                        Celular: <input class="form-control" type="text" name="celular" />
                                    </div>
                                </label>
                            </div>
                            <br>
                            <br>
                           
                            <div class="form-group">
                                <label class="control-label">
                                    <div class="col-xs-9">
                                        Categoria: <select class="form-control"  name="categoria">
                                            <option value="seleccionar categoria">seleccionar categoria</option> 
                                            <option value="A2">A2</option> 
                                            <option value="B1" >B1</option>
                                            <option value="B2">B2</option>
                                            <option value="B3">B3</option>
                                            <option value="C1">C1</option>
                                            <option value="C2">C2</option>
                                            <option value="C3">C3</option>
                                        </select>
                                    </div>
                                </label>
                            </div>
                            <div class="form-group">
                                <label class="control-label">
                                    <div class="col-xs-9">
                                        vencimiento:<input class="form-control" type="date" name="vencimiento" />
                                    </div>
                                </label>
                            </div>
                            <br> </br>

                            <br> </br>
                            <br> </br>
                            <br> </br>
                            <div class="col-md-1"  >
                                <button type="submit" class="btn btn-danger">Guardar</button>

                            </div>
                            <div class="col-md-1" >
                                <button type="button" class="btn btn-danger">Modificar</button>

                            </div>

                            <div class="col-md-1"  >
                                <button type="button" class="btn btn-danger">Eliminar</button>
                            </div>
                            <div class="col-md-1"  >
                                <button type="button" class="btn btn-danger">Nuevo</button>
                            </div>
                            <div class="col-md-1"  >
                                <button type="button" class="btn btn-danger">Buscar</button>
                            </div>
                        </form>
                    </div>
                </div>
                <br> </br>
                <br> </br>
                <br> </br>
            </div>

        </center>

        <br> </br>





        <!-----Este es el footer---->

        <div class="row">
            <div class="col-md-12">
                <img id="footer"  src="img/footer.png">
            </div>
        </div>
    </div>
</div>

<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/scripts.js"></script>
</body>
</html>
