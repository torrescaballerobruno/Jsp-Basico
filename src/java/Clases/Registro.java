
package Clases;

import Entidades.Usuario;
import java.io.IOException;
 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Registro extends HttpServlet {
    private static final long serialVersionUID = 1L;
    Conexion con = null;
       
    
     protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String nombre = request.getParameter("first_name");
		String ap_paterno = request.getParameter("last_name");
		String ap_materno = request.getParameter("username");
		String sexo = request.getParameter("password");
		String edad = request.getParameter("address");
		String direccion = request.getParameter("direccion");
		String email = request.getParameter("email");
		String telefono = request.getParameter("telefono");
		
		if(nombre.isEmpty() || ap_paterno.isEmpty() || ap_materno.isEmpty() || 
				sexo.isEmpty() || edad.isEmpty() || direccion.isEmpty() || email.isEmpty() || telefono.isEmpty()) {
			RequestDispatcher req = request.getRequestDispatcher("Registro.jsp");
			req.include(request, response);
                        Usuario usr = new Usuario();
                        usr.setNombre(nombre);
                        usr.setPaterno(ap_paterno);
                        usr.setMaterno(ap_materno);
                        usr.setEmail(email);
                        usr.setEdad(Integer.parseInt(edad));
                        usr.setSexo(sexo);
                        usr.setDireccion(direccion);
                        usr.setTelefono(telefono);
                        con.insertarUsuario(usr); 
		}
		else
		{
			RequestDispatcher req = request.getRequestDispatcher("Registro_exitoso.jsp");
			req.forward(request, response);
		}
	}
}