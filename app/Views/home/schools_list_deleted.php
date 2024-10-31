<!DOCTYPE html>
<html lang="en">
<head>
	<title>Keep Schoolin | School Management App</title>

	<!-- meta -->
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

	<meta name="description" content="Get School Management Software for Nursery, Primary and Secondary Schools and colleges in Pakistan. Keepschoolin."/>
	<meta name="keywords" content="school, student, teacher, parent, class, subject, fee management, school calendar, education">
	<meta name="author" content="keepschoolin.com">
	<!-- css -->
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/ionicons.min.css">
	<link rel="stylesheet" href="assets/css/owl.carousel.css">
	<link rel="stylesheet" href="assets/css/owl.theme.css">
	<link rel="stylesheet" href="assets/css/animate.css">
	<link rel="stylesheet" href="assets/css/style.css">

	<!-- fonts -->
	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic|Roboto+Condensed:300italic,400italic,700italic,400,300,700|Oxygen:400,300,700' rel='stylesheet'>

	<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!--[if lt IE 9]>
        <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-131077700-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-131077700-1');
</script>

<style type="text/css">
a {
    color: white;
    font-size: 18px;
}	


</style>
<!—-  ShareThis BEGIN -->
<script type='text/javascript' src='//platform-api.sharethis.com/js/sharethis.js#property=5c0a961e1c985700119223bf&product=sticky-share-buttons' async='async'></script>
<!—- ShareThis END -—>



</head>
<body id="home">

	<!-- ****************************** Preloader ************************** -->

	<div id="preloader"></div>

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
				<section class="col-xs-8"><a class="logo" href="">Keep Schoolin</a></section>
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
							Schools List
							<span class="bb-top-right"></span>
							<span class="bb-bottom-right"></span>
						</h1>
					</div>
				</div>
			</section>

			<section class="row">
				<section class="col-md-3 col-sm-6">
													
					<div class="team-member wow animated fadeIn" data-wow-delay=="0.3s">
<?php
        				$i=1;
				       foreach ($schoollist as $fetch) { 
				    ?>
						<img src="school_folder/school_logo.png" class="img_res team-pic">
						<a href="https://<?php echo $fetch['subdomain']; ?>.keepschoolin.com"><h2 class="wow animated fadeInDown" data-wow-delay=="0.7s"><?php  echo $fetch['school_name'];  ?></h2></a>
						
						<p class="wow animated fadeIn" data-wow-delay=="0.7s">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
						tempor incididunt ut labore et dolore magna aliqua.</p>
						<ul class="team-social">
							<li class="wow animated fadeInLeft facebook"><a href="#"><i class="ion-social-facebook"></i></a></li>
							<li class="wow animated fadeInLeft linkedin"><a href="#"><i class="ion-social-linkedin"></i></a></li>
							<li class="wow animated fadeInRight googleplus"><a href="#"><i class="ion-social-googleplus-outline"></i></a></li>
							<li class="wow animated fadeInRight github"><a href="#"><i class="ion-social-github"></i></a></li>
						</ul>
					<?php      
						}
       				?>
					</div>

				</section>
			</section>
					
		</section>
	</section>



		<!-- ****************************** Footer ************************** -->

		<section id="footer" style="padding-top: 50px;">
			<section class="container">
				<section class="row">
					<div class="col-sm-12" >
						<span></span>
            <!-- Links -->

                    <div class="row col-sm-3">
                        <div class=" g-margin-b-20--xs g-margin-b-0--md">
                            <ul class="list-unstyled g-ul-li-tb-5--xs g-margin-b-0--xs">
                                <li><a class="g-font-size-15--xs g-color--white-opacity" href="<?php echo base_url(); ?>">Home</a></li>
                                <li><a target="_blank" class="g-font-size-15--xs g-color--white-opacity" href="https://demo.keepschoolin.com">Demo</a></li>
                                <li><a target="_blank" class="g-font-size-15--xs g-color--white-opacity" href="<?php echo base_url('/Schools_list_controller'); ?>">Schools List</a></li>
                                <li><a class="g-font-size-15--xs g-color--white-opacity" href="#contact">Contact</a></li>
                            </ul>
                        </div>

                    </div>
                    <!-- End Links -->
<!-- start link two --->


 <div class="row col-sm-3">
                        <div class=" g-margin-b-20--xs g-margin-b-0--md">
                            <ul class="list-unstyled g-ul-li-tb-5--xs g-margin-b-0--xs">
                                <li><a target="_blank" class="g-font-size-15--xs g-color--white-opacity" href="https://twitter.com/nadeem14375">Twitter</a></li>
                                <li><a target="_blank" class="g-font-size-15--xs g-color--white-opacity" href="https://www.facebook.com/Keep-Schoolin-1676602015777827/">Facebook</a></li>
                                <li><a target="_blank" class="g-font-size-15--xs g-color--white-opacity" href="">Instagram</a></li>
                                <li><a target="_blank" class="g-font-size-15--xs g-color--white-opacity" href="">YouTube</a></li>
                                <li><a target="_blank" class="g-font-size-15--xs g-color--white-opacity" href="https://plus.google.com/102083977132740832727">Google+</a></li>                                
                            </ul>
                        </div>

                    </div>

        
<!-- End  link two --->
<!--  Start link three -->

<div class="row col-sm-4">
	
                        <div class=" g-margin-b-20--xs g-margin-b-0--md">
                            <ul class="list-unstyled g-ul-li-tb-5--xs g-margin-b-0--xs">
                                <li><a class="g-font-size-15--xs g-color--white-opacity" target="_blank" href="<?php echo base_url('/Help_docs'); ?>">Documentations </a></li>
                                <li><a class="g-font-size-15--xs g-color--white-opacity"  target="_blank" href="<?php echo base_url('/Help_docs/privacy'); ?>">Privacy Policy</a></li>
                                <li><a class="g-font-size-15--xs g-color--white-opacity" target="_blank" href="<?php echo base_url('/Help_docs/termsofuse'); ?>">Terms & Conditions</a></li>
                            </ul>
                       </div>

                    </div>
<!-- End link three -->
<!-- Start  link four -->

<div class="row col-sm-3">
                       <div class=" g-margin-b-20--xs g-margin-b-0--md">
                           <p style="color: white; font-size: 18px;">Address:<br>
                    Suite #2, Block #C-15, 
                    Ibn-e-sina Road, G-11/3, Islamabad<br>
                   Phone:<br>
                    03469307639<br>
                   Email:<br>
                   info@keepschoolin.com</p>
                        </div>

                    </div>




<!-- End  link four -->
					</div>
					
				</section>


			</section>
		</section>
		
		<!-- ****************************** Footer ************************** -->

		<section id="footer" class="col-sm-12" >
			<section class="container col-sm-12" >
				<section class="row col-sm-6">
				
					<div class="col-sm-3">
						<p style="float: left;" class="copyright">Keep Schoolin </p>
					</div>
				</section>
<section class="row col-sm-6">
				
					<div >
						<p class="copyright">All &copy; Copyright Reserved 2019</p>
					</div>
				</section>
			</section>
		</section>

	<!-- All the scripts -->

	<script src="assets/js/jquery-2.1.3.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/wow.min.js"></script>
	<script src="assets/js/owl.carousel.js"></script>
	<script src="assets/js/script.js"></script>
	
</body>
</html>
