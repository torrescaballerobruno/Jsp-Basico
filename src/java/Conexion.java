/**
 *
 * @author bruno
 */
import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {
    public void conect(){
          Connection c = null;
      try {
         Class.forName("org.postgresql.Driver");
         c = DriverManager.getConnection("jdbc:postgresql://localhost:5432/proyecto","ERPUser", "ERPUser");
      } catch (Exception e) {
         e.printStackTrace();
         System.err.println(e.getClass().getName()+": "+e.getMessage());
         System.exit(0);
      }
      System.out.println("Opened database successfully");
    }
    public static void main(String[] args) {
        Conexion cn = new Conexion();
        cn.conect();
    }
}