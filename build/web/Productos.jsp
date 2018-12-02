<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
 
<html>
   <head>
      <title>SELECT Operation</title>
   </head>

   <body>
      <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/bd_bruno"
         user = ""  password = ""/>
 
      <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * from empleados;
      </sql:query>
 
      <table border = "1" width = "100%">
         <tr>
            <th>Emp ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Age</th>
         </tr>
         
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><c:out value = "${row.id_emp}"/></td>
               <td><c:out value = "${row.nombre}"/></td>
               <td><c:out value = "${row.ap_pat}"/></td>
               <td><c:out value = "${row.ap_mat}"/></td>
            </tr>
         </c:forEach>
      </table>
 
   </body>
</html>