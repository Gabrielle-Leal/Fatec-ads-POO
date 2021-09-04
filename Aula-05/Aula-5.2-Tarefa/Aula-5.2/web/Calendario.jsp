<%-- 
    Document   : Calendário
    Created on : 4 de set. de 2021, 14:22:31
    Author     : Gabi
--%>

<%@page import="java.util.Arrays"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Calendário:</h2>
        <h3><a href="index.html">Voltar</a></h3>
        <form action="Calendario.jsp">
            <input type="text" name="mes"/>
            <input type="number" name="ano"/>
            <input type="submit" value="Gerar"/>



            <style> 
                :root {
                    --teal-050: #effcf6;
                    --teal-100: #c6f7e2;
                    --teal-200: #8eedc7;
                    --teal-300: #65d6ad;
                    --teal-400: #3ebd93;
                    --teal-500: #27ab83;
                    --teal-600: #199473;
                    --teal-700: #147d64;
                    --teal-800: #0c6b58;
                    --teal-900: #014d40;

                    --blue-grey-050: #f0f4f8;
                    --blue-grey-100: #d9e2ec;
                    --blue-grey-200: #bcccdc;
                    --blue-grey-300: #9fb3c8;
                    --blue-grey-400: #829ab1;
                    --blue-grey-500: #627d98;
                    --blue-grey-600: #486581;
                    --blue-grey-700: #334e68;
                    --blue-grey-800: #243b53;
                    --blue-grey-900: #102a43;
                }

                html {
                    font-family: "Roboto", "Helvetica", "Arial", sans-serif;
                    font-size: 125%;
                    line-height: 1.4;
                    font-weight: 400;
                    color: var(--blue-grey-900);
                }

                body {
                    min-height: 100vh;
                    background: var(--blue-grey-100);
                }

                main {
                    max-width: max-content;
                    margin: 3em auto 0 auto;
                    padding: 1.5em;
                    background-color: #fff;
                    border: 2px solid var(--blue-grey-200);
                    border-radius: 8px;
                }


                .month-indicator {
                    color: var(--blue-grey-700);
                    text-align: center;
                    font-weight: 500;
                }


                .day-of-week,
                .date-grid {
                    display: grid;
                    grid-template-columns: repeat(7, 1fr);
                }


                .day-of-week {
                    margin-top: 1.25em;
                }

                .day-of-week > * {
                    font-size: 0.7em;
                    color: var(--blue-grey-400);
                    font-weight: 500;
                    letter-spacing: 0.1em;
                    font-variant: small-caps;
                    text-align: center;
                }


                .date-grid {
                    margin-top: 0.5em;
                }


                .date-grid button:first-child {
                    grid-column: 6;
                }


                .date-grid button {
                    position: relative;
                    border: 0;
                    width: 4.5ch;
                    height: 4.5ch;
                    border-radius: 50%;
                    background-color: transparent;
                    color: var(--blue-grey-600);
                }

                .date-grid button:hover,
                .date-grid button:focus {
                    outline: none;
                    background-color: var(--blue-grey-050);
                    color: var(--blue-grey-700);
                }

                .date-grid button:active,
                .date-grid button.is-selected {
                    background-color: var(--teal-100);
                    color: var(--teal-900);
                }
            </style>
        </head>
        <body>
            <main>
                <div class="calendar">
                    <div class="month-indicator">
                        <span><%=request.getParameter("mes")%></span>
                        <span><%=request.getParameter("ano")%></span>
                    </div>
                    <div class="day-of-week">
                        <div>Dom</div>
                        <div>Seg</div>
                        <div>Ter</div>
                        <div>Qua</div>
                        <div>Qui</div>
                        <div>Sex</div>
                        <div>Sab</div>
                    </div>
                    <%
                        String errorMessage = null;
                        int mes=0, ano=0;
                        String sMes ="";
                        String[] mesesNoAno ={"Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"};
                        try {
                            mes = Arrays.asList(mesesNoAno).indexOf(request.getParameter("mes"));
                            ano = Integer.parseInt(request.getParameter("ano"));

                        } catch (Exception e) {
                            errorMessage = "Erro ao ler paramentro n" + request.getParameter("n");
                        }
                    %>
              
                    <% Calendar teste = Calendar.getInstance();
                        teste.set(ano, mes, 1);
                        int primeiroDiaDaSemana = teste.get(Calendar.DAY_OF_WEEK);
                        String css = ".date-grid button:first-child {grid-column: "+primeiroDiaDaSemana+";}";%>
                    
                    <style><%=css%></style> 
                    <div class="date-grid">

                        <% 
                            int[] tamanhoDoMes = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
                            int diasNoMes = tamanhoDoMes[teste.get(Calendar.MONTH)];
                            for (int i = 1; i <= diasNoMes; i++) {%>

                        <button>
                            <time datetime="2010-02-01"><%=i%></time>
                        </button>
                        <% }%>

                    </div>
                </div>
            </main>
        </body>
</html>
