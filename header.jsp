<html>
	<% 
		HttpSession session1 = request.getSession(false);
	%>
	  <meta charset="UTF-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1.0">
	  <link rel="stylesheet" href="index.css">
	  <!-- Header -->
	  <section id="header">
		<div class="header container">
		  <div class="nav-bar">
			<div class="brand">
			  <a href="#hero">
				<h1><span>ONLINE <ensp></ensp></span>BIKE <span>RENTAL</span><ensp></ensp>SYSTEM</h1>
			  </a>
			</div>
			<div class="nav-list">
			  <div class="hamburger">
				<div class="bar"></div>
			  </div>
			  <ul>
				<%if(session1.getAttribute("email") == null){%>
				<li><a href="login.jsp">login</a></li>
				<li><a href="signup.jsp">signup</a></li>
				<%}else{%>
				<li><a href="logout.jsp">logout</a></li>
				<%}%>
			  </ul>
			</div>
		  </div>
		</div>
	  </section>
	</html>