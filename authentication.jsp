<html>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Raleway:200');
body, html {
height: 100%;
margin: 0;
font-family: 'Raleway', sans-serif;
font-weight: 200;
}
body {
background-color: #8e8eea;
display: flex;
align-items: center;
justify-content: center;
flex-direction: column;
}
    </style>
    <body>
        <div class="prompt">
        <b><h3>Enter the code generated on your email to log in!</h3></b>
        </div>
        <form method="POST" action="authentication.jsp">
            <input type="text" name="otp">
            <input type="submit" value="verify" name="submit"><span id="error"></span>
        
        </form>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="app.js"></script>

<%
    if(request.getParameter("submit")!=null){
        String s = request.getParameter("otp");
        HttpSession session1 = request.getSession(false);
        int s1 = (int)session1.getAttribute("otp");
        if(Integer.valueOf(s) == s1){
            response.sendRedirect("index.jsp");
        }
        else{
             out.print("<span>Wrong otp</span>");
        }
    }
%>
<html>