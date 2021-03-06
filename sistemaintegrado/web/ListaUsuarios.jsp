
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
    <link href="css/stilos.css" rel="stylesheet">
    
    
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
                                                    <li><a href="MenuUsuarios.jsp">Tablas</a></li>
                                                    <li><a href="RegistrosGenerales.jsp">Registros</a></li>
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
                                                    
                                <div>
                               
                                <h5>
                                    <% if (request.getAttribute("mensaje") == "Registro ELIMINADO exitosamente") {%>

                                   <font color="red">${mensaje}</font> 
                                    <%} else
                                     if (request.getAttribute("mensaje") == "Registro ACTUALIZADO exitosamente"){
                                    %>
                                    <font color="green">${mensaje}</font>
                                    
                                </h5>
                              
                              
                            </div>
                                   
                              <%}%>
                                                    <div class="table-responsive">
                                                    <table class="table table-hover table table-striped">
                <thead>
                    
                <th class="success"><center>IDENTIFICACION</center></th>
                <th class="success"><center>USARIO</center></th>
                <th class="success"><center>NOMBRE</center></th>
                <th class="success"><center>ROL</center></th>
                <th class="success"><center>CONTRASEÑA</center></th>
               
                <th class="success"><center>OPCIONES</center></th>
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
                        
                        <td> <center><%= rs.getString("id")%></center> </td>
                        <td> <center><%= rs.getString("usuario")%> </center> </td>
                        <td> <center><%= rs.getString("nombre")%></center> </td>
                        <td> <center><%= rs.getString("rol")%></center> </td>
                        <td> <center><%= rs.getString("pss")%></center> </td>
                        
                        <td> 
                <center>
                            <div>
                                    <button type="button" class="btn btn-default"> <a title="Editar" href="ActualizaUsuario.jsp?idusuarios=<%= rs.getInt("idusuarios")%>&&id=<%=rs.getString("id")%>&&usuario=<%=rs.getString("usuario")%>&&nombre=<%=rs.getString("nombre")%>&&rol=<%=rs.getString("rol")%>&&pss=<%=rs.getString("pss")%>"><span class="glyphicon glyphicon-pencil"></span></a> </button>
                                     <button type="button" class="btn btn-danger" onclick="confirm('Estas seguro de Eliminar el Registro'); location.reload(false)"> <a title="Eliminar" href="EliminarUsuario?idusuarios=<%=rs.getInt("idusuarios") %>" ><span class="glyphicon glyphicon-remove"></span></a> </button>
                             </div>
                </center>       
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
