<%-- 
    Document   : EstadoCartera
    Created on : 14-feb-2016, 19:10:26
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
<a class="navbar-brand" href="#"><span class="glyphicon glyphicon-user"> Sandra V</span></a>
</div>
<div>
<ul class="nav navbar-nav">
<li><a href="SesionJefeFac.html"><span class="glyphicon glyphicon-home"></span>Inicio</a></li>
<li class="active" class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-info-sign"></span> Facturacion<span class="caret"></span></a>
<ul class="dropdown-menu">
<li class="active"><a href="CrearFactura.html">Crear Factura</a></li>
<li><a href="ListadoFacturas.html">Listado de Facturas</a></li>
</ul>
<li><a href="EstadoCartera.html"><span class="glyphicon glyphicon-briefcase"></span> Cartera</a></li>
<li><a href="PedidosPendientes.html"><span class="glyphicon glyphicon-globe"></span> Pedidos </a></li>
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
<!--- contenido de la pagina---->
<div class="container" >

<h2>Cartera</h2>

<p><font color="red" size="5"  face="arial" align="justify" >Estado de cartera </font></p> 

<input type="text" class="form-inline"  align="right" placeholder="Buscar ">

<button class="btn btn-default" top="5"><span class="glyphicon glyphicon-search"></span></button>

<br> </br>
<table class="table">
<thead>
<tr>
<th>Nº de Factura</th>
<th>Lugar </th>
<th>Cliente</th>
<th>Fecha de Creacion</th>
<th>Fecha de Vencimiento</th>
<th>Descripción </th>
<th>estado</th>
<th>Valor</th>
</tr>
</thead>

<tbody>
<tr class="success">
<td>0001-00000012</td>
<td>Cartagena - 08:00 am</td>
<td>0Sistran S.A</td>
<td>30/12/2015</td>
<td>31/12/2015</td>
<td>Maiz contenedorizada</td>
<td>Pendiente</td>
<td>$400.000</td>
</tr>



<tr class="danger">
<td>0002-000013</td>
<td>Santa Marta - 10:00 am</td>
<td>Sistran S.A</td>
<td>15/04/2015</td>
<td>17/04/2015</td>
<td>Trigo contenedorizada</td>
<td>canelada</td>
<td>5.000.000</td>
</tr>



<tr class="info">
<td>0003-00014</td>
<td>Bogotá - 03:00 pm</td>
<td>Sistran S.A</td>
<td>12/07/2014</td>

<td> 15/07/2014</td>
<td>Maiz</td>
<td>500 unidades</td>
<td>1.000.000</td>
</tr>






</tbody>
</table>

</table>

</div>


<!---footer---->
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