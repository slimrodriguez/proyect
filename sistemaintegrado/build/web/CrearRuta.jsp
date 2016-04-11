<%-- 
    Document   : CrearRuta
    Created on : 14-feb-2016, 18:33:00
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
<li class="active"><a href="CrearRuta.html"><span class="glyphicon glyphicon-road"></span> Crear ruta</a></li>
<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-info-sign"></span>Parque Automotor<span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                <li><a href="RegistrarConductor.html">Registro Conductores</a></li>
                                <li><a href="RegistrarCamion.html">Registro Vehiculos</a></li>
                                <li><a href="Asignamiento.html">Asignamiento</a></li>
                                </ul>
<li class="#"><a href="#"><span class="glyphicon glyphicon-send"></span> Viajes</a></li>


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
<center><font color="black" size="6" face="arial" align="justify"> Crear ruta</font>
      </center>




      <HR width="100%">




      <div class="container">

      <form class="form-inline" role="form">
      <div class="form-group">
      <label for="email">Buscar orden: </label>
      <input type="email" class="form-control" id="email" placeholder="Orden....">

      </div>

      <button class="btn btn-default" top="3"><span class="glyphicon glyphicon-search"></span></button>

      </form>

      <br> </br>

      <div class="row">
      <div class="col-md-4">
      <label for="pwd">Número de orden:</label>
      <input type="password" class="form-control" id="pwd" placeholder="">
      </div>



      <div class="row">
      <div class="col-md-4">
      <label for="pwd">Fecha:</label>
      <input type="password" class="form-control" id="pwd" placeholder="">
      </div>
      </div>



      </div>

          <br> </br>   
      <center><font color="black" size="5" face="arial" align="justify"> Ruta</font>
      </center>

      <br> </br>
 <div class="row">

<div class="col-sm-4">
<form role="form">
<div class="form-group">
<label for="sel1">Origen</label>
<select class="form-control" id="sel1">
<option>--Seleccione ciudad--</option>
<option>Medellín</option>
<option>Cali</option>
<option>Pereira</option></option>
</select>
</div>
</div>
</form>

<div class="col-sm-4">
<form role="form">
<div class="form-group">
<label for="sel1">Destino</label>
<select class="form-control" id="sel1">
<option>---Seleccione ciudad---</option>
<option>Medellín</option>
<option>Cali</option>
<option>Pereira</option>
</select>
</div>
</form>
</div>
</div>

<!--siguiente-->

 <HR width="100%">
  <center><font color="black" size="5" face="arial" align="justify"> Conductor/Vehículo: </font></center>

  <div class="row">
      <div class="col-md-4"> 

      <form class="form-inline" role="form">
      <div class="form-group">
      <label for="cedula">Cédula: </label>
      <input type="cedula" class="form-control" id="cedula" placeholder="Cédula...."></div>
      <button class="btn btn-default" top="3"><span class="glyphicon glyphicon-search"></span></button>
       </div>
       </div>
    <br> </br>
      <br> </br>

       <div class="row">
      <div class="col-md-4">
      <label for="pwd">Vehículo:</label>
      <input type="password" class="form-control" id="pwd" placeholder="">

          <br> </br>


       </div>
       </div>



       <div class="row">
      <div class="col-md-4">
      <label for="pwd">Nombre del conductor:</label>
      <input type="password" class="form-control" id="pwd" placeholder="">
       </div>
       </div>





    <!--Siguiente-->
     <HR width="100%">
  <center><font color="black" size="5" face="arial" align="justify"> Conductor/Vehículo: </font></center>

  <div class="row">
      <div class="col-md-4"> 

      <form class="form-inline" role="form">
      <div class="form-group">
      <label for="Nit">Nit Cliente:</label>
      <input type="Nit" class="form-control" id="cedula" placeholder="Nit...."></div>
      <button class="btn btn-default" top="3"><span class="glyphicon glyphicon-search"></span></button>
       </div>
       </div>
    <br> <br>

       <div class="row">
      <div class="col-md-4">
      <label for="pwd">Razón social/Nombre:</label>
      <input type="password" class="form-control" id="pwd" placeholder="">

          <br> <br>
       </div>
       </div>

       <div class="row">
      <div class="col-md-4">
      <label for="pwd">Producto:</label>
      <input type="password" class="form-control" id="pwd" placeholder="">
       </div>
       </div>

       <br><br>
         <div class="row">
      <div class="col-md-4">
      <label for="pwd">Cantidad(Kg):</label>
      <input type="password" class="form-control" id="pwd" placeholder="">
       </div>
       </div>

       <br><br>
         <div class="row">
      <div class="col-md-4">
      <label for="pwd">Valor total:</label>
      <input type="password" class="form-control" id="pwd" placeholder="">
       </div>
       </div>







        <br><br><br>
           <div class="form-group">
     <div class="col-xs-offset-4 col-md-4">
     <input type="submit" class="btn btn-danger" value="Crear">
     <input type="reset" class="btn btn-danger" value="Modificar">
     <input type="reset" class="btn btn-danger" value="Guardar">

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





<br> <br>
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

