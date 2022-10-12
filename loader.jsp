<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.loader {
    margin-top: 200px;
  border: 16px solid #f3f3f3;
  border-radius: 50%;
  border-top: 16px solid #3498db;
  width: 120px;
  height: 120px;
  -webkit-animation: spin 2s linear infinite; /* Safari */
  animation: spin 2s linear infinite;
}

/* Safari */
@-webkit-keyframes spin {
  0% { -webkit-transform: rotate(0deg); }
  100% { -webkit-transform: rotate(360deg); }
}

@keyframes spin {
  0% { transform: rotate(0deg); }
  100% { transform: rotate(360deg); }
}
</style>
</head>
<body>
<%@ page import="java.util.*" %>
<%
Timer timer = new Timer();
timer.schedule(request.sendRedirect("index.html"), 0, 5000);
%>
<center>
<div class="loader"></div>
</center>
</body>
</html>

