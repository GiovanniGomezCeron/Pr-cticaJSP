<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Todos los registros</title>
        <link rel="stylesheet" href="Css/bootstrap.css">
        <link rel="stylesheet" href="Css/style.css">
        <meta charset="UTF-8">
        <meta charset="">
    </head>
    <body>
        <nav class="bg-orange">
            <ul class="nav ">
                <li class="nav-item m-3"><a href="index.jsp" class=" text-light nav-link"><img src="img/nuevo-usuario.svg" class="icon"/>Ingresar</a></li>                         
            </ul>
        </nav>
        <article class="w-50 container text-center">
            <h1>Todos los registros</h1>
            <table style="width:100%;">
                <tr>
                    <th>Dui</th>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th colspan="2">Acciones</th>
                </tr>
                <c:forEach var="listaTotal" items="${sessionScope.personas}">
                    <tr>

                        <td>${listaTotal.dui}</td>
                        <td>${listaTotal.apellidos}</td>
                        <td>${listaTotal.nombres}</td>
                        
                        <td><form action="SeccionEditar.jsp" method="POST">
                                <button class="boton editar" value="${listaTotal.dui}" name="Dui" title="Editar registro"><img src="img/pencil-striped-symbol-for-interface-edit-buttons_icon-icons.com_56782.svg" class="icon"/></button>
                                <input type="hidden" name="nombre" value="${listaTotal.apellidos}"/>
                                <input type="hidden" name="apellido" value="${listaTotal.nombres}" />
                            </form>
                        </td> 
                        <td><form action="SeccionEliminar.jsp" method="POST">
                                <button class="boton " value="${listaTotal.dui} " name="Dui" title="Eliminar registro"><img src="img/trash_bin_icon-icons.com_67981.svg" class="icon"/></button>
                                <input type="hidden" name="nombre" value="${listaTotal.apellidos}"/>
                                <input type="hidden" name="apellido" value="${listaTotal.nombres}" />
                            </form>
                        </td> 

                    </tr>
                </c:forEach>
            </table>
        </atticle>
</body>
</html>
