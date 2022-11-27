import java.sql.*;
import javax.servlet.RequestDispatcher;  
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import conn.config;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;  
import javax.servlet.annotation.WebServlet;
import java.util.*;
import java.util.Date; 
@WebServlet("checkavail")
public class checkavail extends HttpServlet{
    public void doPost(HttpServletRequest request,HttpServletResponse response)   throws ServletException, IOException {
        HttpSession session1 = request.getSession(false);
        int bikeid = (int)session1.getAttribute("bikeid");
        String email = (String)session1.getAttribute("email");
        String src=request.getParameter("from");
        String dest = request.getParameter("to");
        String depart=request.getParameter("depart");
        String arrive = request.getParameter("arrive");

        
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();

        try{

            config conn = new config();
            //Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/online","root","123456");
                conn.connect();

                String ss="select count where bikeid='"+bikeid+"'";

                Statement st= conn.con.createStatement();
                ResultSet rs=st.executeQuery(ss);
                String count=""; 
                int less=0;
                while(rs.next()){
                    count=rs.getString(1); 
                    less=Integer.parseInt(count)-1;

                     }
                     if(Integer.parseInt(count)==0){

                        out.print("<h3 style='color:red'>bike is un available</h3>");
                     }
                     else{
                        
                String s1="update bike set count='"+less+"'";

                Statement st1= conn.con.createStatement();
                if(st1.executeUpdate(s1)!=0){
                       
               


                    


                String s="insert into reserve(email,bikeid,src,dest,depart,arrive) values ( '"+email+"' , "+bikeid+" , "+src+", '"+dest+"', '"+depart+"',"+arrive+");";
                Statement st2= conn.con.createStatement();
                if(st2.executeUpdate(s)!=0){
                        out.print("<span>Image uploaded. <a href='admin.jsp'>Home</a></span>");
                }
                else{
                    out.print("some error occoured");
                }
             }
                conn.con.close();
            }}
            catch(SQLException e){
                    System.out.print(e);
            }
       


    }
}
