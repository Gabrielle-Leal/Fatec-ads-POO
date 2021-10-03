<%-- 
    Document   : gabrielle-dica-megasena
    Created on : 3 de out. de 2021, 14:26:04
    Author     : Gabi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="WEB-INF/jspf/header.jspf" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mega-sena</title>
        <style>

           @charset "UTF-8";
            @import url(https://fonts.googleapis.com/css?family=Open+Sans:300,400,700);

            body {
                font-family: 'Open Sans', sans-serif;
                font-weight: 300;
                line-height: 1.42em;
                color:#A7A1AE;
                background-color:#1F2739;
            }
            form{
                width: 34%;
                display: flex;
                flex-direction: column;
                margin: 10px auto;
            }
            
            a,
            form input{
                color: #FB667A;
                background: none;
                border: none;
                border-bottom: 1px solid #FB667A;
            }
            form label{
                color: #F0;
            }
            form input:focus,
            form input:active{
                outline:none;
            }
            #botao,a{
                margin: 10px 0;
                height: 30px;
            }
            a:visited{
                text-decoration: none;
            }
            a:hover,
            #botao:hover,
            input[type=submit]:hover{
                background-color: #FFF842;
                color: #403E10;
                font-weight: bold;

                box-shadow: #7F7C21 -1px 1px, #7F7C21 -2px 2px, #7F7C21 -3px 3px, #7F7C21 -4px 4px, #7F7C21 -5px 5px, #7F7C21 -6px 6px;
                transform: translate3d(6px, -6px, 0);

                transition-delay: 0s;
                transition-duration: 0.4s;
                transition-property: all;
                transition-timing-function: line;
            }
            p{
                font-size:1em; 
                font-weight: 300;
                text-align: center;
                display: block;
                line-height:1em;
                padding-bottom: 2em;
                color: #FB667A;
                
            }
            
            p a {
                font-weight: 700;
                text-transform: uppercase;
                color: #FB667A;
                text-decoration: none;
            }
            
            h1 {
                font-size:3em; 
                font-weight: 300;
                line-height:1em;
                text-align: center;
                color: #4DC3FA;
            }

            h2 {
                font-size:1em; 
                font-weight: 300;
                text-align: center;
                display: block;
                line-height:1em;
                padding-bottom: 2em;
                color: #FB667A;
            }

            h2 a {
                font-weight: 700;
                text-transform: uppercase;
                color: #FB667A;
                text-decoration: none;
            }

            .blue { color: #185875; }
            .yellow { color: #FFF842; }

            table th h1 {
                font-weight: bold;
                font-size: 1em;
                text-align: left;
                color: #185875;
            }

            table td {
                font-weight: normal;
                font-size: 1em;
                -webkit-box-shadow: 0 2px 2px -2px #0E1119;
                -moz-box-shadow: 0 2px 2px -2px #0E1119;
                box-shadow: 0 2px 2px -2px #0E1119;
            }

            table {
                text-align: center;
                overflow: hidden;
                width: 30%;
                margin: 0 auto;
                display: table;
            }

            table td, .container th {
                padding-bottom: 2%;
                padding-top: 2%;
                padding-left:2%;  
            }

            /* Background-color of the odd rows */
            table tr:nth-child(odd) {
                background-color: #323C50;
            }

            /* Background-color of the even rows */
            table tr:nth-child(even) {
                background-color: #2C3446;
            }

            table th {
                background-color: #1F2739;
            }

            table td:first-child { color: #FB667A; }

            table tr:hover {
                background-color: #464A52;
                -webkit-box-shadow: 0 6px 6px -6px #0E1119;
                -moz-box-shadow: 0 6px 6px -6px #0E1119;
                box-shadow: 0 6px 6px -6px #0E1119;
            }

            table td:hover {
                background-color: #FFF842;
                color: #403E10;
                font-weight: bold;

                box-shadow: #7F7C21 -1px 1px, #7F7C21 -2px 2px, #7F7C21 -3px 3px, #7F7C21 -4px 4px, #7F7C21 -5px 5px, #7F7C21 -6px 6px;
                transform: translate3d(6px, -6px, 0);

                transition-delay: 0s;
                transition-duration: 0.4s;
                transition-property: all;
                transition-timing-function: line;
            }

            @media (max-width: 800px) {
                table td:nth-child(4),
                table th:nth-child(4) { display: none; }
            }
            </style>
    </head>
    <body>
        <%if (authUserName == null) {%>
        <h1>Você não tem permissão para ver esse conteúdo</h1>
        <%} else {%>
        <h1>Mega-Sena</h1>
        <%numeros = (ArrayList<Integer>) session.getAttribute("listaNumeros");%>
        <table>
            <thead>
                <tr>
                    <td>Números da Sorte:</td>
                </tr>
            </thead>
            <tbody>
                <%for (int rand = 0; rand < 6; rand++) {%>
                <tr>
                    <td><%=numeros.get(rand)%></td>
                </tr>
                <%}%>
            </tbody>


        </table>


        <%}%>
    </body>
</html>
