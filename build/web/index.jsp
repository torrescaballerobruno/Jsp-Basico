<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="Clases.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Proyecto JSP</title>
    </head>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
 <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <style>
 body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}
 body, html {
     height: 100%;
     line-height: 1.8;
 }
 .bgimg-1 {
     background-position: center;
     background-size: cover;
     background-image: url("/w3images/mac.jpg");
     min-height: 100%;
 }
 .w3-bar .w3-button {
     padding: 16px;
 }
 body{
     color: goldenrod;
 }
 </style>
    <body>
        <h1>SuperComida</h1>
        <jsp:include page = "header.jsp"/>
         <img src="build/web/resources/img/food.jpeg" alt="Fondo Comida"> 
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
    