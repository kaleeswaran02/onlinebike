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
@WebServlet("/logout")


public class logout extends HttpServlet { 
    protected void doPost(HttpServletRequest request,HttpServletResponse response)   throws ServletException, IOException {


        response.setContentType("text/html");
        PrintWriter out=response.getWriter();

        Cookie ck2=new Cookie("email","");
        Cookie ck3=new Cookie("roll","");
            ck2.setMaxAge(0);
            ck3.setMaxAge(0);
            response.addCookie(ck2);
            response.addCookie(ck3);

            out.print("<p style=color:darkblue>SUCCESSFULLY LOGGED OUT</p>");
              //  response.sendRedirect("index.jsp");
                        request.getRequestDispatcher("index.jsp").include(request,response);
    }
    
}
