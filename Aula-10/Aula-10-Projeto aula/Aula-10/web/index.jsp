<%-- 
    Document   : index
    Created on : 18 de out. de 2021, 16:29:38
    Author     : Gabi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="WEB-INF/jspf/header.jspf" %>
<!DOCTYPE html>

<%
    int sessions = 0;
    ArrayList<String> listaLogados = null;
    if(application.getAttribute("listaLogados")!=null){
        listaLogados = (ArrayList)application.getAttribute("listaLogados");
        sessions = listaLogados.size();
    }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <body>
        
        <h3>Total de usuarios: <%= sessions%></h3>
            <%if(session.getAttribute("auth-username")!=null && listaLogados!=null){%>
            
        <ul>
            <%for(String name: listaLogados){%>
            <li><%= name %></li>
            <%}%>
        </ul>
        <%}%>
    </body>
</html>
