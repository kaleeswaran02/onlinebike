<%
HttpSession session1 = request.getSession(false);
session1.invalidate();
response.sendRedirect("index.jsp");
%> 