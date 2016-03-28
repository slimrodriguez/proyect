<%-- 
    Document   : validar
    Created on : 27/03/2016, 07:46:05 PM
    Author     : adsi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="stilos.css" type="text/css" />
     <script src="//oss.maxcdn.com/jquery/1.11.1/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//oss.maxcdn.com/jquery.bootstrapvalidator/0.5.3/js/bootstrapValidator.min.js"></script>
 
<script type="text/javascript" src="validator.js"></script>   
        
        
    </head>
    <body>
        <form id="latlongForm" class="form-horizontal">
    <div class="form-group">
        <label class="col-xs-3 control-label">Latitude</label>
        <div class="col-xs-5">
            <input type="text" class="form-control" name="latitude" />
        </div>
    </div>

    <div class="form-group">
        <label class="col-xs-3 control-label">Longitude</label>
        <div class="col-xs-5">
            <input type="text" class="form-control" name="longitude" />
        </div>
    </div>
</form>

<script>
$(document).ready(function() {
    $('#latlongForm').formValidation({
        framework: 'bootstrap',
        icon: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            latitude: {
                validators: {
                    between: {
                        min: -90,
                        max: 90,
                        message: 'The latitude must be between -90.0 and 90.0'
                    }
                }
            },
            longitude: {
                validators: {
                    between: {
                        min: -180,
                        max: 180,
                        message: 'The longitude must be between -180.0 and 180.0'
                    }
                }
            }
        }
    });
});
</script>
    </body>
</html>
