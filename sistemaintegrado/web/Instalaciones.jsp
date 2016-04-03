<%-- 
    Document   : Instalaciones1
    Created on : 2/04/2016, 03:43:22 PM
    Author     : wilson
--%>

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="stilos.css" type="text/css" />
        <title>Transportes Urimar</title>
    </head>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
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
                                        <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-th"> URIMAR</span></a>
                                    </div>
                                    <div>
                                        <ul class="nav navbar-nav">
                                            <li ><a href="Index.jsp" ><span class="glyphicon glyphicon-home"></span> Inicio</a></li>
                                            <li><a href="somos.jsp"><span class="glyphicon glyphicon-briefcase"></span> Quiénes Somos</a></li>
                                            <li class="active"><a href="Instalaciones.jsp"><span class="glyphicon glyphicon-globe"></span> Instalaciones</a></li>
                                            <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-info-sign"></span> Nuestros Servicios<span class="caret"></span></a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="Granel.jsp">Trasnporte a Granel</a></li>
                                                    <li><a href="Contenedor.jsp">Transporte Contenedorizada</a></li>

                                                </ul>
                                            <li><a href="contacto.jsp"><span class="glyphicon glyphicon-envelope"></span> Contáctenos</a></li>

                                        </ul>
                                    </div>

                                    <div>
                                        <form action="" class="navbar-form navbar-right">
                                            <div class="form-group">
                                                <input type="text" class="form-control" placeholder="Buscar...">
                                            </div>

                                            <button class="btn btn-default" top="5"><span class="glyphicon glyphicon-search"></span></button>
                                            <a href="login.jsp"><button type="button" class="btn btn-default"><span class="glyphicon glyphicon-user"> Login</span></button></a>

                                        </form>



                                    </div>
                                </div>
                            </nav>	

                        </div>
                    </div>

                    <!---Contenido de la pagina---->


                    <div class="container-fluid"; style="width:800px">
                        <div class="row">
                            <div class="col-md-12">
                                <h1 class="text-center" style="color:red">
                                    INSTALACIONES
                                </h1>
                                <center>
                                    <div class="media well">

                                        <a href="#" class="pull-center" > <img alt="instalaciones" class="img-responsive" src="img/in.jpg" class="media-object" width="650px"/></a>
                                        <div class="media-body">
                                            <h4>
                                                <div>
                                                    <br><br>
                                                    <p class="text-justify" class="text-responsive">Parqueadero, patio de maniobras (Aproximadamente 7.700 mts2), cárcamo de lavado, guaje,
                                                        taller de reparaciones menores con autosuficiencia en tanqueo de combustible, cabina para pintura al horno, reparaciones de tanques, 
                                                        almacén de repuestos e insumos para la flota, además en estas instalaciones se encuentra el centro administrativo de propiedad total de la empresa, 
                                                        ubicado en la calle 80 #65-145, en la ciudad de Medellín. </p></div></h4> <br><br><br>

                                            <img alt="instalaciones" class="img-responsive" src="img/taller.jpg" class="media-object" width="500px"/></a>

                                            <h4>
                                                <div>
                                                    <br><br>
                                                    <p class="text-justify" class="text-responsive">Los equipos de lavado: Caldera de vapor 20 BHP, Hidro lavadoras  de alta presión (3000 lbs), 
                                                        pozo propio de agua, nos permite garantizar un óptimo sistema de limpieza de nuestros tanques, lo que beneficia directamente a nuestros clientes,
                                                        siendo prueba de esto el hecho de no haber registrado hasta la fecha ninguna contaminación.
                                                        <br><br>
                                                        Contamos igualmente con un parque automotor de entera propiedad de la empresa, lo que permite garantizar su disponibilidad, control, asignación y manejo; 
                                                        compuesto como sigue:
                                                        <br><br>
                                                        ? 122 Cabezotes (tractomulas), para 35 toneladas
                                                        <br>
                                                        ? 130 Tanques en Acero Inoxidable hasta 11.000 galones.
                                                        <br>
                                                        ? 6 Vehículos doble troque para 18 toneladas con tanque en acero inoxidable.
                                                        <br>
                                                        ? 9 Vehículos sencillos para 10 toneladas: 10 con tanque en acero inoxidable y 1 en lámina 
                                                        negra.
                                                    </p></div></h4> <br><br><br>



                                        </div>
                                    </div>
                            </div>			
                        </div>
                    </div>
                    <!---footer------>			
                    <div class="row">
                        <div class="col-md-12">
                            <img id="footer" alt="Bootstrap Image Preview" src="img/footer.png">
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
