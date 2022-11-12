<html>
    <head>
    <link rel="stylesheet" href="index.css">
    </head>
    <body style="background-color:grey;">
    </head>
    <jsp:include page="header.jsp" />
    <%@ page import="java.io.*,java.util.*, java.sql.*,conn.config" %>
    <body>
        <%
        HttpSession session1 = request.getSession(false);
        String username = (String)session1.getAttribute("username");
        String email = (String)session1.getAttribute("email");
        String bikeid1 = request.getParameter("bikeid");
        session1.setAttribute("bikeid",bikeid1);
        String branchid1 = request.getParameter("branchid");
        config conn = new config();
        conn.connect();
        String s="Select a.bikename, a.image, a.bikeid, a.count, a.price, a.branchid, b.branchowner, b.branchname, b.location, b.area, b.status from bike a inner join branch b on a.branchid=b.branchid where a.bikeid="+bikeid1+" ;";
        Statement st= conn.con.createStatement();
         ResultSet result=st.executeQuery(s); 
         while(result.next()){
            String bikename =   result.getString("bikename");
            String bikeid =     result.getString("bikeid");
            String image =      result.getString("image");
            String count =      result.getString("count");
            String price =      result.getString("price");
            session1.setAttribute("price",price);
            String branchid =   result.getString("branchid");
            String branchname = result.getString("branchname");
            String location =   result.getString("location");
            String area =       result.getString("area");
            String status =     result.getString("status");
            String branchowner = result.getString("branchowner");
            %>
         <div class="card">
      <img style="margin-left:7%;" src="data:image/jpeg;base64,<%=image%> " height="200" width="200" alt="bikeimg"><br>
        <h1><%=bikename %></h1>
        <table>
          <tr>
                <td><span>branchname:</span></td>
                <td><span><%=branchname%></span></td>
          </tr>
          <tr>
                <td><span>branchowner:</span>
                <td><span> <%=branchowner%></span></td>
          </tr>
          <tr>
                <td><span>location: </span>
                <td><span><%=location%></span></td>
          </tr>
          <tr>
                <td><span>area:</span>
                <td><span> <%=area%></span></td>
          </tr>
        </table>
        <span>availabe:<%=count%></span>
                <button style="margin-left:20%; width:70px; height:30px;"><a href="book.jsp">Confirm Order</a></button>
      </div>
         <%}%>
    </body>
</html>