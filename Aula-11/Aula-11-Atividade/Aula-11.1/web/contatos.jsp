<%-- 
    Document   : contatos
    Created on : 25 de out. de 2021, 19:18:44
    Author     : Gabi
--%>

<%@page import="model.Data"%>
<%@page import="model.Contato"%>
<%@page import="model.Base"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String error = null;
    try {
        if (request.getParameter("form-add") != null) {
            String nome = request.getParameter("nome");
            String telefone = request.getParameter("telefone");
            int dia = Integer.parseInt(request.getParameter("nascimento.dia"));
            int mês = Integer.parseInt(request.getParameter("nascimento.mes"));
            int ano = Integer.parseInt(request.getParameter("nascimento.ano"));
            Contato c = new Contato(nome, telefone, new Data(dia, mês, ano));
            Base.getContatosList().add(c);
            response.sendRedirect(request.getRequestURI());
        } else if (request.getParameter("form-remove") != null) {
            int index = Integer.parseInt(request.getParameter("index"));
            Base.getContatosList().remove(index);
            response.sendRedirect(request.getRequestURI());
        }
    } catch (Exception ex) {
        error = ex.getMessage();
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contatos - Java OO</title>
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
            fieldset {
                background-color: transparent;
            }

            legend {
                background-color: gray;
                color: #FFFFFF;
                padding: 5px 10px;
            }

            input {
                margin: 5px;
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

            </style>
        </head>
        <body>

            <%@include file="WEB-INF/jspf/header.jspf" %>
            <h2>CONTATOS</h2>
            <%if (error != null) {%><div style="color: red"><%= error%></div><%}%>
                <form>
                    <fieldset>
                        <legend>Novo contato</legend>
                        <a>Nome:<br/><input type="text" name="nome"/><br/></a>
                        <a>Telefone:<br/><input type="text" name="telefone"/><br/></a>
                        <a>Data de nascimento:<br/></a>
                        <input type="number" step="1" name="nascimento.dia"/>/
                        <input type="number" step="1" name="nascimento.mes"/>/
                        <input type="number" step="1" name="nascimento.ano"/>
                        <br/><br/>
                        <input type="submit" name="form-add"/>
                    </fieldset>
                </form>
                <hr/>
                <table border="1">
                    <tr>
                        <th>Nome</th>
                        <th>Telefone</th>
                        <th>Nascimento</th>
                        <th>Remoção</th>
                    </tr>
                    <%for (Contato c : Base.getContatosList()) {%>
                    <tr>
                        <td><%= c.getNome()%></td>
                        <td><%= c.getTelefone()%></td>
                        <td><%= c.getNascimento().getData()%></td>
                        <td>
                            <form>
                                <input type="submit" name="form-remove" value="Remover"/>
                                <input type="hidden" name="index" value="<%= Base.getContatosList().indexOf(c)%>"/>
                            </form>
                        </td>
                    </tr>
                    <%}%>
                </table>
            </body>
        </html>
