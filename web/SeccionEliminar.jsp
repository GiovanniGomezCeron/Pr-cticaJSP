<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <link rel="stylesheet" href="Css/style.css">
        <link rel="stylesheet" href="Css/bootstrap.css">
        <script src="Scripts/Redireccion.js"></script>
    </head>
    <body>
        <h1>¿Desea eliminar totalmete este registro?</h1>
        <article class=" container bor w-25 rounded">
            <%String dui = request.getParameter("Dui");
                if (dui == null) {
                    request.getRequestDispatcher("mostrar.do").forward(request, response);
                }
                String nombre = request.getParameter("nombre");
                String apellido = request.getParameter("apellido");

            %>
            <article class="container">
                <ul>
                    <li class="nav-link">DUI: <%out.print(dui);%></li>
                    <li class="nav-link">Nombres: <%out.print(nombre);%></li>
                    <li class="nav-link">Apellidos: <%out.print(apellido);%></li>
                </ul>
            </article>
            <section class="container text-center w-50">
                <form action="Eliminar.do" method="POST">
                    <%out.print("<button name='Dui' value='" + dui + "' class='float-left bg-danger boton m-2  tamaño'>Si</button>");%>
                </form>
                <button  class="color boton m-2  tamaño bg-primary" onclick="eliminar()">No</button>;
            </section>
        </article>

    </body>
</html>
