<%-- 
    Document   : index
    Created on : 25 de out. de 2021, 19:16:45
    Author     : Gabi
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio-Java OO</title>
        <style>
            
            body {
                width: 100%;
                height: 100%;
                position: absolute;
                background: linear-gradient(to bottom, #6e529d 0%,#d97b93 100%);
            }
            div {
                border: 1px solid rgba(255,255,255,.1);
                width: 10em;
                height: 10em;
                transform: rotate(45deg);
                margin: 2em;
                float: left;
                background: linear-gradient(135deg, rgba(255,255,255,0.05) 0%,rgba(0,0,0,0.05) 100%); 
            }

            body,html {height:100%;overflow:hidden;}
            form{
                width: 50%;
                flex-direction: column;
                margin: 10px auto;
                text-align: center;
            }
            a{
                padding: 10px;
                text-decoration: unset;
            }
            a,
            form input{
                color: #FFFFFF;
                background: none;
                font-weight: bolder;
                font-size:20px;
                border-width: thick;
                border-bottom: 1px solid #FFFFFF;
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
            h1 {
                 
                font-weight: 300;
                line-height:1em;
                text-align: center;
                font-weight: bolder;
                font-size:30px;
                color: #FFFFFF;
                
            }
            

        </style>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h1>Inicio</h1>

    </body>
</html>
