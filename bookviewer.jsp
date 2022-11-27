<html>
    <head>
    <link rel="stylesheet" href="index.css">
    </head>
    <body style="background-color:grey;">
    <jsp:include page="header.jsp" />
    <%@ page import="java.io.*,java.util.*, java.sql.*,conn.config" %>
    <% 
        HttpSession session1 = request.getSession(false);
        config conn = new config();
        conn.connect();
        //Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online","root","");
        String email = (String)session1.getAttribute("email");
        String s="Select * from customer where email='"+email+"' order by bikeid";
        Statement st= conn.con.createStatement();
         ResultSet result=st.executeQuery(s);
         while(result.next()){
            int bikeid = result.getInt("bikeid");
            String datefrom = result.getString("datefrom");
            String dateto = result.getString("dateto");
            String amount = result.getString("amount");
            String fplace = result.getString("from_place");
            String tplace = result.getString("to_place");
            String payment = result.getString("paystatus");
            String returns = result.getString("returnstatus");
    %>

    <div class="card">
        <h1><%=email %></h1>
        <table>
          <tr>
                <td><span>bikeid:</span></td>
                <td><span><%=bikeid%></span></td>
          </tr>
          <tr>
                <td><span>datefrom:</span>
                <td><span> <%=datefrom%></span></td>
          </tr>
          <tr>
                <td><span>dateto: </span>
                <td><span><%=dateto%></span></td>
          </tr>
          <tr>
                <td><span>amount:</span>
                <td><span> <%=amount%></span></td>
          </tr>
          <tr>
                <td><span>from:</span>
                <td><span> <%=fplace%></span></td>
          </tr>
          <tr>
                <td><span>to:</span>
                <td><span> <%=tplace%></span></td>
          </tr>
          <tr>
                <td><span>payment:</span>
                <td><span> <%=payment%></span></td>
          </tr>
          <tr>
                <td><span>return status:</span>
                <td><span> <%=returns%></span></td>
          </tr>
        </table>
        <button style="margin-left:20%; width:70px; height:30px;"><a href="bookviewer.jsp?bikeid=<%=bikeid%>&email=<%=email%>">Cancel Order</a></button>
      </div>

    <%}%>


    <%
        if(request.getParameter("bikeid")!= null && request.getParameter("email")!= null){
            String bikeid = request.getParameter("bikeid");
            int rows1 = st.executeUpdate("delete from customer where bikeid="+bikeid+" and email= '"+email+"' ");
        }
    %>