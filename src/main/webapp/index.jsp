<%-- 
    Document   : index
    Created on : 11/10/2022, 15:17:44
    Author     : joell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <!--Inclusão do head-->
    <jsp:include page="head.html"></jsp:include>
    
    <body>
        <!--Inclusão do cabeçalho-->
    <jsp:include page="header.html"></jsp:include>
    <main>
        <h1>Preencha o formulário:</h1>
           <form action="sayhello.jsp" method="post">
           <br>Idioma preferido: <input type="radio" name="lang" value="pt" checked> Português
           <input type="radio" name="lang" value="en"> Inglês
           <input type="radio" name="lang" value="fr"> Francês
           <input type="radio" name="lang" value="de"> Alemão<br><br>
           Nome: <input type="text" name="nome"/><br><br>
           
           <label for="text">Que horas são? (Se você não responder nada, será definido de forma automática)</label>
           <br><input type="text" name="hour"/> <br><br>
           <input type="submit" value="Cumprimentar"/>
        </form>
    </main>
    <!-- Inclusão do rodapé -->
    <jsp:include page="footer.html"></jsp:include>
    </body>
</html>
