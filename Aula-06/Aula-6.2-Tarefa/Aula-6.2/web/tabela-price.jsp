<%-- 
    Document   : tabela-price
    Created on : 13 de set. de 2021, 15:46:11
    Author     : Gabi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tabela Price</title>
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
            a:hover,
            #botao:hover{
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
                text-align: left;
                overflow: hidden;
                width: 80%;
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
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h2>Tabela Price</h2>
        <h3><a href="index.jsp">Voltar</a></h3>

        <form action="tabela-price.jsp">
            <label for="n">Insira o número de parcelas</label>
            <input type="number" name="n" step="0.01"/> 
            <label for="pv">Insira o presente valor:</label>
            <input type="number" name="pv" step="0.01"/>
            <label for="i">Insira a taxa de juros:</label>
            <input type="number" name="i" step="0.01"/>
            <input type="submit" value="Calcular" id="botao"/>
        </form>

        <%double n = 0.00, pv = 0.00, pmt = 0.00, i = 0.00, p1 = 0.00, p2 = 0.00, a = 0.00, j = 0.00;
            String errorMessage = null;

            try {
                n = Double.parseDouble(request.getParameter("n"));
                pv = Double.parseDouble(request.getParameter("pv"));
                i = Double.parseDouble(request.getParameter("i"));
            } catch (Exception ex) {
                errorMessage = "Erro na leitura dos parâmetros";
            }
        %>
        <% if (pv > 0 && n > 0 && i > 0) {%>
        <table>
            <thead>
                <tr>
                    <td>Periodo</td>
                    <td>Saldo Devedor</td>
                    <td>Parcela</td>
                    <td>Juros</td>
                    <td>Amortização</td>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>0</td>
                    <td><%=pv%></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <%
                    i /= 100;

                    pmt = pv * i;
                    p1 = 1 / (Math.pow((1 + i), n));
                    p2 = 1 - p1;
                    pmt /= p2;

                    j = pv * i;
                    a = pmt - j;

                    for (int index = 1; index <= n; index++) {

                        double an = a * Math.pow((1 + i), index - 1);
                        double jn = pmt - an;
                        pv -= an;
                %>
                <tr>

                    <td>
                        <%=index%>
                    </td>
                    <td><%=String.format("%.2f", pv)%></td>
                    <td><%=String.format("%.2f", pmt)%></td>
                    <td><%=String.format("%.2f", jn)%></td>
                    <td><%=String.format("%.2f", an)%></td>

                </tr>
                <%}%>
            </tbody>
        </table>
        <%} else {%>
        <p style="text-align: center">Por favor insira valores válidos para a construção da tabela <i>price</i></p>
        <%}%>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>