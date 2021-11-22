<%-- 
    Document   : index
    Created on : 22 de nov. de 2021, 15:30:42
    Author     : Gabi
--%>

<%@page import="java.sql.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.Tasks"%>
<%@page import="web.GabrielleDbListener"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Exception requestException = null;
    ArrayList<String> taskList = new ArrayList<>();
    try {
        if (request.getParameter("add") != null) {
            String taskName = request.getParameter("taskName");
            Tasks.addTask(taskName);
            response.sendRedirect(request.getRequestURI());
        }
        if (request.getParameter("remove") != null) {
            String taskName = request.getParameter("taskName");
            Tasks.removeTask(taskName);
            response.sendRedirect(request.getRequestURI());
        }
        taskList = Tasks.getTasks();

    } catch (Exception ex) {
        requestException = ex;
    }


%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
        <body>
         <%@include file="WEB-INF/jspf/header.jspf" %>
        <h1>JDBC - Gabrielle Leal</h1>
        <div><%= new java.util.Date()%></div>
        <h2>To-do list</h2>
        <%if (GabrielleDbListener.exception != null) {%>
        <div style="color:red">
            Erro na criação do banco de dados:
            <%= GabrielleDbListener.exception.getMessage()%>
        </div>
        <%}%>

        <%if (requestException != null) {%>
        <div style="color:red">
            Erro na leitura ou gravação de tarefa:
            <%= requestException.getMessage()%>
        </div>
        <%}%>
        <h3>Tarefas</h3>
        <form>
            <input type="text" name="taskName"/>
            <input type="submit" name="add" value="Adicionar"/>
        </form>

        <table >
            <%for (String taskName : taskList) {%>
            <tr>
                <td><%= taskName%></td>
                <td>
                    <form>
                        <input type="hidden" name="taskName" value="<%= taskName%>">
                        <input type="submit" name="remove" value="-">
                    </form>
                </td>
            </tr>

            <%}%>
        </table>


    </body>
    
</html>
