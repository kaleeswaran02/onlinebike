package conn;
import java.sql.*;
public class config {
    public Connection con = null;
    public void connect() throws SQLException{
        con=DriverManager.getConnection("jdbc:mysql://localhost:3305/online","root","admin");
    }
    
    public void close()throws SQLException{
        con.close();
    }
}
