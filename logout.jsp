<%
session.invalidate();
Cookie ck2=new Cookie("email","");
Cookie ck3=new Cookie("roll","");
    ck2.setMaxAge(0);
    ck3.setMaxAge(0);
    response.addCookie(ck2);
    response.addCookie(ck3);

response.sendRedirect("login.jsp");
%> 