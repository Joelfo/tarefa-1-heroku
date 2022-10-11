<%-- 
    Document   : sayhello
    Created on : 08/02/2021, 23:08:15
    Author     : viter
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <!--Inclusão do head-->
     <jsp:include page="head.html"></jsp:include>
    <body>
        <!--Inclusão do cabeçalho-->
        <jsp:include page="header.html"></jsp:include>
        
        <main> 
        <jsp:useBean id="myBean" class="hello.MessageBean"/>
        <h1>Aplicativo HelloWorld</h1>
        <% String lang = request.getParameter("lang"); %>
        <h2><jsp:setProperty name="myBean" property="lang" value="<%=lang%>"/>
        <jsp:getProperty name="myBean" property="msg"/>, <%=request.getParameter("nome")%>!</h2>
        <jsp:getProperty name="myBean" property="msg2"/> <jsp:getProperty name="myBean" property="aut"/>
        </main>
        
        <!-- Inclusão do rodapé -->
        <jsp:include page="footer.html"></jsp:include>
    </body>
</html>
