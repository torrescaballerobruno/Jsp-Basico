<%-- 
    Document   : Registro
    Created on : 2/12/2018, 11:59:34 PM
    Author     : oro
--%>

    <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
        pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Guru Registration Form</title>
    </head>
    <body>
    <h1>Registro</h1>
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
