<%-- 
    Document   : index
    Created on : 13 de set. de 2021, 15:40:57
    Author     : Gabi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                width: 50%;
                display: flex;
                flex-direction: column;
                margin: 10px auto;
            }
            a{
                padding: 10px;
                text-decoration: unset;
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
            
            
        </style>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"%>
        <h1>Gabrielle Leal</h1>
        <h2>RA: 1290482012009</h2>
        <div style="Text-align: center">
            <h3><a href="tabela-price.jsp">Tabela Price</a></h3>
        </div>

    </body>
</html>
