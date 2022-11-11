<html>
<center>
    <body style="background-color:grey;">
        <jsp:include page="header.jsp" />
        <div style="margin-top:20%;">
        <div>
        <b><h3>Enter the code generated on your email to log in!</h3></b>
        </div>
        <form method="POST" action="authentication.jsp">
            <input type="text" name="otp">
            <input type="submit" value="verify" name="submit"><span id="error"></span>
        
        </form>

<%
    if(request.getParameter("submit")!=null){
        String s = request.getParameter("otp");
        HttpSession session1 = request.getSession();
        int s1 = (int)session1.getAttribute("otp");
        String s2 = (String)session1.getAttribute("role");
        if(Integer.valueOf(s) == s1){
            if(s2.equals("Customer"))
                response.sendRedirect("index.jsp");
            else    
                response.sendRedirect("admin.jsp");
        }
        else{
             out.print("<span>Wrong otp</span>");
        }
    }
%>
</div>
</center>
<html>