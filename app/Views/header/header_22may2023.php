<?php 
use App\Models\MainModel;
?>
<!DOCTYPE HTML>
<html lang="en">
    <head>
        <!--=============== basic  ===============-->
        <meta charset="UTF-8">
        <title>Citybook -Directory Listing Template</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <meta name="robots" content="index, follow"/>
        <meta name="keywords" content=""/>
        <meta name="description" content=""/>
        <!--=============== css  ===============-->
        <!--  <?php echo base_url('assets/images/favicon.png'); ?> -->
        <link type="text/css" rel="stylesheet" href="<?php echo base_url('assets/css/reset.css'); ?>">
        <link type="text/css" rel="stylesheet" href="<?php echo base_url('assets/css/plugins.css'); ?>">
        <link type="text/css" rel="stylesheet" href="<?php echo base_url('assets/css/style.css'); ?>">
        <link type="text/css" rel="stylesheet" href="<?php echo base_url('assets/css/color.css'); ?>">
        <!--=============== favicons ===============-->
        <link rel="shortcut icon" href="<?php echo base_url('assets/images/favicon.ico'); ?>">
    </head>
    <body>
        <!--loader-->
        <div class="loader-wrap">
            <div class="pin"></div>
            <div class="pulse"></div>
        </div>
        <!--loader end-->
        <!-- Main  -->
        <div id="main">
            <!-- header-->
            <header class="main-header dark-header fs-header sticky">
                <div class="header-inner">
                    <div class="logo-holder">
                        <a href="<?php echo base_url(); ?>"><img src="<?php echo base_url('assets/images/logo.png'); ?>" alt=""></a>
                    </div>
                    <div class="header-search vis-header-search">
                        <div class="header-search-input-item">
                            <input type="text" placeholder="Keywords" value=""/>
                        </div>
                        <div class="header-search-select-item">
                            <select data-placeholder="All Categories" class="chosen-select" >
                            <option> Select Location</option>
                            <?php foreach ($list_cities as $key => $cities) { ?>
                            <option value="<?php echo $cities->id; ?>"> <?php echo $cities->city_name; ?> </option>
                          <?php } ?>
                            </select>
                        </div>
                        <div class="header-search-select-item">
                            <select data-placeholder="All Categories" class="chosen-select" >
                            <option> Select Category</option>
                            <?php foreach ($list_cat as $key => $cat) { ?>
                            <option value="<?php echo $cat->id; ?>"> <?php echo $cat->name; ?> </option>
                          <?php } ?>
                            </select>
                        </div>                        
                        <button class="header-search-button" onclick="window.location.href='<?php echo "search"; ?>'">Search</button>
                    </div>
                    <div class="show-search-button"><i class="fa fa-search"></i> <span>Search</span></div>
                    <a href="dashboard-add-listing.html" class="add-list">Add Listing <span><i class="fa fa-plus"></i></span></a>
                    <div class="show-reg-form modal-open"><i class="fa fa-sign-in"></i>Sign In</div>
                    <!-- nav-button-wrap-->
                    <div class="nav-button-wrap color-bg">
                        <div class="nav-button">
                            <span></span><span></span><span></span>
                        </div>
                    </div>
                    <!-- nav-button-wrap end-->

                </div>
            </header>
            <!--  header end -->
