<%-- 
    Document   : tabuada
    Created on : 30 de ago. de 2021, 18:29:45
    Author     : Gabi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String errorMessage = null;
    double n=10;
    try{
        n = Double.parseDouble(request.getParameter("n"));
    
    }catch(Exception e) {
        errorMessage = "Erro ao ler paramentro n"+request.getParameter("n");
    }
    %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Gabrielle Leal</h1>
        <h2>RA:1290482012009</h2> 
        <h3><a href="index.html">Voltar</a></h3>
        <h3>Tabuada</h3>
        <%if(errorMessage==null){%>
        <table>
             <%for(int i=1; i<=10; i++){%>
             <tr>
                 <td><%=  i %></td>
                 <td>x</td>
                 <td><%= n %></td>
                 <td>=</td>
                 <td><%= ((int) (n*i)) %></td>
             </tr>
             <% } %>
        </table>
        <%}else{%>
        <div style="color: red"><%= errorMessage %></div>
        <%}%>
        <hr>
        
         <form action="tabuada.jsp">
            <input type="number" name="n" value="10"/>
            <input type="submit" value="Gerar"/>
            
        </form>
    </body>
</html>
