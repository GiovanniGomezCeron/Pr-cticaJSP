<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registros</h1>
        
        <c:forEach var="listaTotal" items="${sessionScope.personas}">
            ${listaTotal.dui}</br>
            ${listaTotal.apellido} </br>
            ${listaTotal.nombre}</br>
            
        </c:forEach>
            
    </body>
</html>
