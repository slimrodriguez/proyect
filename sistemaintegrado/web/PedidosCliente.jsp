<%-- 
    Document   : PedidosCliente
    Created on : 14-feb-2016, 18:41:34
    Author     : SHADY-
--%>
<%@page import="Controlador.Pedidos"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Entidad.BeanPedido"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Transportes Urimar</title>
<%ArrayList<Pedidos> em = (ArrayList<Pedidos>) session.getAttribute("pedidos");%>


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

                                                        <h2>Pedidos</h2>

                                                        <p><font color="red" size="5"  face="arial" align="justify" >Pedidos Pendientes </font></p> 

                                                        <input type="text" class="form-inline"  align="right" placeholder="Buscar pedido">

                                                        <button class="btn btn-default" top="5"><span class="glyphicon glyphicon-search"></span></button>

                                                        <br> </br>
                                                        <div class="container">
            <h1 class="h1 text-center text-info">TABLA EMPLEADOS</h1>
            <br>
            <br>
            <table class=" table table-responsive">
                <thead>
                <th>NUMERO PEDIDO</th>
                <th>ORIGEN</th>
                <th>DESTINO</th>
                <th>PRODUCTO</th>
                <th>CANTIDAD</th>
                <th>FECHA DE PEDIDO</th>
                <th>FECHA DE ENTREGA</th>
                <th>USUARIO</th>
                <th class="text-center">OPCIONES</th>
                </thead>
                <tbody>
                    <%for (Pedidos e : em) {%>
                    <tr>
                        <td> <%= e.getIdpedido()%> </td>
                        <td> <%= e.getOrigen()%> </td>
                        <td> <%= e.getDestino()%> </td>
                        <td> <%= e.getProducto()%> </td>
                        <td> <%= e.getCantidad()%> </td>
                        <td> <%= e.getFechapedido()%> </td>
                        <td> <%= e.getFechaentrega()%> </td>
                        <td> <%= e.getUsuario()%> </td>
                        <td>
                            <form action="CRUD" method="POST">
                                <div class="text-center">
                                    <input class="btn btn-primary" type="submit" value="EDITAR" name="edit">
                                    <input class="btn btn-danger" type="submit" value="ELIMINAR" name="delete">
                                </div>
                            </form>
                        </td>
                    </tr>   
                    <%}%>
                </tbody>
            </table>
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