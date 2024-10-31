<?php

use App\Models\MainModel;

$main_model = new MainModel;
?>

<!DOCTYPE HTML>
<html lang="en">

    <head>
      <!--=============== basic  ===============-->
      <meta charset="UTF-8">
      <title>Dealsmandi - Buy and Sell for free anywhere in Pakistan with DM online classifieds</title>
      <meta name="theme-color" content="#002f34" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
      <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0" />
      <meta name="robots" content="index, follow" />
      <meta name="keywords" content="" />
      <meta name="description" content="Dealsmandi has more ads available in Pakistan of goods for sale from cars, furniture, electronics to jobs and services listings. Buy or sell something today!" />
      <meta http-equiv="Content-Language" content="en" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
      <meta http-equiv="cleartype" content="on" />
      <meta name="HandheldFriendly" content="True" />
      <meta name="MobileOptimized" content="320" />
      <meta charSet="UTF-8" />

      <!--=============== css  ===============-->
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
      <link type="text/css" rel="stylesheet" href="<?php echo base_url('assets/css/reset.css'); ?>">
      <link type="text/css" rel="stylesheet" href="<?php echo base_url('assets/css/plugins.css'); ?>">
      <link type="text/css" rel="stylesheet" href="<?php echo base_url('assets/css/style.css'); ?>">
      <link type="text/css" rel="stylesheet" href="<?php echo base_url('assets/css/newstyle.css'); ?>">
      <link type="text/css" rel="stylesheet" href="<?php echo base_url('assets/css/color.css'); ?>">
      <link type="text/css" rel="stylesheet" href="<?php echo base_url('assets/css/modal.css'); ?>">      
      <!--=============== favicons ===============-->
      <link rel="shortcut icon" href="<?php echo base_url('assets/images/favicon.ico'); ?>">

      <style>
        .btn-outline-secondary {
    color: black !important;
}
      </style>
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
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
      <!-- Google API -->
      <script src="https://apis.google.com/js/platform.js" async defer></script>
      <meta name="google-signin-client_id" content="46048044638-4t14gsd8rj5i4j26ehmejesm5bau8j81.apps.googleusercontent.com">

    </head>

  <body>
  <!-- loader -->
    <div class="loader-wrap">
      <div class="pin"></div>
      <div class="pulse"></div>
    </div>
    <!--  loader end -->
    <!-- Googe signin button -->
    <div class="g-signin2" data-onsuccess="onSignIn"></div>
    <script type="text/javascript">
      function onSignIn(googleUser) {
        var profile = googleUser.getBasicProfile();
        console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
        console.log('Name: ' + profile.getName());
        console.log('Image URL: ' + profile.getImageUrl());
        console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
      }
    </script>
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
            <select data-placeholder="Location" class="chosen-select">
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
        <a href="post" class="add-list">Sell <span><i class="fa fa-plus"></i></span></a>
        <!-- <a class="header-user-menu" data-bs-toggle="modal" data-bs-target="#loginModal">Login</a> -->
        <div class="header-user-menu">
          <div class="header-user-name">
            <span><img src="<?php echo base_url('assets/images/avatar/avatar-bg.png'); ?>" alt=""></span>
            Alisa
          </div>
          <ul>
            <li><a href="dashboard-myprofile.html"> Edit profile</a></li>
            <li><a href="dashboard-add-listing.html"> Add Listing</a></li>
            <li><a href="dashboard-bookings.html"> Bookings </a></li>
            <li><a href="dashboard-review.html"> Reviews </a></li>
            <li><a href="#">Log Out</a></li>
          </ul>
        </div>
      </div>
    </header>
    <!--  header end -->

    <!-- nav-button-wrap-->
    <nav class="nav-menu">
      <div class="container">
        <div class="navbar-category">
          <div class="dropdown">
            <button class="dropbtn" onclick="myFunction()">All Categories
              <i class="fa fa-angle-down "></i>
            </button>
            <div class="dropdown-content col-md-12" id="show">
              <div class="row">
                <div class="column col-md-3">
                  <?php
                  $cat = '6,1,2,3';
                  foreach ($main_model->list_4_all_cats($cat) as $key => $cats) { ?>
                    <div>
                      <a href="<?php echo base_url('/search/' . $main_model->replace_spaces($cats->name)); ?>" class="cat-title"> <?php echo $cats->name; ?></a>
                      <?php foreach ($main_model->list_sub_cat($cats->id) as $key => $sub_cats) { ?>
                        <a href="<?php echo base_url('/search/' . $main_model->replace_spaces($sub_cats->cat_name)); ?>"><?php echo $sub_cats->cat_name; ?></a>
                      <?php } ?>
                    </div>
                  <?php } ?>
                </div>
                <div class="column col-md-3">
                  <?php
                  $cats = '7,11,12';
                  foreach ($main_model->list_4_all_cats($cat) as $key => $cats) { ?>

                    <div>
                      <a href="<?php echo base_url('/search/' . $main_model->replace_spaces($cats->name)); ?>" class="cat-title"><?php echo $cats->name; ?></a>
                      <?php foreach ($main_model->list_sub_cat($cats->id) as $key => $sub_cats) { ?>
                        <a href="<?php echo base_url('/search/' . $main_model->replace_spaces($sub_cats->cat_name)); ?>"><?php echo $sub_cats->cat_name; ?></a>
                      <?php } ?>
                    </div>
                  <?php } ?>
                </div>
                <div class="column col-md-3">
                  <?php
                  $cat = '4,10';
                  foreach ($main_model->list_4_all_cats($cat) as $key => $cats) { ?>
                    <div>
                      <a href="<?php echo base_url('/search/' . $main_model->replace_spaces($cats->name)); ?>" class="cat-title"><?php echo $cats->name; ?></a>
                      <?php foreach ($main_model->list_sub_cat($cats->id) as $key => $sub_cats) { ?>
                        <a href="<?php echo base_url('/search/' . $main_model->replace_spaces($sub_cats->cat_name)); ?>"><?php echo $sub_cats->cat_name; ?></a>
                      <?php } ?>
                    </div>
                  <?php } ?>
                </div>
                <div class="column col-md-3">
                  <?php
                  $cats = '5,13,9,8';
                  foreach ($main_model->list_4_all_cats($cat) as $key => $cats) { ?>
                    <div>
                      <a href="<?php echo base_url('/search/' . $main_model->replace_spaces($cats->name)); ?>" class="cat-title"><?php echo $cats->name; ?></a>
                      <?php foreach ($main_model->list_sub_cat($cats->id) as $key => $sub_cats) { ?>
                        <a href="<?php echo base_url('/search/' . $main_model->replace_spaces($sub_cats->cat_name)); ?>"><?php echo $sub_cats->cat_name; ?></a>
                      <?php } ?>
                    </div>
                  <?php } ?>
                </div>
              </div>
            </div>
          </div>
        </div>
        <ul class="d-flex">
          <li><a href="<?php echo base_url('/search/Mobile Phone'); ?>">Mobile Phone</a></li>
          <li><a href="<?php echo base_url('/search/cars'); ?>">Cars</a></li>
          <li><a href="<?php echo base_url('/search/motorcycles'); ?>">Motorcycles</a></li>
          <li><a href="<?php echo base_url('/search/house'); ?>">Houses</a></li>
          <li><a href="<?php echo base_url('/search/' . $main_model->replace_spaces('TV Video Audio')); ?>"><?php echo $main_model->replace_spaces('TV Video Audio'); ?></a></li>
          <li><a href="<?php echo base_url('/search/Tablets'); ?>">Tablets</a></li>
          <li><a href="<?php echo base_url('/search/land and plots'); ?>">Land & Plots</a></li>
        </ul>
      </div>
    </nav>
    <!-- <div class="navbar">
                      <div class="dropdown" >
                        <button class="dropbtn" id="show">Dropdown 
                          <i class="fa fa-caret-down"></i>
                        </button>
                        <div class="dropdown-content" id="register">  
                          <div class="row">
                            <div class="column">
                              <h3>Category 1</h3>
                              <a href="#">Link 1</a>
                              <a href="#">Link 2</a>
                              <a href="#">Link 3</a>
                            </div>
                            <div class="column">
                              <h3>Category 2</h3>
                              <a href="#">Link 1</a>
                              <a href="#">Link 2</a>
                              <a href="#">Link 3</a>
                            </div>
                            <div class="column">
                              <h3>Category 3</h3>
                              <a href="#">Link 1</a>
                              <a href="#">Link 2</a>
                              <a href="#">Link 3</a>
                            </div>
                            <div class="column">
                              <h3>Category 3</h3>
                              <a href="#">Link 1</a>
                              <a href="#">Link 2</a>
                              <a href="#">Link 3</a>
                            </div>
                          </div>
                        </div>
                      </div> 
                    </div> -->

    <!-- body section main page -->
    <div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="loginModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content p-4" style="min-height: 450px;" >          <div class="modal-header">
            <h5 class="modal-title" id="loginModalLabel">
              <!-- <img src="your_logo.png" alt="Logo" class="img-fluid" style="max-width: 100px;"> -->
            </h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body text-center">
            <h5>Login to Your Dealsmandi Account</h5>
            <div class="d-grid gap-2 my-3">
              <button class="btn btn-outline-secondary">
                <img  class="me-2"> Login with Google
              </button>
              <button class="btn btn-outline-secondary">
                <img class="me-2"> Login with Facebook
              </button>
            </div>
            <div class="my-3">OR</div>
            <div class="d-grid gap-2 my-3">
              <button class="btn btn-outline-secondary">
                <img   class="me-2" style="max-width: 20px;"> Login with Email
              </button>
              <button class="btn btn-outline-secondary">
                <img  class="me-2" style="max-width: 20px;"> Login with Phone
              </button>
            </div>
            <div class="mt-3">
              <a href="signup">New to Dealsmandi? Create an account</a>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
  <script>
    $(document).ready(function() {
      $('#modalTrigger').on('click', function() {
        $('#loginModal').modal('show');
      });
    });
  </script>
