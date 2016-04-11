<%-- 
    Document   : VerFactura
    Created on : 14-feb-2016, 19:09:06
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
                <link href="css/stilos.css" rel="stylesheet">
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
                <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-th"> CLIENTE</span></a>
                </div>
                <div>
                <ul class="nav navbar-nav">
                <li ><a href="index.html"><span class="glyphicon glyphicon-home"></span> Inicio</a></li>
                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-info-sign"></span> Pedidos<span class="caret"></span></a>
                <ul class="dropdown-menu">
                <li><a href="pedidos.html">Ver Pedidos</a></li>
                <li><a href="crearpedido.html">Cear Pedido</a></li>
                </ul>
                <li><a href="factura.html"><span class="glyphicon glyphicon-globe"></span> Facturas</a></li>
                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-info-sign"></span> Estado de carga<span class="caret"></span></a>
                <ul class="dropdown-menu">
                <li><a href="ruta.html">Estado de Ruta</a></li>
                </ul>
                </ul>
                </div>
                
                <div>
                <form action="" class="navbar-form navbar-right">
                <div class="form-group">
                <input type="text" class="form-control" placeholder="Buscar...">
                </div>
                
                <button class="btn btn-default" top="5"><span class="glyphicon glyphicon-search"></span></button>
                <button class="btn btn-.btn"><span class="glyphicon glyphicon-off"></span> Cerrar sesión</button>
                
                </form>
                
                
                
                </div>
                </div>
                </nav>  
                
                </div>
                </div>
                <!---Aqui va el contenido de la pagina---->
                
                
                
                
                <meta charset="utf-8">
                <meta name="viewport" content="width=device-width, initial-scale=1">
                <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
                <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
                
                <div class="container" >
                
                <h2>Factura</h2>
                
                <p><font color="red" size="5"  face="arial" align="justify" >Aquí puede ver su factura: </font></p> 
                
                <input type="text" class="form-inline"  align="right" placeholder="Buscar pedido">
                
                <button class="btn btn-default" top="5"><span class="glyphicon glyphicon-search"></span></button>
                
                <br> </br>
                <table class="table">
                <thead>
                <tr>
                <th>Factura de envio</th>
                <th>Empresa</th>
                <th>Fecha</th>
                <th>NIT o c.c</th>
                <th>Dirección</th>
                <th>Cantidad</th>
                <th>Detalle</th>
                <th>Valor unidad</th>
                <th>Valor total</th>
                
                </tr>
                </tr>
                </thead>
                
                <tbody>
                <tr class="success">
                <td>Nº 00123</td>
                <td>Distal S.A</td>
                <td>12/12/2015</td>
                <td>132444</td>
                <td>carrera 45 b 1</td>
                <td>45 unidades</td>
                <td>Maiz contenedorizada</td>
                <td>$300</td>
                <td>$400.000</td>
                </tr>
                
                <tr class="danger">
                <td>Nº 00133</td>
                <td>Distal S.A</td>
                <td>10/14/2015</td>
                <td>134334</td>
                <td>carrera 60 n 30</td>
                <td>500 unidades</td>
                <td>Trigo contenedorizada</td>
                <td>$30.000</td>
                <td>$2.000.000</td>
                </tr>
                
                
                
                
                <tr class="info">
                <td>Nº 03222</td>
                <td>Distal S.A</td>
                <td>17/08/2015</td>
                <td>169493</td>
                <td>carrera 45 n 39 calle 53</td>
                <td>1000 unidades</td>
                <td>Trigo contenedorizada</td>
                <td>$13.000</td>
                <td>$1.200.000</td>
                </tr>
                
                
                
                
                
                
                </tbody>
                </table>
                </div>
                
                
                <div class="row">
                <div class="col-md-12">
                <img id="footer" alt="Bootstrap Image Preview" src="img/footer.png">
                </div>
                </div>
                
                <script src="js/jquery.min.js"></script>
                <script src="js/bootstrap.min.js"></script>
                <script src="js/scripts.js"></script>
                </body>
                </html>