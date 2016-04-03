<%-- 
    Document   : EjValidador
    Created on : 29/03/2016, 05:31:58 PM
    Author     : adsi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet"></link>
    <link href="//oss.maxcdn.com/jquery.bootstrapvalidator/0.5.2/css/bootstrapValidator.min.css" rel="stylesheet"></link>
    <script src="//oss.maxcdn.com/jquery/1.11.1/jquery.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="//oss.maxcdn.com/jquery.bootstrapvalidator/0.5.3/js/bootstrapValidator.min.js"></script>
     
    
            
        
        
        <title>JSP Page</title>
    </head>
    <body>
       
        
        <div class="loginbtn" align="center" style="margin:100px;">
<button type="button" class="btn btn-default" data-toggle="modal" data-target="#loginModal">
<span class="glyphicon glyphicon-log-in"></span> Formulario de Login</button>
</div>
 
<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
<div class="modal-dialog">
	 <div class="modal-content">
		 <div class="modal-header">
			 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			 <h4 class="modal-title">Inicio de Sesión</h4>
		 </div>
 
		 <div class="modal-body">
 
			 <form id="loginForm" method="post" class="form-horizontal" action="none">
				 <div class="form-group">
					 <label class="col-md-3 control-label">Nombre de Usuario</label>
					 <div class="col-md-7">
						 <input type="text" class="form-control" name="usuario" />
					 </div>
				 </div>
				 <div class="form-group">
		 			<label class="col-md-3 control-label">Password</label>
					 <div class="col-md-7">
						 <input type="password" class="form-control" name="password" />
					 </div>
				 </div>
				 <div class="form-group">
					 <div class="col-md-5 col-md-offset-3">
						 <button type="submit" class="btn btn-default">Login</button>
					 </div>
				 </div>
			 </form>
		 </div>
	 </div>

        
        
        
        
        
    </body>
    
    <script src="txt">
        
        

    $('#loginForm').bootstrapValidator({
    	 message: 'Este valor no es valido',
    	 feedbackIcons: {
    		 valid: 'glyphicon glyphicon-ok',
    		 invalid: 'glyphicon glyphicon-remove',
    		 validating: 'glyphicon glyphicon-refresh'
    	 },
    	 fields: {
    		 usuario: {
    			 validators: {
    				 notEmpty: {
    					 message: 'El nombre de usuario es requerido'
    				 }
    			 }
    		 },
    		 password: {
    			 validators: {
    				 notEmpty: {
    					 message: 'La contraseña es requerida'
    				 }
    			 }
    		 }
    	 }
    });
        
        
    </script>
    
</html>
