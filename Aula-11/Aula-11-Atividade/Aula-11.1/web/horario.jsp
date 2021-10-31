<%-- 
    Document   : horario
    Created on : 25 de out. de 2021, 19:20:23
    Author     : Gabi
--%>


<%@page import="java.util.Locale"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="model.Horario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String timeStamp = new SimpleDateFormat("HH:mm:ss").format(Calendar.getInstance().getTime());
    
    Horario inicioIntervalo = new Horario();
    inicioIntervalo.hora = 16;
    inicioIntervalo.minuto = 40;
    inicioIntervalo.segundo = 00;
    
    Horario fimIntervalo = new Horario(16, 50, 00);

%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Horario - Java OO</title>
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
        <h3>Horario:</h3>
        <div><%= timeStamp%></div>
        <h3>Intervalo:</h3>
        <div><%= inicioIntervalo.getHorario()%></div>
        <div><%= fimIntervalo.getHorario()%></div>


    </body>
</html>