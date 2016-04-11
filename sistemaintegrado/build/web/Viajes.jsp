<%-- 
    Document   : Viajes
    Created on : 14-feb-2016, 18:50:04
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
                <li><a href="liquidaciones.html"><span class="glyphicon glyphicon-list-alt"></span> Liquidaciones</a></li>
                <li><a href="CrearRuta.html"><span class="glyphicon glyphicon-road"></span> Crear ruta</a></li>
                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-info-sign"></span>Parque Automotor<span class="caret"></span></a>
                                                <ul class="dropdown-menu">
                                                <li><a href="RegistrarConductor.html">Registro Conductores</a></li>
                                                <li><a href="RegistrarCamion.html">Registro Vehiculos</a></li>
                                                <li><a href="Asignamiento.html">Asignamiento</a></li>
                                                </ul>
                <li class="active"><a href="Viajes.html"><span class="glyphicon glyphicon-send"></span> Viajes</a></li>
                
                
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
                
                
                <div class="container-center" id="container1">
                <div class="row">
                <div class="col-md-12">
                
                
                <center>
                
                
                <center><h1>Viajes</h1></center>
                <br><br>
                <div class="container3">
                <div class="media well" id="contenedor3">
                <h3 class="text-left">Busqueda avanzada</h3>
                <h4 class="text-left">Fecha:</h4>
                <div class="row">
                <div class="col-md-4">
                <form role="form">
                <div class="form-group">
                <label for="fecha">
                Desde:
                </label>
                <input type="date"  id="fecha" />
                </div>
                </div>
                <div class="col-md-4">
                <form role="form">
                <div class="form-group">
                <label for="fecha">
                Hasta:
                </label>
                <input type="date"  id="fecha" />
                </div>
                </div>
                <br>
                <hr width="100%">
                <div class="row">
                <div class="form-group">
                
                <div class="col-xs-9">
                </div>
                
                <div class="row">
                <div class="col-xs-6"> <label for="orden">Placa:</label> <input type="text" class="form-inline"  align="right">
                <div class="form-group">
                
                </div>
                
                </div>
                </div>
                <br>
                <div class="row">
                <div class="col-xs-6"> <label for="orden">Cliente:</label> <input type="text" class="form-inline"  align="right">
                <div class="form-group">
                
                </div>
                
                </div>
                </div>
                
                </div>
                
                <div class="row">
                <div class="col-xs-6"> <label for="orden">Producto:</label> <input type="text" class="form-inline"  align="right">
                <div class="form-group">
                
                </div>
                
                </div>
                </div>
                </div>
                </div>
                
                <br><br> 
                <div class="form-group">
                
                <div class="col-xs-offset-3 col-xs-5">
                <input type="submit" class="btn btn-danger" value="Consultar">
                </div>
                </div>
                
                
                
                <div>  
                </div>
                </div>
                
                <div class="container-fluid" id="container2">
                <div class="row">
                <div class="col-md-12">
                
                <br><br>
                <div class="container" >           
                <table class="table table-bordered">
                <thead>
                <tr class="danger">
                <th>Placa</th>
                <th>Orden</th>
                <th>Conductor</th>
                <th>Fecha</th>
                <th>Producto</th>
                <th>Cantidad(Kg)</th>
                <th>Origen</th>
                <th>Destino</th>
                <th>Cliente</th>
                <th>Valor</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                <td>TRR289</td>
                <td>2456</td>
                <td>Carlos mario</td>
                <td>07/11/2015</td>
                <td>Maíz</td>
                <td>25.000</td>
                <td>Cartagena</td>
                <td>Medellin</td>
                <td>Finca S.A.S</td>
                <td>5.000.000</td>
                </tr>
                <tr class="info">
                <td>TFR578</td>
                <td>2457</td>
                <td>Juan carlos</td>
                <td>06/11/2015</td>
                <td>Maíz</td>
                <td>28.000</td>
                <td>Barranquilla</td>
                <td>Sabaneta</td>
                <td>Finca S.A.S</td>
                <td>5.800.000</td>
                </tr>
                <tr class="success">
                <td>DFR763</td>
                <td>2365</td>
                <td>Jorge</td>
                <td>11/11/2015</td>
                <td>Frijol</td>
                <td>30.000</td>
                <td>Buenaventura</td>
                <td>Itagui</td>
                <td>Granel S.A.S</td>
                <td>6.200.000</td>
                </tr>
                <tr class="warning">
                <td>WET326</td>
                <td>2254</td>
                <td>Wilson</td>
                <td>05/11/2015</td>
                <td>Purina</td>
                <td>35.000</td>
                <td>Bello</td>
                <td>Bogota</td>
                <td>Finca S.A.S</td>
                <td>7.000.000</td>
                </tr>
                </tbody>
                </table>
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