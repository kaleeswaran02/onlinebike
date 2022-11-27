package conn;
import java.sql.*;
public class config {
    public Connection con = null;
    public void connect() throws SQLException{
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online","root","Prasanna@2002");
    }
    
    public void close()throws SQLException{
        con.close();
    }
}
