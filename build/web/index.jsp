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
        <h1>SuperComida</h1>
        <jsp:include page = "header.jsp"/>
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
      out.println("Conexion Exitosa");
        %>
        <p>SuperComida te ofrece un amplio catalogo de alimentos que podrás disfrutar por un muy bajo costo.</p>
    </body>
</html>
    