<%-- 
    Document   : ActualizaUsuario
    Created on : 10-abr-2016, 21:09:22
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
    <link rel="stylesheet" href="css/stilos.css" type="text/css" />
    <link rel="stylesheet" href="stilos.css" type="text/css" />
    
    
   <body>
       
        <% HttpSession sesion = request.getSession();
    
     String usu= sesion.getAttribute("nombre").toString();
             
          
             %>
             
         <div class="row">
                <div class="col-md-12">
                    <img id="logo" alt="Trasportes Urimar" src="img/banner4.jpg" width="100%" height="100%">
                    <div class="row">
                        <div class="col-md-12"></div>
                        
                    </div>    
                </div> 
          </div> 


       <div class="container" style="margin-top: 50px;">
        <div class="row">
            <div class="col-lg-4 col-lg-offset-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">ACTUALIZACION</h3>
                    </div>

                     <%
                                            
                        if(Integer.parseInt(request.getParameter("idusuarios"))!=0 && request.getParameter("id")!=null && request.getParameter("usuario") != null
                           && request.getParameter("nombre") != null && request.getParameter("rol") != null
                           && request.getParameter("pss")!=null){ 
                        }

                    %>
                    
                    <div class="panel-body">
                        <form id="defaultForm" method="post" action="ActualizarUsuario">
                            <div class="form-group">
                                NICK <input type="text" class="form-control" id="inputEmail" placeholder="usuario" name="usuario" value="<%=request.getParameter("usuario")%>" required><br>

                            </div>

                            <div class="form-group">
                                NOMBRE COMPLETO<input type="text" class="form-control" id="inputPassword" placeholder="nombre" name="nombre"  value="<%=request.getParameter("nombre")%>" required><br>
                            </div>

                            <div class="form-group">
                                CONTRASEÑA<input type="text" class="form-control"  value="<%=request.getParameter("pss")%>" ><br>
                            </div>

                            <div class="form-group">
                               ROL ANTERIOR <input type="text" class="form-control"  value="<%=request.getParameter("rol")%>" disabled><br>
                            </div>
                            
                            <div class="form-group">
                               <label >NUEVO ROL:</label><br>
                                                    
                                                          
                                                        <select name="rol">
                                                            <option value="Admin">--Administrador--</option> 
                                                            <option value="Asistente">--Asistente--</option> 
                                                            <option value="cliente">--Cliente--</option>
                                                            <option value="jefe">-Jefe Departamento-</option>

                                                        </select><br>
                                                    
                            </div>

                            
                             <input type="hidden" name="txtopcion" value="1">
                                                     <input type="hidden"  name="idusuarios" value="<%=request.getParameter("idusuarios")%>">
                            
                                                     
                            </br>
                            
                            
                        <div class="form-group">



                            
                                <input type="submit" class="btn btn-primary" value="Actualizar">
                                <button type="button" class="btn btn-default"><a href="ListaUsuarios.jsp">Cancelar</a></button>
                            


                        </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
<br>
<br>
<br>
<br>
<div class="row">
                <div class="col-md-12">
                    <img id="footer"  src="img/footer.png">
                </div>
            </div>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/validarEmpresa.js"></script>
				</div>
				<div class="col-md-3">
				</div>
			</div>
		</div>
	</div>
</div>                          
         
   </body>
</html>