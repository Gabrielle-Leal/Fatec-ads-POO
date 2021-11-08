<%-- 
    Document   : index
    Created on : 8 de nov. de 2021, 15:38:47
    Author     : Gabi
--%>

<%@page import="java.sql.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.Tasks"%>
<%@page import="web.DbListener"%>
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
        <title>JDBC - To-do list</title>
        <style>
            body {
                background: #e0e5ec;
            }
            h1 {
                position: relative;
                text-align: center;
                color: #353535;
                font-size: 50px;
                font-family: "Cormorant Garamond", serif;
            }
            div{
                text-align: center;
            }

            p {
                font-family: 'Lato', sans-serif;
                font-weight: 300;
                text-align: center;
                font-size: 18px;
                color: #676767;
            }
            .frame {
                width: 90%;
                margin: 40px auto;
                text-align: center;
            }
            button {
                margin: 20px;
                outline: none;
            }
            .custom-btn {
                width: 130px;
                height: 40px;
                padding: 10px 25px;
                border: 2px solid #000;
                font-family: 'Lato', sans-serif;
                font-weight: 500;
                background: transparent;
                cursor: pointer;
                transition: all 0.3s ease;
                position: relative;
                display: inline-block;
            }
            .a {
                position: relative;
                color: #000;
                z-index: 2;
                line-height: 40px;
                padding: 0;
            }
            .a:hover{
                border: none;
            }
            .a:before,
            .a:after {
                position: absolute;
                content: "";
                width: 0%;
                height: 0%;
                border: 2px solid;
                z-index: -1;
                transition: all 0.3s ease;
            }
            .a:before {
                top: 0;
                left: 0;
                border-bottom-color: transparent;
                border-right-color: transparent;
                border-top-color: #000;
                border-left-color: #000;
            }
            .a:after{
                bottom: 0;
                right: 0;
                border-top-color: transparent;
                border-left-color: transparent;
                border-bottom-color: #000;
                border-right-color: #000;
            }
            .a:hover:before,
            .a:hover:after {
                border-color: #000;
                height: 100%;
                width: 100%;
            }


        </style>
    </head>
    <body>
        <h1>JDBC - Gabrielle Leal</h1>
        <div><%= new java.util.Date()%></div>
        <h2>To-do list</h2>
        <%if (DbListener.exception != null) {%>
        <div style="color:red">
            Erro na criação do banco de dados:
            <%= DbListener.exception.getMessage()%>
        </div>
        <%}%>

        <%if (requestException != null) {%>
        <div style="color:red">
            Erro na leitura ou gravação de tarefa:
            <%= requestException.getMessage()%>
        </div>
        <%}%>
        <h3>Tarefas</h3>
        <form class="container">
            <input type="text" name="taskName"/>
            <a><input type="submit" name="add" value="Adicionar"/></a>
        </form>

        <table >
            <%for (String taskName : taskList) {%>
            <tr>
                <td><%= taskName%></td>
                <td>
                    <form class="container">
                        <input type="hidden" name="taskName" value="<%= taskName%>">
                        <a><input type="submit" name="remove" value="-"></a>
                    </form>
                </td>
            </tr>

            <%}%>
        </table>


    </body>
</html>
