    <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
        pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Registro</title>
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
    <h1>Registro</h1>
    <jsp:include page = "header.jsp"/>
    <form action="Registro" method="post">
    			<table style="with: 50%">
    				<tr>
    					<td>Nombre</td>
    					<td><input type="text" name="nombre" /></td>
    				</tr>
    				<tr>
    					<td>Apellido Paterno</td>
    					<td><input type="text" name="ap_paterno" /></td>
    				</tr>
    				<tr>
    					<td>Apellido Materno</td>
    					<td><input type="text" name="ap_materno" /></td>
    				</tr>
    					<tr>
    					<td>Edad</td>
    					<td><input type="text" name="edad" /></td>
    				</tr>
    				<tr>
    					<td>Sexo</td>
    					<td><input type="text" name="sexo" /></td>
    				</tr>
    				<tr>
    					<td>Direccion</td>
    					<td><input type="text" name="direccion" /></td>
    				</tr>
                                <tr>
    					<td>E-mail</td>
    					<td><input type="text" name="email" /></td>
    				</tr>
                                <tr>
    					<td>Telefono</td>
    					<td><input type="text" name="telefono" /></td>
    				</tr>
                        </table>
    			<input type="submit" value="Submit" /></form>
    </body>
    </html>
