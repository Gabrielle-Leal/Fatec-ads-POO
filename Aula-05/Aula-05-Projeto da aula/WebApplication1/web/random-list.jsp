<%-- 
    Document   : sum
    Created on : 30 de ago. de 2021, 17:18:26
    Author     : Gabi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String errorMessage = null;
    double n=0;
    try{
        n = Double.parseDouble(request.getParameter("n"));
    
    }catch(Exception e) {
        errorMessage = "Erro ao ler paramentro n"+request.getParameter("n");
        }
    %>
<html>
    <head>
       <title>JavaEE- JSP</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>Gabrielle Leal</h1>
        <h2>RA:1290482012009</h2> 
        <h3><a href="index.html">Voltar</a></h3>
        <h3>Numerps aleatorios</h3>
        <%if(errorMessage==null){%>
        <table border="1">
            <tr>
                <th>Índice</th>
                <th>Número</th>
            </tr>
            <%for(int i=1; i<=n; i++){%>
            
            <tr>
                <td><%= 1%></td>
                <td><%= ((int) (100*Math.random())) %></td>
            </tr>   
            <%}%>
            
        </table>
        <%}else{%>
        <div style="color: red"><%= errorMessage %></div>
        <%}%>
        <hr/>
        <form action="sum.jsp">
            <input type="number" name="n" value="5"/>
            <input type="submit" value="Gerar"/>
        </form>
    </body>
</html>
