<html>
    
    <%@ page import="java.io.*, java.sql.*,conn.config" %>

    <% 
        config conn = new config();
        conn.connect();
        //Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online","root","");
        String s="Select * from bike";
        Statement st= conn.con.createStatement();
         ResultSet result=st.executeQuery(s);
         while(result.next()){
            String name = result.getString("bikename");
            String id = result.getString("bikeid");
            String img = result.getString("image");
            String count = result.getString("count");
            String price = result.getString("price");
            int branchid = result.getInt("branchid");
            String s1 = "select * from branch where branchid = "+branchid+"; ";
            ResultSet result1 = st.executeQuery(s1);
            if(result1.next()){
              String branchname = result1.getString("branchname");
              String location = result1.getString("location");
              String area = result1.getString("area");
              String status = result1.getString("status"); 
    %>
<div class="wrapper">
    <div class="product-img">
      <img src="data:image/jpeg;base64,<%=img%> " height="200" width="200">
      <label>Branch name:</label><span style="color:red"><%=branchname%></span><br>
      <label>location:</label><span style="color:red"><%=location%></span><br>
      <label>area:</label><span style="color:red"><%=area%></span><br>
      <label>status:</label><span style="color:red"><%=status%></span><br>
    </div>
    <div class="product-info">
      <div class="product-text">
        <h1><%=name %></h1>
        <h2>availabe:<%=count%></h2>
        <p>Harvest Vases are a reinterpretation<br> of peeled fruits and vegetables as<br> functional objects. The surfaces<br> appear to be sliced and pulled aside,<br> allowing room for growth. </p>
      </div>
      <div class="product-price-btn">
        <p><span><%=price %></span>$</p>
        <form action="view.jsp" methos="POST">
            <input name="id<%=id%>" type="submit" value="BuyNow">
        </form>
      </div>
    </div>
  </div>
    <% }
    }conn.con.close(); %>
</html>