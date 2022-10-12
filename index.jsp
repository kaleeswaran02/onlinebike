<html>
	<% 
		HttpSession session1 = request.getSession(false);
		if(session1.getAttribute("email")==null){
	%>
	
	<head>
	  <meta charset="UTF-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1.0">
	  <link rel="stylesheet" href="style.css">
	  <title>My Website</title>
	</head>
	<style>
		* {
		padding: 0;
		margin: 0;
		box-sizing: border-box;
	}
	html {
		font-size: 10px;
		font-family: 'Montserrat', sans-serif;
		scroll-behavior: smooth;
	}
	a {
		text-decoration: none;
	}
	.container {
		min-height: 100vh;
		width: 100%;
		display: flex;
		align-items: center;
		justify-content: center;
	}
	
	p {
		color: black;
		font-size: 1.4rem;
		margin-top: 5px;
		line-height: 2.5rem;
		font-weight: 300;
		letter-spacing: 0.05rem;
	}
	.section-title {
		font-size: 4rem;
		font-weight: 300;
		color: black;
		margin-bottom: 10px;
		text-transform: uppercase;
		letter-spacing: 0.2rem;
		text-align: center;
	}
	.section-title span {
		color: crimson;
	}
	
	
	
	.brand h1 {
		font-size: 3rem;
		text-transform: uppercase;
		color: white;
	}
	.brand h1 span {
		color: crimson;
	}
	
	/* Header section */
	#header {
		position: fixed;
		z-index: 1000;
		left: 0;
		top: 0;
		width: 100vw;
		height: auto;
	}
	#header .header {
		min-height: 8vh;
		background-color: rgba(31, 30, 30, 0.24);
		transition: 0.3s ease background-color;
	}
	#header .nav-bar {
		display: flex;
		align-items: center;
		justify-content: space-between;
		width: 100%;
		height: 100%;
		max-width: 1300px;
		padding: 0 10px;
	}
	#header .nav-list ul {
		list-style: none;
		position: absolute;
		background-color: rgb(31, 30, 30);
		width: 100vw;
		height: 100vh;
		left: 100%;
		top: 0;
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: center;
		z-index: 1;
		overflow-x: hidden;
		transition: 0.5s ease left;
	}
	#header .nav-list ul.active {
		left: 0%;
	}
	#header .nav-list ul a {
		font-size: 2.5rem;
		font-weight: 500;
		letter-spacing: 0.2rem;
		text-decoration: none;
		color: white;
		text-transform: uppercase;
		padding: 20px;
		display: block;
	}
	#header .nav-list ul a::after {
		content: attr(data-after);
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%, -50%) scale(0);
		color: rgba(240, 248, 255, 0.021);
		font-size: 13rem;
		letter-spacing: 50px;
		z-index: -1;
		transition: 0.3s ease letter-spacing;
	}
	#header .nav-list ul li:hover a::after {
		transform: translate(-50%, -50%) scale(1);
		letter-spacing: initial;
	}
	#header .nav-list ul li:hover a {
		color: crimson;
	}
	#header .hamburger {
		height: 60px;
		width: 60px;
		display: inline-block;
		border: 3px solid white;
		border-radius: 50%;
		position: relative;
		display: flex;
		align-items: center;
		justify-content: center;
		z-index: 100;
		cursor: pointer;
		transform: scale(0.8);
		margin-right: 20px;
	}
	#header .hamburger:after {
		position: absolute;
		content: '';
		height: 100%;
		width: 100%;
		border-radius: 50%;
		border: 3px solid white;
		animation: hamburger_puls 1s ease infinite;
	}
	#header .hamburger .bar {
		height: 2px;
		width: 30px;
		position: relative;
		background-color: white;
		z-index: -1;
	}
	#header .hamburger .bar::after,
	#header .hamburger .bar::before {
		content: '';
		position: absolute;
		height: 100%;
		width: 100%;
		left: 0;
		background-color: white;
		transition: 0.3s ease;
		transition-property: top, bottom;
	}
	#header .hamburger .bar::after {
		top: 8px;
	}
	#header .hamburger .bar::before {
		bottom: 8px;
	}
	#header .hamburger.active .bar::before {
		bottom: 0;
	}
	#header .hamburger.active .bar::after {
		top: 0;
	}
	/* End Header section */
	
	/* Hero Section */
	#hero {
		background-image: url(./img/hero-bg.png);
		background-size: cover;
		background-position: top center;
		position: relative;
		z-index: 1;
	}
	#hero::after {
		content: '';
		position: absolute;
		left: 0;
		top: 0;
		height: 100%;
		width: 100%;
		background-color: black;
		opacity: 0.7;
		z-index: -1;
	}
	#hero .hero {
		max-width: 1200px;
		margin: 0 auto;
		padding: 0 50px;
		justify-content: flex-start;
	}
	#hero h1 {
		display: block;
		width: fit-content;
		font-size: 4rem;
		position: relative;
		color: transparent;
		animation: text_reveal 0.5s ease forwards;
		animation-delay: 1s;
	}
	#hero h1:nth-child(1) {
		animation-delay: 1s;
	}
	#hero h1:nth-child(2) {
		animation-delay: 2s;
	}
	#hero h1:nth-child(3) {
		animation: text_reveal_name 0.5s ease forwards;
		animation-delay: 3s;
	}
	#hero h1 span {
		position: absolute;
		top: 0;
		left: 0;
		height: 100%;
		width: 0;
		background-color: crimson;
		animation: text_reveal_box 1s ease;
		animation-delay: 0.5s;
	}
	#hero h1:nth-child(1) span {
		animation-delay: 0.5s;
	}
	#hero h1:nth-child(2) span {
		animation-delay: 1.5s;
	}
	#hero h1:nth-child(3) span {
		animation-delay: 2.5s;
	}
	
	/* End Hero Section */
	
	
	
	/* Keyframes */
	@keyframes hamburger_puls {
		0% {
			opacity: 1;
			transform: scale(1);
		}
		100% {
			opacity: 0;
			transform: scale(1.4);
		}
	}
	@keyframes text_reveal_box {
		50% {
			width: 100%;
			left: 0;
		}
		100% {
			width: 0;
			left: 100%;
		}
	}
	@keyframes text_reveal {
		100% {
			color: white;
		}
	}
	@keyframes text_reveal_name {
		100% {
			color: crimson;
			font-weight: 500;
		}
	}
	/* End Keyframes */
	
	/* Media Query For Tablet */
	@media only screen and (min-width: 768px) {
		.cta {
			font-size: 2.5rem;
			padding: 20px 60px;
		}
		h1.section-title {
			font-size: 6rem;
		}
	
		/* Hero */
		#hero h1 {
			font-size: 7rem;
		}
		/* End Hero */
	
		/* Services Section */
		#services .service-bottom .service-item {
			flex-basis: 45%;
			margin: 2.5%;
		}
		/* End Services Section */
	
		/* Project */
		#projects .project-item {
			flex-direction: row;
		}
		#projects .project-item:nth-child(even) {
			flex-direction: row-reverse;
		}
		#projects .project-item {
			height: 400px;
			margin: 0;
			width: 100%;
			border-radius: 0;
		}
		#projects .all-projects .project-info {
			height: 100%;
		}
		#projects .all-projects .project-img {
			height: 100%;
		}
		/* End Project */
	
		/* About */
		#about .about {
			flex-direction: row;
		}
		#about .col-left {
			width: 600px;
			height: 400px;
			padding-left: 60px;
		}
		#about .about .col-left .about-img::after {
			left: -45px;
			top: 34px;
			height: 98%;
			width: 98%;
			border: 10px solid crimson;
		}
		#about .col-right {
			text-align: left;
			padding: 30px;
		}
		#about .col-right h1 {
			text-align: left;
		}
		/* End About */
	
		/* contact  */
		#contact .contact {
			flex-direction: column;
			padding: 100px 0;
			align-items: center;
			justify-content: center;
			min-width: 20vh;
		}
		#contact .contact-items {
			width: 100%;
			display: flex;
			flex-direction: row;
			justify-content: space-evenly;
			margin: 0;
		}
		#contact .contact-item {
			width: 30%;
			margin: 0;
			flex-direction: row;
		}
		#contact .contact-item .icon {
			height: 100px;
			width: 100px;
		}
		#contact .contact-item .icon img {
			object-fit: contain;
		}
		#contact .contact-item .contact-info {
			width: 100%;
			text-align: left;
			padding-left: 20px;
		}
		/* End contact  */
	}
	/* End Media Query For Tablet */
	
	/* Media Query For Desktop */
	@media only screen and (min-width: 1200px) {
		/* header */
		#header .hamburger {
			display: none;
		}
		#header .nav-list ul {
			position: initial;
			display: block;
			height: auto;
			width: fit-content;
			background-color: transparent;
		}
		#header .nav-list ul li {
			display: inline-block;
		}
		#header .nav-list ul li a {
			font-size: 1.8rem;
		}
		#header .nav-list ul a:after {
			display: none;
		}
		/* End header */
	
		#services .service-bottom .service-item {
			flex-basis: 22%;
			margin: 1.5%;
		}
	}
	
	</style>
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
				<li><a href="login.jsp">login</a></li>
				<li><a href="signup.jsp">signup</a></li>
			   
			  </ul>
			</div>
		  </div>
		</div>
	  </section>
	  <!-- End Header -->
	
	
	  <!-- Hero Section  -->
	  <section id="hero">
		<div class="hero container">
		  <div>
			<h1>Welcome!!!, <span></span></h1>
			<h1>EVERY DAY IS A GOOD DAY <span></span></h1>
			<h1>FOR A RIDE <span></span></h1>      </div>
		</div>
	  </section>
	  <!-- End Hero Section  -->
	
	</body>
	
	
	<%}%>
	
	<a href="viewer.jsp">view bikes</a>
	<%if(session1.getAttribute("email")!=null){ %>
	<a href="upload.jsp">upload bikes</a>
	<a href="logout.jsp">logout</a>
	<%}%>
	</html>