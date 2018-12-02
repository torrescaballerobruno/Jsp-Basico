<%-- 
    Document   : index
    Created on : 2/12/2018, 08:35:36 AM
    Author     : bruno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="Clases.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            Conexion con = new Conexion();
            con.conect();
          Connection c = null;
      try {
         Class.forName("org.postgresql.Driver");
         c = DriverManager.getConnection("jdbc:postgresql://localhost:5432/proyecto","proyecto", "12345");
      } catch (Exception e) {
         out.println(e.getClass().getName()+": "+e.getMessage());
      }
      out.println("Opened database successfully");
      
        %>
    </body>
</html>
    