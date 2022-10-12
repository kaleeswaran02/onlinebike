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
@WebServlet("branch")
public class branch extends HttpServlet{
    public void doPost(HttpServletRequest request,HttpServletResponse response)   throws ServletException, IOException {
        PrintWriter out=response.getWriter();
        String name = request.getParameter("name");
        String branch = request.getParameter("branchname");
        String area = request.getParameter("area");
        String location = request.getParameter("location");
        
        HttpSession session1 = request.getSession(false);
        String username = (String)session1.getAttribute("username");
        config conn = new config();
        try{
            conn.connect();
            String s = "Insert into branch(branchname,area,location,status,branchowner) values( '"+branch+"' , '"+area+"' , '"+location+"' , 'Running' , '"+username+"' );";
            Statement st = conn.con.createStatement();

            int rows = st.executeUpdate(s);

            if(rows>0){
                out.print("<html><span>Branch registerd sucessfully <a href='index.jsp'>home</a></span></html>");
            }
            else{
                out.print("<span>Branch registration unsucessfull</span>");
            }
        }catch(SQLException e){
            out.print(e);
        }



    }
}
