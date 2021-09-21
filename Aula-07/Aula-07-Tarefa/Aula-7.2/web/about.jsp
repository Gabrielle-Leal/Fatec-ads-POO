<%-- 
    Document   : about
    Created on : 20 de set. de 2021, 17:36:31
    Author     : Gabi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dados aluno</title>
        <style>
            body {
                margin: 0;
                background: linear-gradient(45deg, #49a09d, #5f2c82);
                font-family: sans-serif;
                font-weight: 100;
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: right;
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
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h1>Gabrielle Leal</h1>
        <h2>RA: 1290482012009</h2>
        <a href="https://github.com/Gabrielle-Leal" target="_blank">Link para o GitHub</a>
    </body>
</html>
