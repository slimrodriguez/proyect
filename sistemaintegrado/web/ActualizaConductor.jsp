

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

              <%
                           
                    if(Integer.parseInt(request.getParameter("idconductor"))!=0 && request.getParameter("nombre")!=null && request.getParameter("apellido") != null
                    && request.getParameter("cedula") != null && request.getParameter("direccion") != null
                    && request.getParameter("telefono") != null && request.getParameter("celular") != null
                    && request.getParameter("categoria") != null && request.getParameter("vencimiento") != null){

                    session.setAttribute("idconductor", Integer.parseInt(request.getParameter("idconductor")));
                           
               %>

      <div class="container" style="margin-top: 50px;">
        <div class="row">
            <div class="col-lg-4 col-lg-offset-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">ACTUALIZACION</h3>
                    </div>

                    <div class="panel-body">
                        <form id="defaultForm" method="post" action="ActualizarConductor">
                            <div class="form-group">
                                Nombre: <input class="form-control" type="text" name="nombre" value="<%=request.getParameter("nombre")%>"/>
                                        <input class="form-control" type="hidden" name="idconductor" value="<%=request.getParameter("idconductor")%>"/>
                            </div>

                            <div class="form-group">
                                 Apellidos: <input class="form-control" type="text" name="apellido" value="<%=request.getParameter("apellido")%>"/>
                            </div>

                            <div class="form-group">
                                cedula: <input class="form-control" type="text" name="cedula" value="<%=request.getParameter("cedula")%>"/>
                            </div>

                            <div class="form-group">
                                Direccion: <input class="form-control" type="text" name="direccion" value="<%=request.getParameter("direccion")%>" />
                            </div>
                            
                            <div class="form-group">
                                Teléfono: <input class="form-control" type="text" name="telefono" value="<%=request.getParameter("telefono")%>" />
                            </div>
                            
                            <div class="form-group">
                               Celular: <input class="form-control" type="text" name="celular" value="<%=request.getParameter("celular")%>"/>
                            </div>
                            
                             <div class="form-group">
                               Categoria: <select class="form-control"  name="categoria" value="<%=request.getParameter("categoria")%>">
                                            <option value="seleccionar categoria">seleccionar categoria</option> 
                                            <option value="A2">A2</option> 
                                            <option value="B1" >B1</option>
                                            <option value="B2">B2</option>
                                            <option value="B3">B3</option>
                                            <option value="C1">C1</option>
                                            <option value="C2">C2</option>
                                            <option value="C3">C3</option>
                                        </select>
                            </div>
                                            
                            <div class="form-group">
                               vencimiento:<input class="form-control" type="date" name="vencimiento" value="<%=request.getParameter("vencimiento")%>"/>
                            </div>
                                            
                                          

                            <div class="form-group">
                                <input type="submit" class="btn btn-default"  value="Actualizar">
                                <button type="button" class="btn btn-default"><a href="TablaConductores.jsp">Cacelar</a></button> 
                            </div>
                            
                            
                        </form>
                            
                            <%}%>
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
