<%-- 
    Document   : TipoRegistro
    Created on : 14-feb-2016, 18:53:51
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
    <link href="css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="css/stilos.css" type="text/css" />
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
                                        <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-th"> URIMAR</span></a>
                                    </div>
                                    <div>
                                        <ul class="nav navbar-nav">
                                            <li  class="active"><a href="Index.jsp"><span class="glyphicon glyphicon-home"></span> Inicio</a></li>
                                            <li><a href="somos.jsp"><span class="glyphicon glyphicon-briefcase"></span> Quiénes Somos</a></li>
                                            <li><a href="Instalaciones.jsp"><span class="glyphicon glyphicon-globe"></span> Instalaciones</a></li>
                                            <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-info-sign"></span> Nuestros Servicios<span class="caret"></span></a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="granel.jsp">Transporte a Granel</a></li>
                                                    <li><a href="contenedor.jsp">Transporte Contenedorizada</a></li>

                                                </ul>
                                            <li><a href="contacto.jsp"><span class="glyphicon glyphicon-envelope"> </span> Contáctenos</a></li>

                                        </ul>
                                    </div>

                                    <div>
                                        <form action="" class="navbar-form navbar-right">
                                           <a href="Login.jsp">
                                               <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-user">Registro</span></button>
                                           </a>
                                        </form>


                                    </div>
                                </div>
                            </nav>	

                        </div>
                    </div>
  
          
          <br>
          <br>
          <br>
          <br>
          
          
          
                  <div class="container-fluid">
	<div class="row">
		<div class="col-md-4">
		</div>
		<div class="col-md-4">
			<h3 class="text-primary text-center">
				Seleccione Tipo de Usuario
			</h3> 
                    <br>
                    <br>
                    
                    <a href="RegistroEmpresa.jsp"><button type="button" class="btn btn-lg btn-block btn-default">
		          <em class="glyphicon glyphicon-lock"></em> Empresa
                         </button>
                    </a>
                    
                    <a href="RegistroPersonas.jsp">   <button type="button" class="btn btn-lg btn-block btn-danger">
		         <em class="glyphicon glyphicon-user"></em> Persona
		          </button>
                    </a> 
		</div>
		<div class="col-md-4">
		</div>
	</div>
</div>
          
          
          
          
          <script src="js/jquery.min.js"></script>
          <script src="js/bootstrap.min.js"></script>
          <script src="js/scripts.js"></script>
          </body>
          </html>