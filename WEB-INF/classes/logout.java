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
        HttpSession session1=request.getSession(false);  
        session.invalidate();  
        request.getRequestDispatcher("index.jsp").include(request,response);
    }
    
}
