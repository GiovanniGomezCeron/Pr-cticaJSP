<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        

    </head>
    <body>
        <h1>Registro Correctamente</h1>
        <p>Redireccionando al inicio</p>
        <progress value="0" max="3" min="0" id="progreso" style="">
        </progress>
        <script>
            var myVar=setInterval(contar, 1000);
            function contar() {
                numero = parseInt(document.getElementById("progreso").value);
                if(numero>2){
                    clearInterval(myVar);
                    window.location="index.jsp";
                }
                document.getElementById("progreso").value = numero + 1;
            }
          
            

        </script>
    </body>
</html>
