<html>
    <head>
        <jsp:include page="header.jsp" />
        <%@ page import="java.text.*,java.util.*,java.time.format.DateTimeFormatter,java.time.LocalDateTime,java.io.*,java.sql.*,conn.config"%>
    </head>
    <body>
        <%
            SimpleDateFormat formatter1=new SimpleDateFormat("yyyy/mm/dd"); 
            DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/mm/dd");  
            LocalDateTime now = LocalDateTime.now();
            String s =""+ dtf.format(now);
            Date d1=formatter1.parse(s);
            HttpSession session1 = request.getSession(false);
            String username = (String)session1.getAttribute("username");
            config conn = new config();
            conn.connect();
            Statement st = conn.con.createStatement();
            ResultSet result = st.executeQuery("Select * from customer a inner join bike b on a.bikeid=b.bikeid inner join branch c on b.branchid=c.branchid where c.branchowner = '"+username+"' ");
            if(result.next()){
                int id = result.getInt("customerid");
                String email = result.getString("email");
                String bikename = result.getString("bikename");
                String datefrom = result.getString("datefrom");
                String dateto = result.getString("dateto");
                int amount = result.getInt("amount");
                String paystatus = result.getString("paystatus");
                String returnstatus = result.getString("returnstatus");
                String branchname = result.getString("branchname");
                int fine = 0;
                Date d2=formatter1.parse(dateto);;  
        %>
            <div class="card">
        <h1><%=bikename %></h1>
        <table>
          <tr>
                <td><span>branchname:</span></td>
                <td><span><%=branchname%></span></td>
          </tr>
          <tr>
                <td><span>Customer email:</span>
                <td><span> <%=email%></span></td>
          </tr>
          <tr>
                <td><span>datefrom: </span>
                <td><span><%=datefrom%></span></td>
          </tr>
          <tr>
                <td><span>dateto:</span>
                <td><span> <%=dateto%></span></td>
          </tr>
           <tr>
                <td><span>paystatus:</span>
                <td><span> <%=paystatus%></span></td>
          </tr>
           <tr>
                <td><span>returnstatus:</span>
                <td><span> <%=returnstatus%></span></td>
          </tr>
        </table><%
        if(d1.compareTo(d2)==1){
            fine = 200;
        }
        else if(d1.compareTo(d2)>1 && d1.compareTo(d2)>4){
            fine = 500;
        }
        else if(d1.compareTo(d2)>3){
            fine = amount;
        }
        %>
        <span>fees:<%=amount%></span>
        <span>fine:<%=fine%></span>
        <span>Total:<%=amount+fine%></span>
                <button style="margin-left:20%; width:70px; height:30px;"><a href="adminbooks.jsp?st=0&cid=<%=customerid%>">Advance Paid</a></button>
                <button style="margin-left:20%; width:70px; height:30px;"><a href="adminbooks.jsp?st=1&cid=<%=customerid%>">Complete payment</a></button>
                <button style="margin-left:20%; width:70px; height:30px;"><a href="adminbooks.jsp?st=2&cid=<%=customerid%>">Complete return</a></button>
      </div>
        <%}%>


        <%
            if(request.getParameter("st")!=null){
                int st = request.getParameter("st");
                if(st==1){
                    int n = request.getParameter("cid");
                    ResultSet result = st.executeQuery("Select * from customer where customerid = "+n+" ");
                    if(result.getString("returnstatus").equals("Completed")){
                        int rows1 = st.executeUpdate("update customer set paystatus = 'Paid' where customerid = "+cid+" ");
                        if(rows1 > 0){
                            out.print("<script>alert('payment status updated for customer "+cid+"');</script>")
                        }
                    }
                    else{
                         out.print("<script>alert('Payment can be completed only after returning');</script>")
                    }
                }
                else if(st == 2){
                    int n = request.getParameter("cid");
                    ResultSet result = st.executeQuery("Select * from customer where customerid = "+n+" ");
                    if(result.getString("advance").equals("Paid")){
                        int rows1 = st.executeUpdate("update customer set paystatus = 'Paid' where customerid = "+cid+" ");
                        if(rows1 > 0){
                            out.print("<script>alert('payment status updated for customer "+cid+"');</script>")
                        }
                    }
                    else{
                         out.print("<script>alert('ask selected customer to pay advance');</script>")
                    }

                }
                else if(st == 0){
                    int n = request.getParameter("cid");
                    int rows1 = st.executeUpdate("update customer set advance = 'Paid' where customerid = "+cid+" ");
                    if(rows1 > 0){
                        out.print("<script>alert('advance updated for customer "+cid+"');</script>")
                    }
                }
            }
        %>