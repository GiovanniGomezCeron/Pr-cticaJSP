
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="bootstrap.css">
       
    </head>
    <body>
        <nav>
            <ul class="nav">
                <li class="nav-item m-3"><a href="mostrar.jsp" class="btn btn-secondary nav-link">Consultar</a></li>
                <li class="nav-item m-3"><a href="eliminar.jsp" class="btn btn-success nav-link">Eliminar </a></li>
                <li class="nav-item m-3"><a href="editar.jsp" class="btn btn-primary nav-link">Editar</a></li>
            </ul>
        </nav>
        <h1 style="text-align: center;color:black">Registrar persona</h1>
        
        <form action="Recibir.do" method="POST" class="form-check btn mx-auto w-25 btn-outline-danger" style="display:block;margin:0 auto;">
            Num DUI:<input type="text" name="txtDui" class="m-2" /></br>
            Apellidos:<input type="text" name="txtApellidos" class="m-2" /></br>
            Nombres:<input type="text" name="txtNombres" class="m-2"/></br>
            <input type="submit" name="" value="Registrar Persona" class="btn btn-warning" style="color:white;"/>
        </form>
        
    </body>
</html>
