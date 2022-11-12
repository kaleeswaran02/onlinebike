<html>
    <head>
        <jsp:include page="header.jsp" />
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