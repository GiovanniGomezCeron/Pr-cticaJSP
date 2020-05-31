<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar datos </title>
        <link rel="stylesheet" href="Css/bootstrap.css">
        <link rel="stylesheet" href="Css/style.css">
        <meta charset="UTF-8">
    </head>
    <body>
        <nav class="bg-orange">
            <ul class="nav ">
                <li class="nav-item m-3"><a href="index.jsp" class=" text-light nav-link"><img src="img/nuevo-usuario.svg" class="icon"/>Ingresar</a></li>         
                <li class="nav-item m-3"><a href="mostrartodo.jsp" class=" text-light nav-link"><img src="img/listed-items_icon-icons.com_53953.svg" class="icon"/>Consultar</a></li>                         
            </ul>
        </nav>
        <h1 >Editar Registro</h1>
        <%
            String dui = request.getParameter("Dui");
            String nombre = request.getParameter("nombre");
            String apellido = request.getParameter("apellido");
            if (nombre != null) {
                out.print("<form action='Editar.do' method='POST' class='form-check  w-25 bg-blue container text-center formulario rounded formulario'>"
                        + "<label class='text-light'>Num Dui"
                        + "<input type='text' value='" + dui + "'disabled class='form-text'/></label>"
                        + "<label class='text-light'>Nombre:"
                        + "<input type='text'name='Nombre' class='form-text' value='" + nombre + "'/> </label>"
                        + "<label class='text-light'>Apellido: "
                        + "<input type='text' name='Apellido' class='m-1 form-text' value='" + apellido + "'/></label>"
                        + "<input type='hidden' value='" + dui + "' name='Dui'/>"
                        + "<input type='submit' value='Cambiar datos' class='btn btn-warning m-2 text-light'>"
                        + "</form>");
            }
            else{
                request.getRequestDispatcher("mostrar.do").forward(request,response);
            }
        %>  
    </body>
</html>
