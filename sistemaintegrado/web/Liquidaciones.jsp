<%-- 
    Document   : Liquidaciones
    Created on : 14-feb-2016, 19:08:05
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
                <link href="css/stilos.css" rel="stylesheet">
                
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
                <li ><a href="InicioAsistente.html"><span class="glyphicon glyphicon-home"></span> Inicio</a></li>
                <li class="active"><a href="liquidacion.html"><span class="glyphicon glyphicon-list-alt"></span> Liquidaciones</a></li>
                <li><a href="CrearRuta.html"><span class="glyphicon glyphicon-road"></span> Crear ruta</a></li>
                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-info-sign"></span>Parque Automotor<span class="caret"></span></a>
                                                <ul class="dropdown-menu">
                                                <li><a href="RegistrarConductor.html">Registro Conductores</a></li>
                                                <li><a href="RegistrarCamion.html">Registro Vehiculos</a></li>
                                                <li><a href="Asignamiento.html">Asignamiento</a></li>
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
                
                
               
                
                 <div class="container-left" id="container1">
            <div class="row">
            <div class="col-md-12">
            
            
            <center>
            <div class="">
            
            <center><h1>Liquidación vehículos consulta</h1></center>
            <br><br>
            
            <div class="container-fluid" id="container2">
            <div class="row">
            <div class="col-md-12">
            <div class="col-sm-4"> <input type="text" class="form-inline"  align="right" placeholder="Buscar por placa">
            <button class="btn btn-default" top="5"><span class="glyphicon glyphicon-search"></span></button>
            </div>
            
            <br><br>
            <div class="container" >           
            <table class="table table-bordered">
            <thead>
            <tr class="danger">
            <th>Placa</th>
            <th>Nro liquidación</th>
            <th>Fecha</th>
            <th>Valor</th>
            <th>Ver</th>
            </tr>
            </thead>
            <tbody>
            <tr>
            <td>TRR289</td>
            <td>0112</td>
            <td>02/10/2015</td>
            <td>8.000.000</td>
            <td><a href='#'>Ver</a></td>
            </tr>
            <tr class="info">
            <td>TFR578</td>
            <td>0114</td>
            <td>06/10/2015</td>
            <td>5.000.000</td>
            <td><a href='#'>Ver</a></td>
            </tr>
            <tr class="success">
            <td>DFR763</td>
            <td>0143</td>
            <td>04/10/2015</td>
            <td>4.500.000</td>
            <td><a href='#'>Ver</a></td>
            </tr>
            <tr class="warning">
            <td>WET326</td>
            <td>0165</td>
            <td>04/10/2015</td>
            <td>5.400.000</td>
            <td><a href='#'>Ver</a></td>
            </tr>
            </tbody>
            </table>
            </div>
            
            <div class="form-group">
            
            <div class="col-xs-offset-3 col-xs-9">
            <input type="submit" class="btn btn-danger" value="Imprimir">
            <input type="reset" class="btn btn-danger" value="Enviar">
            </div>
            </div>
            
            
            
            
            
            </div>
            </div>
            
            </div>
            
            
            
            </div>
            
            
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
