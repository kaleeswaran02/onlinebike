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

public class branch extends HttpServlet{
    public void dopost(HttpServletRequest request,HttpServletResponse response)   throws ServletException, IOException {
        String name = request.getParameter("name");
        String branch = request.getParameter("branchname");
        String area = request.getParameter("area");
        String location = request.getParameter("location");
        if(name == "prasanna"){
            System.out.print("yes");
        }

    }
}
