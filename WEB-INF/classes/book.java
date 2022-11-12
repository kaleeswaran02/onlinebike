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

@WebServlet("book")
public class book extends HttpServlet {
    public void doPost(HttpServletRequest request,HttpServletResponse response)   throws ServletException, IOException {
        PrintWriter out=response.getWriter();
        HttpSession session1 = request.getSession(false);
        String from  = request.getParameter("from");
        String to  = request.getParameter("to");
        String depart = request.getParameter("depart");
        String returnd = request.getParameter("return");
        String email = (String)session1.getAttribute("email");
        String bikeid =(String) session1.getAttribute("bikeid");
        String price = (String)session1.getAttribute("price");
        try{
            config conn = new config();
            conn.connect();
            String s="insert into customer(email,bikeid,datefrom,dateto,amount,from_place,to_place) values('"+email+"',"+bikeid+",'"+depart+"','"+returnd+"',"+price+",'"+from+"','"+to+"')";
            Statement st= conn.con.createStatement();
            int rows=st.executeUpdate(s);
            if(rows>0){
                out.print("<script>alert('Successfully booked pay amount at pickup');window.location='terms.jsp'</script>");
                int rows1 = st.executeUpdate("update bike set count = count-1 where bikeid = "+bikeid+" ");
                if(rows1>0){
                    out.print("");
                }
            }
        }catch(Exception e){
            e.printStackTrace();

        }

    }
}
