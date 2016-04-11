<%-- 
    Document   : CrearFactura
    Created on : 14-feb-2016, 18:36:31
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
<a class="navbar-brand" href="#"><span class="glyphicon glyphicon-user"></span></a>
</div>
<div>
<ul class="nav navbar-nav">
<li><a href="SesionJefeFac.jsp"><span class="glyphicon glyphicon-home"></span> Inicio</a></li>
<li class="active" class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-info-sign"></span> Facturacion<span class="caret"></span></a>
<ul class="dropdown-menu">
<li class="active"><a href="CrearFactura.jsp">Crear Factura</a></li>
<li><a href="ListadoFacturas.jsp">Listado de Facturas</a></li>
</ul>
<li><a href="EstadoCartera.jsp"><span class="glyphicon glyphicon-briefcase"></span> Cartera</a></li>
<li><a href="PedidosPendientes.jsp"><span class="glyphicon glyphicon-globe"></span> Pedidos </a></li>
<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-info-sign"></span>Clientes<span class="caret"></span></a>
<ul class="dropdown-menu">
<li><a href="#">Empresas</a></li>
<li><a href="#">Personas</a></li>


</div>

<div>
<form action="" class="navbar-form navbar-right">


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
<br><br>
                <br>

                <div class="container-fluid" id="ContCliente">
                <div class="row">
                <div class="col-md-12">
                <div class="row">
                <div class="col-md-8">
                <img alt="Bootstrap Image Preview" src="img/logo.jpg" >
                <br><br>
                <br>
                </div>

                <form role="form">
                <br><br>
                <div class="form-group">

                <label for="nfactura">
                Factura Nº
                </label>
                <input type="text" placeholder="M/1850" id="nfactura" />
                </div>

                </form>
                <div class="row">
                <div class="col-md-6">
                <form action="" class="navbar-form navbar-left">
                <div class="form-group">
                <input type="text" class="form-control" placeholder="Buscar Factura...">
                </div>

                <button class="btn btn-default" top="5" href="login.html"><span class="glyphicon glyphicon-search"></span></button>

                </form>

                <br><br><br><br>
                </div>
                <div class="col-md-6">
                </div>
                </div>
                <div class="row">
                <div class="col-md-6">
                <form role="form">
                <div class="form-group">

                <label for="fecha">
                Fecha Factura
                </label>
                <input type="date"  id="fecha" />
                </div>

                </div>

                <div id="cliente" class="col-md-6"  >

                <form role="form">

                <div class="form-group">
                <div>
                <label for="cliente">
                Cliente.....      
                </label>
                <input type="text"  id="cliente" />
                </div>
                <div>
                <label for="cliente">
                Nit/Cc:......
                </label>
                <input type="text"  id="id" />
                </div>
                <div>
                <label for="id">
                Direccion.
                </label>
                <input type="text"  id="dir" />
                </div>
                <div>
                <label for="dir">
                Telefono..
                </label>
                <input type="text"  id="te" />
                </div>

                </div>

                </form>
                </div>
                </div>
                </div>
                </div>

                <div class="row">

                <div class= "col-md-8">

                <br><br><br><br>
                <form role="form">
                <div class="form-group">

                <label for="npedido">
                Numero de Pedido
                </label>
                <input type="text"  id="npedido" />
                </div>

                <div class="form-group">

                <label for="dcredito">
                Dias de Credito.....
                </label>
                <input type="text"  id="dcredito" />
                </div>
                <div class="form-group">

                </form>
                <form role="form">
                <div class="form-group">

                <label for="fpago">
                Forma de Pago-----
                </label>
                <input type="text" id="fpago" />
                </div>
                <div class="form-group">

                <label for="fvence">
                Fecha de Vencimiento
                </label>
                <input type="date"  id="fvence" />
                </div>

                </form>
                </div>

                </div>
                </div>
                <br><br><br><br>
                <div class="row">
                <div class="col-md-12">
                <table class="table table-hover table-condensed table-bordered">
                <thead>
                <tr>
                <th>
                #
                </th>
                <th>
                Producto
                </th>
                <th>
                Cantidad
                </th>
                <th>
                Origen
                </th>
                <th>
                Destino
                </th>
                <th>
                Vehiculo
                </th>
                <th>
                MN
                </th>
                <th>
                Valor
                </th>
                </tr>
                </thead>
                <tbody>
                <tr>
                <td>
                1
                </td>
                <td>
                Maiz
                </td>
                <td>
                35.000 Kg
                </td>
                <td>
                Buenaventura
                </td>
                <td>
                Medellin
                </td>
                <td>
                KINYANG
                </td>
                <td>
                SUF855
                </td>
                <td>
                $4.000.000
                </td>
                </tr>
                <tr class="active">
                <td>
                2
                </td>
                <td>
                Maiz
                </td>
                <td>
                35.000 Kg
                </td>
                <td>
                Buenaventura
                </td>
                <td>
                Medellin
                </td>
                <td>
                SUF855
                </td>
                <td>
                SEA SPAR
                </td>
                <td>
                $4.000.000
                </td>
                </tr>
                <tr class="">
                <td>
                3
                </td>
                <td>
                Maiz
                </td>
                <td>
                35.000 Kg
                </td>
                <td>
                Buenaventura
                </td>
                <td>
                Medellin
                </td>
                <td>
                KINYANG
                </td>
                <td>
                SUF855
                </td>
                <td>
                $4.000.000
                </td>
                </tr>
                <tr class="active">
                <td>
                4
                </td>
                <td>
                Maiz
                </td>
                <td>
                35.000 Kg
                </td>
                <td>
                Buenaventura
                </td>
                <td>
                Medellin
                </td>
                <td>
                KINYANG
                </td>
                <td>
                SUF855
                </td>
                <td>
                $4.000.000
                </td>
                </tr>
                <tr class="">
                <td>
                5
                </td>
                <td>
                Maiz
                </td>
                <td>
                35.000 Kg
                </td>
                <td>
                Buenaventura
                </td>
                <td>
                Medellin
                </td>
                <td>
                KINYANG
                </td>
                <td>
                SUF855
                </td>
                <td>
                $4.000.000
                </td>
                </tr>
                </tr>
                </tbody>
                </table>
                </div>
                </div>

                <div class="row">
                <div class="col-md-8">
                <div class="row">
                <div class="col-md-2">

                <button type="button" class="btn btn-default">
                Nuevo
                </button>
                </div>
                <div class="col-md-2">

                <button type="button" class="btn btn-default">
                Guardar
                </button>
                </div>
                <div class="col-md-2">

                <button type="button" class="btn btn-danger">
                Eliminar
                </button>
                </div>
                <div class="col-md-2">

                <button type="button" class="btn btn-default">
                Modificar
                </button>
                </div>
                <div class="col-md-2">

                <button type="button" class="btn btn-default">
                Enviar
                </button>
                </div>
                <div class="col-md-2">

                <button type="button" class="btn btn-default">
                Cancelar
                </button>
                </div>
                </div> 

                </div>
                <div class="col-md-4">
                <form class="form-group" role="form">
                <div class="form-group">

                <label for="subt" >
                SUBTOTAL
                </label>
                <input type="number"  id="subt" />
                </div>
                <div class="form-group">
                <label for="iva" >
                IVA..............       
                </label>
                <input type="number"  id="iva" />
                <div>
                <br>
                <div class="form-group">
                <label for="iva" >
                TOTAL........     
                </label>
                <input type="number"  id="iva" />
                </div>



                <div>	<button type="button" class="btn btn-primary">
                Generar
                </button></div>
                </div>

                </div>



                </div>
                </div>
                </form>
                </div>
                </div>
                <div class="row">
                <div class="col-md-12">
                <blockquote>
                <p>
                Favor consignar a nombre de TRANSPORTES URIMAR S.A.S en la cuenta corriente 
                </p> <small>     Nº 2554-4554-42-45 <cite>Bancolombia</cite></small>
                </blockquote>
                </div>
                </div>
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