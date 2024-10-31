</head>
<body id="home">

	<!-- ****************************** Preloader ************************** -->

	<!-- <div id="preloader"></div> -->

	<!-- ****************************** Sidebar ************************** -->

	<nav id="sidebar-wrapper">
		<a id="menu-close" href="#" class="close-btn toggle"><i class="ion-ios-close-empty"></i></a>
	    <ul class="sidebar-nav">
		    <li><a href="#home">Home</a></li>
			<li><a href="#features">Features</a></li>
			<!-- <li><a href="#gallery">Gallery</a></li>
			<li><a href="#team">Development Team</a></li>
			<li><a href="#testimonial">Precious Reviews</a></li> -->
			<li><a href="#contact">Contact us</a></li>
	    </ul>
	</nav>

	<!-- ****************************** Header ************************** -->

	<header class="sticky" id="header">
		<section class="container">
			<section class="row" id="logo_menu">
				<section class="col-xs-8"><a class="logo" href="">taleemyapps.com</a></section>
				<section class="col-xs-4"><a id="menu-toggle" href="#" class="toggle wow rotateIn" data-wow-delay="1s"><i class="ion-navicon"></i></a></section>
			</section>
		</section>
	</header>

	<!-- ****************************** Team Section ************************** -->

	<section id="team" class="block">
		<section class="container">
			<section class="row">
				<div class="col-md-12">
					<div class="title-box">
						<h1 class="block-title wow animated rollIn">
							<span class="bb-top-left"></span>
							<span class="bb-bottom-left"></span>
							Our Schools
							<span class="bb-top-right"></span>
							<span class="bb-bottom-right"></span>
						</h1>
					</div>
				</div>
			</section>

			<section class="container">
				<section class="row">
<?php

				       foreach ($schoollist as $key => $fetch) { 
				    ?>
				    <!-- <div class="col-3 col-sm-4"> -->
				    	<div class="col-5 col-sm-4">
						<a href="https://<?php echo $fetch['subdomain']; ?>.taleemyapps.com"><img src="school_folder/school_logo.png" class="img_res team-pic"></a>
						<a href="https://<?php echo $fetch['subdomain']; ?>.taleemyapps.com" class="nohover"><h4 style="text-align: center;"><?php  echo $fetch['school_name'];  ?></h4></a>
					</div>
					<?php } ?>
				</section>
			</section>					
		</section>
	</section>