<%-- 
    Document   : page1
    Created on : 13 de set. de 2021, 15:22:04
    Author     : Gabi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page 1 - Diretivas JSP</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h2>Página 1</h2>
        <h3><a href="index.jsp">Voltar</a></h3>
        <div>
            Blablabla...
        </div>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
