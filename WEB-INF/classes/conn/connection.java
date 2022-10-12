package conn;
import java.sql.*;
public class connect {
    Connection con = null;
    connect(){
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online","root","Prasanna@2002");
    }

    public void close(){
        con.close();
    }
}
