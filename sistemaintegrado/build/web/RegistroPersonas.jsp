<%-- 
    Document   : RegistroEmpresa
    Created on : 14-feb-2016, 18:12:44
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
                                                <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-user">Ingresar</span></button>
                                            </a>
                                            
                                        </form>


                                    </div>
                                </div>
                            </nav>	

                        </div>
                    </div>
            
            <table border='0px' width='100%' height='100px' align='center'>
            <div  style='width:750px ;margin:0 auto; margin-top:1em; margin-bottom:.1em'>
            
            
            <img class="imgcenter" src="img/regis.png">
            <font color="black" size="5"  face="arial" align="justify" >
            <center>
            <p> REGISTRO PRESONA NATURAL </p>
            </center>
            </font>
            <br></br>
            <div class="alert alert-info fade in">
                                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                             <h5>
                                            <% if (request.getAttribute("mensaje")!=null){%>

                                            ${mensaje}

                                            <%}%>
                                            </h5>
                                            
                                            </div>
            
            <form class="form-horizontal" method="post" action="RegistroEmpresa">
            <div class="form-group">
            
            <label class="control-label col-xs-3">Nombre : *</label>
            <div class="col-xs-9">
                <input type="textl" class="form-control"  name="razon" value="<%=request.getParameter("nit")%>">
            </div>
            </div>
            
            
            <div class="form-group">
            <br></br>
            <label class="control-label col-xs-3">Numero de Identificacion*</label>
            <div class="col-xs-9">
            <input type="text" class="form-control" id="inputEmail" name="nit">
            </div>
            </div>
            
            
            
            <br></br>
            
            <div class="form-group">
            <label class="control-label col-xs-3">Dirección: *</label>
            <div class="col-xs-9">
            <input type="text" class="form-control" name="direccion">
            </div>
            </div>
            <br></br>
            <div class="form-group">
            <label class="control-label col-xs-3" >Telefono: *</label>
            <div class="col-xs-9">
            <input type="text" class="form-control" name="telefono">
            </div>
            </div>
            <br></br>
            
            <div class="form-group">
            <label class="control-label col-xs-3" >Email: *</label>
            <div class="col-xs-9">
            <input type="email" class="form-control" id="inputEmail" name="email">
            </div>
            </div>
            <br></br>
            
            
            <div class="form-group">
            <label class="control-label col-xs-3" >Nombre de contacto: </label>
            <div class="col-xs-9">
            <input type="text" class="form-control" name="contacto">
            </div>
            </div>
            <br></br>
            <div class="form-group">
            <label class="control-label col-xs-3" >Password: *</label>
            <div class="col-xs-9">
            <input type="password" class="form-control" name="pass">
            </div>
            </div>
            <br></br>
            
            </div>
            </div>
            <br></br>
           
            <br>
            
            <div class="form-group">
            <div class="col-xs-offset-3 col-xs-9">
            <input type="submit" class="btn btn-primary" value="Enviar ">
         
            </div>
            
            
            </div>
            
            
            
            
            </form>
            
            
            
            
            
            
            
            
            </table>
            
            </div>
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