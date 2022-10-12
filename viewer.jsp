<html>
    
    <%@ page import="java.io.*, java.sql.*" %>

    <% 
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/online","root","123456");
        String s="Select id,bikename,count,price,image from images";
        Statement st= con.createStatement();
         ResultSet result=st.executeQuery(s);
         while(result.next()){
            String name = result.getString("bikename");
            String id = result.getString("id");
            String img = result.getString("image");
            String count = result.getString("count");
            String price = result.getString("price");
    %>
    
    
<div class="wrapper">
    <div class="product-img">
      <img src="data:image/jfif;base64,<%=img%> " height="200" width="200">
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
    <% } %>
</html>