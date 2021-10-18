<%-- 
    Document   : gabrielle-dica-megasena
    Created on : 18 de out. de 2021, 16:31:25
    Author     : Gabi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="WEB-INF/jspf/header.jspf" %>
<!DOCTYPE html>
<%
    ArrayList<Integer> numbers = (ArrayList)session.getAttribute("auth-numbers");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <body>
        <%if (authUserName == null) {%>
        <h1>Você não tem permissão para ver esse conteúdo</h1>
        <%} else {%>
        <h1>Mega-Sena</h1>
        <table>
            <thead>
                <tr>
                    <td>Números da Sorte:</td>
                </tr>
            </thead>
            <tbody>
                <%for (int rand = 0; rand < 6; rand++) {%>
                <tr>
                    <td><%=numbers.get(rand)%></td>
                </tr>
                <%}%>
            </tbody>


        </table>


        <%}%>
    </body>
</html>
