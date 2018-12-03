<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
 
<html>
   <head>
      <title>SELECT Operation</title>
   </head>

   <body>
      <jsp:include page = "header.jsp"/>
      <sql:setDataSource var = "snapshot" driver = "org.postgresql.Driver"
         url = "jdbc:postgresql://localhost:5432/proyecto"
         user = "proyecto"  password = "12345"/>
 
      <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * from articulo;
      </sql:query>
 
      <table border = "1" width = "100%">
         <tr>
            <th>Nombre</th>
            <th>Descripcion</th>
            <th>Precio</th>
            <th>Cantidad</th>
            <th>Editar</th>
            <th>Eliminar</th>
         </tr>
         
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><c:out value = "${row.nombre}"/></td>
               <td><c:out value = "${row.descripcion}"/></td>
               <td><c:out value = "${row.precio}"/></td>
               <td><c:out value = "${row.cantidad}"/></td>
               <td><button value="Editar_${row.id}">Editar</button></td>
               <td><button value="Eliminar_${row.id}">Eliminar</button></td>
            </tr>
         </c:forEach>
      </table>
 
   </body>
</html>