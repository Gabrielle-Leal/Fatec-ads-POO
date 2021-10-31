<%-- 
    Document   : data
    Created on : 25 de out. de 2021, 19:18:35
    Author     : Gabi
--%>

<%@page import="model.Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Data padrão = new Data();
    
    Data hoje = new Data();
    hoje.setDia(25);
    hoje.setMês(10);
    hoje.setAno(2021);
    
    Data gabrielleNiver = new Data(5, 3, 2001);
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data - Java OO</title>
        <style>
            
            body {
                width: 100%;
                height: 100%;
                position: absolute;
                background: linear-gradient(to bottom, #6e529d 0%,#d97b93 100%);
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
            #letra, h2, h3 {
                 
                font-weight: 300;
                line-height:2em;
                text-align: center;
                font-weight: bolder;
                font-size:25px;
                color: #FFFFFF;

                
                
            }
            
            #letras, div {
                 
                font-weight: 100;
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
        <h2>CLASSE DATA</h2>
        <h3>Data padrão da classe:</h3>
        <div><%= padrão.getDia() %>/<%= padrão.getMês() %>/<%= padrão.getAno() %></div>
        <h3>Data de hoje:</h3>
        <div><%= hoje.getData() %></div>
        <h3>Aniversário Gabrielle:</h3>
        <div><%= gabrielleNiver.getData() %></div>
    </body>
</html>