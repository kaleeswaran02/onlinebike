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
@WebServlet("signup")
public class signup  extends HttpServlet { 
    protected void doPost(HttpServletRequest request,HttpServletResponse response)   throws ServletException, IOException {
        String email=request.getParameter("email");
        String pass=request.getParameter("pass");
        String name=request.getParameter("name");
        String phno = request.getParameter("phno");
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();

        try{
            config conn = new config();
            conn.connect();
        //Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/online","root","123456");
           //////////////////////////
        String s1="select email from login where email='"+email+"'";

        Statement st1= conn.con.createStatement();
         ResultSet row1=st1.executeQuery(s1);
    if(row1.next()){
        out.println("<p style=color:darkblue>Account already exist <a href='login.jsp'>Login</a></p>");  
    }
    else{

    
           //////////////////////////
        
        String s="insert into login(email,password,username,phno,role) values('"+email+"','"+pass+"','"+name+"',"+phno+",'Customer')";

        Statement st= conn.con.createStatement();

             int rows=st.executeUpdate(s);
        if(rows>0){
            out.println("<p style=color:darkblue>Account Created Now <a href='login.jsp'>Login</a></p>");
            request.getRequestDispatcher("login.jsp").include(request,response);        }
        else{
            out.println("<p style=color:red>Account already exists <a href='login.jsp'>login</a> here</p>");
        }
    }
           

            conn.con.close();
    }
    // catch(SQLException e1){
    //     out.println("<p style=color:red>Already user has an account</p>"+e1);
    //     request.getRequestDispatcher("signup.jsp").include(request,response);
    // }
    catch(SQLException e){
        System.out.println(e);
        out.println("<p style=color:red>Account Not Created Try Again</p>");
    }
    
    }
    
}
