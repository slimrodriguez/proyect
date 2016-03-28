
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Controlador.ClassConex"%>
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
    <link href="stilos.css" rel="stylesheet">
    
    
          <% HttpSession sesion = request.getSession();
    
     String usu= sesion.getAttribute("nombre").toString();
             
          
             %>
        
            
    <body>

         <h1> </h1>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <img id="logo" alt="Trasportes Urimar" src="img/banner4.jpg" width="100%" height="100%">
                    <div class="row">
                        <div class="col-md-12">

                            <nav class="navbar navbar-inverse">
                                <div class="container-fluid">
                                    <div class="navbar-header">
                                        <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-user"> <%= usu %></span></a>
                                    </div>
                                    <div>
                                        <ul class="nav navbar-nav">
                                            <li><a href="SesionJefeFac.html"><span class="glyphicon glyphicon-cog"></span>Configuraciones</a></li>
                                            <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-info-sign"></span> Mod Facturacion<span class="caret"></span></a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="CrearFactura.html">Facturacion</a></li>
                                                    <li><a href="ListadoFacturas.html">Listado de Facturas</a></li>
                                                </ul>
                                            <li><a href="EstadoCartera.html"><span class="glyphicon glyphicon-briefcase"></span>Mod Cartera</a></li>
                                            <li><a href="ConsultaPedidos.jsp"><span class="glyphicon glyphicon-globe"></span>Mod Pedidos </a></li>
                                            <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-info-sign"></span>Usuarios<span class="caret"></span></a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="RegistrosGenerales.jsp">Registros</a></li>
                                                    <li><a href="ListaSolicitudes.jsp">Solicitudes</a></li>
                                                    <li><a href="ListaUsuarios.jsp">Lista usuarios</a></li>
                                                       

                                                    </div>

                                                    <div>
                                                        <form action="" class="navbar-form navbar-right">
                                                             <a href="Index.jsp">
                                                                <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-off"> CerrarSesion</span>
                                                                </button>
                                                             </a>

                                                        </form>



                                                    </div>
                                                    </div>
                                                    </nav>	

                                                    </div>
                                                    </div>
                                                    <!---Aqui va el contenido de la pagina---->
                                                    <h1>USUARIOS</h1>
                                                    <br>
                                                    <br>
                                                    
                                                    
                                                    <div class="table-responsive">
                                                    <table class="table table-hover table-condensed table-bordered">
                <thead>
                    
                <th>IDENTIFICACION</th>
                <th>USARIO</th>
                <th>NOMBRE</th>
                <th>ROL</th>
                <th>CONTRASEÑA</th>
               
                <th class="text-center">OPCIONES</th>
                </thead>
                <tbody>
                    
              <%  ClassConex con = new ClassConex();
                Connection cn = con.ObtenerConexion(); 
                
                Statement stm = cn.createStatement();
                String query = "select * from usuarios;";
                 ResultSet rs = stm.executeQuery(query);         
              %>      
                 </thead>
                <tbody>
                    <%while (rs.next()) {%>
                    <tr>
                        
                        <td> <%= rs.getString("id")%> </td>
                        <td> <%= rs.getString("usuario")%> </td>
                        <td> <%= rs.getString("nombre")%> </td>
                        <td> <%= rs.getString("rol")%> </td>
                        <td> <%= rs.getString("pss")%> </td>
                        
                        <td>   
                             <button type="button" class="btn btn-default"> <a title="Editar" href="ActualizarUsuario.jsp?idusuarios=<%= rs.getInt("idusuarios")%>&&id=<%=rs.getString("id")%>&&usuario=<%=rs.getString("usuario")%>&&nombre=<%=rs.getString("nombre")%>&&rol=<%=rs.getString("rol")%>&&pss=<%=rs.getString("pss")%>"><span class="glyphicon glyphicon-pencil"></span></a> </button>
                             <button type="button" class="btn btn-danger"> <a  title="Eliminar" href="Index.jsp" ><span class="glyphicon glyphicon-remove"></span></a> </button >
                        </td>
                        
                    </tr>   
                   <% }%>
                        
               </tbody>
            </table>
           
      </div>             


                   <br>
                   <br>
                   <br>
                   <br>
                   <br>





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
