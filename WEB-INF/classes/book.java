import conn.config;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("book")
public class book extends HttpServlet{
    public void doPost(HttpServletRequest request,HttpServletResponse response)   throws ServletException, IOException {
        String from  = request.getParameter("from");
        String to  = request.getParameter("to");
    }
}
