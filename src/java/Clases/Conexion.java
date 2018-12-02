package Clases;

/**
 *
 * @author bruno
 */
import Entidades.Articulo;
import Entidades.Usuario;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Conexion {
    private Connection c = null;
    public void conect(){
          
        try {
            Class.forName("org.postgresql.Driver");
            c = DriverManager.getConnection("jdbc:postgresql://localhost:5432/proyecto", "ERPUser", "ERPUser");
        } catch (Exception e) {
            System.err.println(e.getClass().getName() + ": " + e.getMessage());
        }
    }

    public boolean insertarUsuario(Usuario usr){
        try{
            StringBuilder sb = new StringBuilder();
            if(usr.getNombre() != null){
                sb.append(" INSERT INTO usuario SELECT COALESCE(max(id)+1,1) , '").append(usr.getNombre()).append("' ,'");
                sb.append(usr.getPaterno()).append("','").append(usr.getMaterno()).append("',").append(usr.getEdad()).append(",'");
                sb.append(usr.getSexo()).append("','").append(usr.getDireccion()).append("','").append(usr.getEmail()).append("','");
                sb.append(usr.getTelefono()).append("' from usuario ");
                Statement s = c.createStatement();
                s.executeQuery(sb.toString());
                return true;
            }else{
                return false;
            }
        }catch(Exception e){
            return false;
        }
    }
    
    public boolean insertarArticulo(Articulo art){
        try{
            StringBuilder sb = new StringBuilder();

            if(art.getNombre() != null && art.getPrecio()!= null){
                
                sb.append(" INSERT INTO articulo SELECT COALESCE(max(id)+1,1) , '").append(art.getNombre()).append("' ,'");
                sb.append(art.getDescripcion()).append("',").append(art.getPrecio()).append(",").append(art.getCantidad());
                sb.append(" from articulo ");
                Statement s = c.createStatement();
                s.execute(sb.toString());
                return true;
            }else{
                return false;
            }
        }catch(Exception e){
            return false;
        }
    }

    public void eliminarArticulo(Integer id){
        try{
            StringBuilder sb = new StringBuilder();
            sb.append(" delete from articulo where id = '").append(id).append("'");
            Statement st = c.createStatement();
            st.executeQuery(sb.toString());
        }catch(Exception e){}
    }

    public void eliminarUsuario(Integer id){
        try{
            StringBuilder sb = new StringBuilder();
            sb.append(" delete from usuario where id = '").append(id).append("'");
            Statement st = c.createStatement();
            st.executeQuery(sb.toString());
        }catch(Exception e){}
    }

    public void actualizarUsuario(Usuario usr){
        try{
            StringBuilder sb = new StringBuilder();
            sb.append(" update usuario SET nombre = '").append(usr.getNombre()).append("', ");
            sb.append(" ap_paterno = '").append(usr.getPaterno()).append("', ");
            sb.append(" ap_materno = '").append(usr.getMaterno()).append("', ");
            sb.append(" edad = '").append(usr.getEdad()).append("', ");
            sb.append(" sexo = '").append(usr.getSexo()).append("', ");
            sb.append(" direccion = '").append(usr.getDireccion()).append("', ");
            sb.append(" email = '").append(usr.getEmail()).append("', ");
            sb.append(" telefono = '").append(usr.getTelefono()).append("' ");
            sb.append(" where id = '").append(usr.getId()).append("'");

            Statement st = c.createStatement();
            st.executeUpdate(st.toString());
        }catch(Exception e){}
    }

    public void actualizarArticulo(Articulo art){
        try{
            StringBuilder sb = new StringBuilder();
            sb.append(" update articulo set nombre = '").append(art.getNombre()).append("', ");
            sb.append(" descripcion = '").append(art.getDescripcion()).append("', ");
            sb.append(" precio = '").append(art.getPrecio().toString()).append("', ");
            sb.append(" cantidad = '").append(art.getCantidad()).append("', ");
            sb.append(" where id = '").append(art.getId()).append("' ");             

            Statement st = c.createStatement();
            st.executeUpdate(st.toString());
        }catch(Exception e){}
    }

    public List buscarUsuarios(){
        return bU(false);
    }

    public List bU(boolean filtrado){
        List<Usuario> list = new ArrayList();
        try{
            StringBuilder sb = new StringBuilder();
            sb.append(" SELECT * FROM usuario ");
            if(filtrado)
                sb.append(" order by nombre ");
            Statement st = c.createStatement();
            ResultSet rs = st.executeQuery(sb.toString());
            while(rs.next()){
                Usuario usr = new Usuario();
                usr.setId(rs.getInt("id"));
                usr.setNombre(rs.getString("nombre"));
                usr.setPaterno(rs.getString("ap_paterno"));
                usr.setMaterno(rs.getString("ap_materno"));
                usr.setEdad(rs.getInt("edad"));
                usr.setSexo(rs.getString("sexo"));
                usr.setDireccion(rs.getString("direccion"));
                usr.setEmail(rs.getString("email"));
                usr.setTelefono(rs.getString("telefono"));
                list.add(usr);
            }
        }catch(Exception e){}
        return list;
    }

    public List buscarUsuariosOrdenados(){
        return bU(true);
    }

    public List buscarArticulosOrdenados(){
        return bA(true);
    }

    public List buscarArticulos(){
        return bA(false);
    }

    public List bA(boolean filtrado){
        List<Articulo> list = new ArrayList();
        try{
            StringBuilder sb = new StringBuilder();
            sb.append(" SELECT * FROM articulo ");
            if(filtrado)
                sb.append(" order by nombre ");
            Statement st = c.createStatement();
            ResultSet rs = st.executeQuery(sb.toString());
            while(rs.next()){
                Articulo art = new Articulo();
                art.setId(rs.getInt("id"));
                art.setNombre(rs.getString("nombre"));
                art.setDescripcion(rs.getString("descripcion"));
                art.setPrecio(rs.getBigDecimal("precio"));
                art.setCantidad(rs.getInt("cantidad"));
                list.add(art);
            }
        }catch(Exception e){}
        return list;
    }
}