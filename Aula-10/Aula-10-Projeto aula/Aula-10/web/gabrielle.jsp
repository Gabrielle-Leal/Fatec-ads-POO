<%-- 
    Document   : gabrielle
    Created on : 18 de out. de 2021, 16:30:54
    Author     : Gabi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="WEB-INF/jspf/header.jspf" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>Dados aluna</title>
    </head>
    <body>
         <%if (authUserName == null) {%>
        <h1>Você não tem permissão para ver esse conteúdo</h1>
        <%}else{%>
        <h2>Gabrielle Barros Leal Leite</h2>
        <h2>Ra:1290482012009</h2>
        <h2>Qual semestre ingressou na Fatec: 1° semestre de 2020</h2>
        <p><a href="https://github.com/Gabrielle-Leal" target="_blank">GitHub</a></p>
        <table>
            <thead>
                <tr>
                    <td colspan="5">Disciplinas:</td>
                </tr>
            </thead>
            
            <tbody>
                <tr>
                    <td>Segunda-feira</td>
                    <td>Terça-feira</td>
                    <td>Quarta-feira</td>
                    <td>Quinta-feira</td>
                    <td>Sexta-feira</td>
                </tr>
                <tr>
                    <td>Programação Orientada a Objeto</td>
                    <td>Banco de Dados</td>
                    <td>Sistemas Operacionais 2</td>
                    <td>Engenharia de Software 3</td>
                    <td>Metodologia</td>
                </tr>
                <tr>
                    <td></td>
                    <td>Sistemas Operacionais 2</td>
                    <td>Linguagem de programação-INTERNET</td>
                    <td></td>
                    <td>Inglês</td>
                </tr>   
            </tbody>
            
            
            
        </table>
        
        <%}%>
    </body>
</html>
