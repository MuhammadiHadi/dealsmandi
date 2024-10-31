<?php 
use App\Models\MainModel;
?>

<!DOCTYPE HTML>
<html lang="en">
    <head>
        <!--=============== basic  ===============-->
        <meta charset="UTF-8">
        <title>Dealsmandi - Buy and Sell for free anywhere in Pakistan with DM online classifieds</title>
        <meta name="theme-color" content="#002f34"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0"/>
        <meta name="robots" content="index, follow"/>
        <meta name="keywords" content=""/>
        <meta name="description" content="Dealsmandi has more ads available in Pakistan of goods for sale from cars, furniture, electronics to jobs and services listings. Buy or sell something today!"/>
        <meta http-equiv="Content-Language" content="en"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
        <meta http-equiv="cleartype" content="on"/>
        <meta name="HandheldFriendly" content="True"/><meta name="MobileOptimized" content="320"/>
        <meta charSet="UTF-8"/>

        <!--=============== css  ===============--> 
        <link type="text/css" rel="stylesheet" href="<?php echo base_url('assets/css/reset.css'); ?>">
        <link type="text/css" rel="stylesheet" href="<?php echo base_url('assets/css/plugins.css'); ?>">
        <link type="text/css" rel="stylesheet" href="<?php echo base_url('assets/css/style.css'); ?>">
        <link type="text/css" rel="stylesheet" href="<?php echo base_url('assets/css/newstyle.css'); ?>">
        <link type="text/css" rel="stylesheet" href="<?php echo base_url('assets/css/color.css'); ?>">
        
        <!--=============== favicons ===============-->
        <link rel="shortcut icon" href="<?php echo base_url('assets/images/favicon.ico'); ?>">
        <script src="https://code.jquery.com/jquery-3.3.1.min.js"
          integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
          crossorigin="anonymous">
        </script>
        <style>
  .img-container img {
               border: 1px solid #ccc;
               border-radius: 5px;
               cursor: pointer;
               -webkit-tap-highlight-color: transparent;
               transition: .3s;
              -webkit-transition: .3s;
              -moz-transition: .3s;
            }
        </style>

    </head>
    <body>
        <!-- loader -->
        <div class="loader-wrap">
            <div class="pin"></div>
            <div class="pulse"></div>
        </div>
        <!--  loader end -->
        
        <!-- Main   -->
        <div id="main" class="main-page">
            
            <!-- header  -->
            <header class="main-header dark-header fs-header sticky">
                 <div class="header-topper">
                    <div class="logo">
                        <a href="<?php echo base_url(); ?>"><img src="<?php echo base_url('assets/images/logo.png'); ?>" alt="" width="100px"></a>
                    </div>
                    <div class="motors">
                        <a href="<?php echo base_url('search/vehicles'); ?>">
                            <i class="fa fa-truck"></i>
                            <span>Motors</span>
                        </a>
                    </div>
                    <div class="property">
                        <a href="<?php echo base_url('search/property'); ?>">
                            <i class="fa fa-building-o"></i>
                            <span>Property</span>
                        </a>
                    </div>
                </div>
                <div class="header-inner">
                    <div class="logo-holder">
                        <a href="<?php echo base_url(); ?>"><img src="<?php echo base_url('assets/images/logo.png'); ?>" alt=""></a>
                    </div>
                    <div class="header-search vis-header-search">
                        <div class="header-search-select-item">
                            <select data-placeholder="Location" class="chosen-select" >
                                <option>All Locations</option>
                                <?php foreach ($list_cities as $key => $cities) { ?>
                                <option value="<?php echo $cities->id; ?>"> <?php echo $cities->city_name; ?> </option>
                                <?php } ?>
                            </select>
                        </div>
                    </div>
                    <div class="header-search2">
                        <form class="example" action="/action_page.php">
                          <input type="text" placeholder="Finds Cars, Mobile Phones and more.." name="search2">
                          <button type="submit"><i class="fa fa-search"></i></button>
                        </form>
                    </div>
                    <div class="show-search-button"><i class="fa fa-search"></i> <span>Search</span></div>
                        <div class="cht-notfic">
                            <a href="#">
                                <div class="cht">
                                    <i class="fa fa-comments-o"></i>  
                                </div>
                            </a>
                            <div class="notfic">
                                <i class="fa fa-bell"></i> 
                            </div>
                                
                        </div>
                    <a href="<?php echo base_url('sell'); ?>" class="add-list">Sell <span><i class="fa fa-plus"></i></span></a>

                    <div class="header-user-menu">
                        <div class="header-user-name">
                            <span><img src="<?php echo base_url('assets/images/avatar/1.jpg'); ?>" alt=""></span>
                            Alisa
                        </div>
                        <ul>
                            <li><a href="dashboard-myprofile.html"> Edit profile</a></li>
                            <li><a href="dashboard-add-listing.html"> Add Listing</a></li>
                            <li><a href="dashboard-bookings.html">  Bookings  </a></li>
                            <li><a href="dashboard-review.html"> Reviews </a></li>
                            <li><a href="#">Log Out</a></li>
                        </ul>
                    </div>
                </div>
            </header>
            <!--  header end -->    
