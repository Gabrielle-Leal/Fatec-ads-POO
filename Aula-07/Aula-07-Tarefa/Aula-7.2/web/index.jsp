<%-- 
    Document   : newjs
    Created on : 20 de set. de 2021, 17:36:09
    Author     : Gabi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String error = null;
    String sessionNumber = null;
    try {
        if (session.getAttribute("number") != null) {
            sessionNumber = (String) session.getAttribute("number");
        }
    } catch (Exception ex) {
        error = ex.getMessage();
    }

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>início</title>
        <style>

            body {
                margin: 0;
                background: linear-gradient(45deg, #49a09d, #5f2c82);
                font-family: sans-serif;
                font-weight: 100;
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                height: 100vh;
                gap: 5px; 
            }
            
            input[type="submit"]{
                background-color: rgba(255,255,255,0.5);
                padding: 7px;
                border-radius: 5px;
                box-shadow: 6px 7px 14px 0px black;
                border: none;
            }
            input[type="submit"]:active{
                padding: 7px;
                border-radius: 5px;
                box-shadow: 1px 3px 14px 0px black;
                border: none;
            }
            
            input[type="submit"]:hover{
                padding: 7px;
                border-radius: 5px;
                box-shadow: 3px 5px 14px 0px black;
                border: none;
            }

            table {

                background-color: rgba(255,255,255,0.5);
                box-shadow: 0 0 20px rgb(0 0 0 / 10%);
                padding: 10px;
                border-radius: 5px;
                margin: 0 auto;

            }
            table tr td:hover{
                background-color: rgba(255,255,255,0.5);
                box-shadow: 0 0 20px rgb(0 0 0 / 10%);
                transition: all .5s;
                transform: rotateX(360deg) translate3d(10px,10px,10px);
            }
            td {
                text-align: center;
                padding: 5px;
            }


        </style>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"  %>

        <form method="post">
            <h2>Formulário</h2>
            <% if (authUserName == null) {%>
            Login: <input type="text" name="name"/>
            Senha: <input type="text" name="senha"/>
            <input type="submit" name="auth-login" value="Login"/>
            <%} else {%>
            Bem Vindo, <%= authUserName%>
            <input type="submit" name="auth-logout" value="Logout"/>
            <%}%>
        </form>
        <%if (sessionNumber != null) {%>
        <div><%= sessionNumber%></div>
        <%}%>

        <% if (authUserName != null) {%>
        <%for (int numero = 0; numero <= 0; numero++) {%>



        <div class="number">
            <table>
                <td>Numeros aleatorios:</td>  
                <%for (int i = 0; i < 6; i++) {%>
                <tr>

                    <td>
                        <%=(int) (Math.random() * 100)%>
                    </td>
                </tr>
                <%}%>
            </table>
        </div>

        <%}%>
        <%} else {%>


        <%}%>
    </body>
</html>
