<html>
    <head>
        <%@ page import="java.io.*,java.sql.*,conn.config"%>
    </head>
    <body>
        <%
            HttpSession session1 = request.getSession(false);
            String name = (String)session1.getAttribute("username");
            config conn = new config();
            conn.connect();
            Statement st = conn.con.createStatement();
            ResultSet result = st.executeQuery("Select * from branch where branchowner = '"+name+"';");
            if(result.next()){
                String branchname = result.getString("branchname");
                String owner = result.getString("branchowner");
                String location = result.getString("location");
                int id = result.getInt("branchid");
                session1.setAttribute("branchid",id);
        %>
        <table>
        <tr>
            <td><label>Name:</label></td><td><span><%=owner%></td>
        </tr>
        <tr>
            <td><label>Branch Name:</label></td><td><span><%=branchname%></td>
        </tr>
        <tr>
            <td><label>Branch Id:</label></td><td><span><%=id%></td>
        </tr>
        <tr>
            <td><label>Branch Location:</label></td><td><span><%=location%></td>
        </tr>
        </table>
        <a href="upload.jsp"> add bikes </a>
        <a href="remove.jsp">remove bikes</a>
        <a href="checkbikes.jsp">check returns</a>
        <%}else{%>
        <a href="branch.jsp"> register a branch </a>
        <%}%>
        <a href="viewer.jsp">view bikes</a>
        <a href="adminregister.jsp">admin register</a>
    </body>
</html>