<%-- 
    Document   : indexjsp
    Created on : 20 de set. de 2021, 15:34:32
    Author     : Gabi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    //Processamento do contador de requisiçoes da aplicação
    
    if(application.getAttribute("counter")==null){
        application.setAttribute("counter", 1);
    }
     int counter = (int) application.getAttribute("counter");
     application.setAttribute("counter", ++counter);

    
    //Processamento do formulario
    String context = request.getParameter("context");
    String name = request.getParameter("name");
       if(context.equals("request"))
        request.setAttribute("name", name);
       else if (context.equals("session"))
        session.setAttribute("name", name);
       else if (context.equals("application"))
        application.setAttribute("name", name);

    //Processamento das entradas das paginas
    String requestName = null;    
    String sessionName = null;    
    String applicationName = null; 
    String error = null;
    try{
        
        if(request.getAttribute("name")!=null)
            requestName = (String) request.getAttribute("name");
    }catch(Exception ex){error = ex.getMessage();}
    try{
        
        if(session.getAttribute("name")!=null)
            sessionName = (String) session.getAttribute("name");
    }catch(Exception ex){error = ex.getMessage();}
    try{
        
        if(application.getAttribute("name")!=null)
            applicationName = (String) application.getAttribute("name");
    }catch(Exception ex){error = ex.getMessage();}
    








%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ContextApp</title>
    </head>
    <body>
        <h1>ConextApp</h1>
        <h2>Indece</h2>
        <form>
            <select>
                <option value="request">Requisição</option>
                <option value="session">Seção</option>
                <option value="application">Aplicação</option>
            </select>
            Nome: <input type="text" name="name"/>
            <input type="submit" name="setName" value="Enviar"/>
        </form>
        <%if(requestName!=null)%>
        <h3>Atributo de requisição</h3>
    </body>
</html>
