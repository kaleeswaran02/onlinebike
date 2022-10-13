<html>
	<% 
		HttpSession session1 = request.getSession(false);
	%>
	
	<head>
	  <meta charset="UTF-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1.0">
	  <link rel="stylesheet" href="index.css">
	  <title>My Website</title>
	</head>
	<body>
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
				<a href="logout.jsp">logout</a>
				<%}%>
			  </ul>
			</div>
		  </div>
		</div>
	  </section>
	  <!-- End Header -->

      	</body>
	</html>