<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Proceso correctamete realizados</title>
        <link rel="stylesheet" href="Css/bootstrap.css">
    </head>
    <body>
        <h1 class="text-center">El proceso se realizo Correctamente</h1>
        <article class="text-center w-25 container">
            <img src="img/smiley_icon-icons.com_51084.png" class="text-center w-50">
            <p>Redireccionando al inicio</p>
            <progress value="0" max="3" min="0" id="progreso" style="">
            </progress>
            <label id="label" class="container">3</label>
        </article>
       <script>
             var myVar=setInterval(contar, 1000);
             function contar() {
                 numero = parseInt(document.getElementById("progreso").value);
                 if(numero>1){
                     clearInterval(myVar);
                     window.location="mostrar.do";
                 }
                 document.getElementById("progreso").value = numero + 1;
                 var conteo=parseInt(document.getElementById("label").innerHTML)-1;
                 document.getElementById("label").innerHTML=conteo;
             }
         </script>
    </body>
</html>
