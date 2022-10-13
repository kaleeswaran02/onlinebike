<html>
    <head>
    <%HttpSession session1 = request.getSession();
        String s = (String)session1.getAttribute("username");
    %>
    </head>
    <body>
        <form method="POST" action="branch">
            <label>user name</label>
            <input type="text" name="name" value="<%=s%>" disabled>
            <label>branch name</label>
            <input type="text" name="branchname">
            <label>area</label>
            <input type="text" name="area">
            <label>location</label>
            <input type="text" name="location">
            <input type="submit" name="submit" value="register">
        </form>
    </body>
</html>