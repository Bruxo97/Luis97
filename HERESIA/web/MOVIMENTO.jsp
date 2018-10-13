<%-- 
    Document   : MOVIMENTO
    Created on : 13/10/2018, 18:24:04
    Author     : Infoworld
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
        <title>Movimento</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
    <body>
<div class="container">
    <form action="MIVIMENTAR" method="post">
            <h1>Movimento Bancário</h1> 
              <div class="col-md-2">
            <p>Conta:<input type="text" name="conta" class="form-control" /> </p>
            
            <p>Cpf:<input type="text" name="cpf" class="form-control" /></p>
            
            <p>Valor:<input type="text" name="valor" class="form-control" /></p>
          
            <p><input type="submit" value="Enviar" class="btn btn-default" /></p>
        </form>
</div>
            </div>
    </body>
</html>
