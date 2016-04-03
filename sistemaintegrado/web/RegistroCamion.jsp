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
                    <center><font color="black" size="6"  face="arial" align="justify" >Registro Camion</font></font></center>

                            <br> </br>
                            <br> </br>
                    <table border='0px' width='100%' height='100px' align='center'>
                    <div class="container">
                       
                        
                        <form   class="form-horizontal" role="form" method="post" action="ServletCamion">
                            <div class="form-group">
                                <label class="control-label col-xs-3"> 
                                    <div class="col-xs-9">
                                        Color:<input class="form-control " type="text" name="color" />
                                    </div>
                                </label>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-xs-3">
                                    <div class="col-xs-9">
                                        Marca: <input class="form-control " type="text" name="marca" />
                                    </div>
                                </label>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-xs-3">
                                    <div class="col-xs-9">
                                        Linea: <input class="form-control " type="text" name="linea" />
                                    </div>
                                </label>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-xs-3">
                                    <div class="col-xs-9">
                                        Modelo: <input class="form-control " type="text" name="modelo" />
                                    </div>
                                </label>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-xs-3">
                                    <div class="col-xs-9">
                                        NroMotor: <input class="form-control " type="text" name="nromotor" />
                                    </div>
                                </label>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-xs-3">
                                    <div class="col-xs-9">
                                        NroChasis:<input class="form-control " type="text" name="nrochasis" />
                                    </div>
                                </label>
                            </div><div class="form-group">
                                <label class="control-label col-xs-3">
                                    <div class="col-xs-9">
                                        Placa:<input class="form-control " type="text" name="placa" />
                                    </div>
                                </label>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-xs-3">
                                    <div class="col-xs-9">
                                        Soat: <select class="form-control "  name="soat">
                                            <option value="seleccionar">seleccionar</option> 
                                            <option value="Activo">Activo</option> 
                                            <option value="Vencido" >Vencido</option>
                                        </select>
                                    </div>
                                </label>
                            </div>
                               <div class="form-group">
                                <label class="control-label col-xs-3">
                                    <div class="col-xs-9">
                                        Tecnomecanica: <select class="form-control "  name="tecnomecanica">
                                            <option value="seleccionar">seleccionar</option> 
                                            <option value="Activo">Activo</option> 
                                            <option value="Vencido" >Vencido</option>
                                        </select>
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
</table>
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
