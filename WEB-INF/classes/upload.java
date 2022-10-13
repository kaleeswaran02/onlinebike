import conn.config;
import java.sql.*;
import javax.servlet.RequestDispatcher;  
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;  
import javax.servlet.annotation.WebServlet;
import java.util.*;
import java.util.Date;
import javax.mail.PasswordAuthentication;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.security.*;
import org.apache.commons.codec.binary.Base32;
import org.apache.commons.codec.binary.Hex;
import de.taimos.totp.TOTP;
@WebServlet("upload")
public class upload extends HttpServlet {

    protected void doPost(HttpServletRequest request,HttpServletResponse response)   throws ServletException, IOException {
        HttpSession session1 = request.getSession(false);
        String name=request.getParameter("name");
        String count = request.getParameter("count");
        String price = request.getParameter("price");
        String img= (String)session1.getAttribute("img");
        int id = (int)session1.getAttribute("branchid");
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        try{
            config conn = new config();
        //Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/online","root","123456");
            conn.connect();
            String s="insert into bike(bikename,count,price,image,branchid) values ( '"+name+"' , "+count+" , "+price+", '"+img+"',"+id+");";
            Statement st= conn.con.createStatement();
            if(st.executeUpdate(s)!=0){
                    out.print("<span>Image uploaded. <a href='admin.jsp'>Home</a></span>");
            }
            else{
                out.print("some error occoured");
            }
            conn.con.close();
        }
        catch(SQLException e){
                System.out.print(e);
        }
    }
}
