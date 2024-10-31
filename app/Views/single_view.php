<?php

use App\Models\MainModel;

// foreach ($list_ad as $key => $list) { 
//$title = str_replace(' ', '-', $list->title).'-';
// echo $list_ad->price;
// die();

?>
<!-- wrapper -->
<div id="wrapper" class="details-page-main">
    <!-- content-->
    <div class="content">
        <!--  section  end-->
        <div class="main-head-section bg-grey" style="padding-top:60px;">
            <div class="container">
                <ul class="d-flex d-page">
                    <li><a href="<?php echo base_url(); ?>">Home</a></li>
                    <li>/ <a href="search-page.html">Mobiles</a></li>
                    <li>/ <a href="search-page.html">Mobile Phones</a></li>
                    <li>/ <a href="search-page.html">Mobile Phones in Islamabad Capital Territory</a></li>
                    <li>/ <a href="search-page.html">Mobile Phones in Islamabad</a></li>
                    <li>/ <a href="search-page.html">Mobile Phones in 7 Wonder City</a></li>

                </ul>
            </div>
        </div>
        <!-- section-->
        <section class="gray-section">
            <div class="details-page">
                <div class="row">
                    <div class="col-md-8">
                        <div class="list-single-main-media fl-wrap">
                            <div class="single-slider-wrapper fl-wrap">
                                <div class="single-slider fl-wrap">
                                    <?php
                                    $main_model = new MainModel;

                                    //    var_dump($list_ad);
                                    //    echo $list_ad->id;
                                    //    die();

                                    $file_name =  $main_model->list_photo($list_ad->id);
                                    //echo $file_name;
                                    //die();
                                    if (!isset($file_name)) {
                                        $file_name = '1.jpg';
                                    }
                                    ?>
                                    <div class="slick-slide-item"><img src="<?php echo base_url('assets/images/all/' . $file_name . ''); ?>" alt=""></div>
                                    <div class="slick-slide-item"><img src="<?php echo base_url('assets/images/all/1.jpg'); ?>" alt=""></div>
                                </div>
                                <div class="swiper-button-prev sw-btn"><i class="fa fa-long-arrow-left"></i></div>
                                <div class="swiper-button-next sw-btn"><i class="fa fa-long-arrow-right"></i></div>
                            </div>
                        </div>
                        <!-- section two  -->
                        <div class="sec-2">
                            <div class="col-md-12 t-left dt-sec-1">
                                <div class="dt-body d-flex">
                                    <div class="body-left">
                                        <h1>Rs <?php echo $list_ad->price;
                                                //    var_dump($list); die(); 
                                                ?></h1>
                                        <p><?php echo $list_ad->title; ?></p>
                                    </div>
                                    <div class="body-right d-flex">
                                        <a href="<?php echo $list_ad->id; ?>"><img src="<?php echo base_url('assets/images/iconShare_noinline.svg'); ?>" alt="share link"></a>
                                        <a href="<?php echo $list_ad->id; ?>"><i class="fa fa-heart"></i></a>
                                    </div>
                                </div>
                                <div class="dt-footer d-flex">
                                    <div><i class="fa fa-map-marker" aria-hidden="true"></i> <?php echo $list_ad->neighbourhood . "," . $list_ad->city; ?></div>
                                    <div class="ft-r">4 days ago</div>
                                </div>
                            </div>
                            <div class="col-md-12 sec-3 my-2">
                                <h3>Details</h3>
                                <div class="row pt-1">
                                    <div class="col-md-3">
                                        <!-- /* 
3= car , Vehicles
13= property  
6= Mobile
*/ -->
                                        <?php
                                        // echo "category= ".$list_ad->cat;
                                        // die();

                                        if ($list_ad->cat == 'Vehicles') {
                                            echo "<p> Make </p>";
                                            echo "<p> KM's Driven </p>";
                                            echo "<p> Fuel </p>";
                                            echo "<p> Car Documents </p>";
                                            echo "<p> Transmission </p>";
                                            echo "<p> Brand </p>";
                                            //die();
                                        }
                                        if ($list_ad->cat == 'Property') {
                                            echo "<p> Bedrooms </p>";
                                            echo "<p> Floor Level </p>";
                                            echo "<p> Area </p>";
                                            //    die();
                                        }
                                        if ($list_ad->cat == 'Mobile') {
                                            echo "<p> Brand </p>";
                                            echo "<p> Condition </p>";
                                            //    die();
                                        }

                                        ?>
                                    </div>
                                    <div class="col-md-3">
                                        <?php if ($list_ad->cat == 'Vehicles') {
                                            echo "<p class='fw-600'>" . $list_ad->make . "</p>";
                                            echo "<p class='fw-600'>" . $list_ad->km_driven . "</p>";
                                            echo "<p class='fw-600'>" . $list_ad->fuel . "</p>";
                                            echo "<p class='fw-600'>" . $list_ad->car_documents . "</p>";
                                            echo "<p class='fw-600'>" . $list_ad->transmission . "</p>";
                                            echo "<p class='fw-600'>" . $list_ad->brand . "</p>";
                                            //die();
                                        }

                                        if ($list_ad->cat == 'Property') {
                                            echo "<p class='fw-600'>" . $list_ad->bed_rooms . "</p>";
                                            echo "<p class='fw-600'>" . $list_ad->floor_level . "</p>";
                                            echo "<p class='fw-600'>" . $list_ad->ad_area . "</p>";
                                            //    die();
                                        }
                                        if ($list_ad->cat == 'Mobile') {
                                            echo "<p class='fw-600'>" . $list_ad->brand . "</p>";
                                            echo "<p class='fw-600'>" . $list_ad->ad_condition . "</p>";

                                            //    die();
                                        }
                                        ?>
                                    </div>
                                    <div class="col-md-3">
                                        <?php
                                        if ($list_ad->cat == 'Vehicles') {
                                            echo "<p> Model </p>";
                                            echo "<p> Year </p>";
                                            echo "<p> Price </p>";
                                            echo "<p> Registration City </p>";
                                            echo "<p> Assembly </p>";
                                            echo "<p> Condition </p>";
                                            //die();
                                        }
                                        if ($list_ad->cat == 'Property') {
                                            echo "<p> Price </p>";
                                            echo "<p> Area Unit </p>";
                                            //    die();
                                        }
                                        if ($list_ad->cat == 'Mobile') {
                                            echo "<p> Brand </p>";
                                            echo "<p> Condition </p>";
                                            //    die();
                                        }
                                        ?>
                                    </div>
                                    <div class="col-md-3">
                                        <?php if ($list_ad->cat == 'Vehicles') {
                                            echo "<p class='fw-600'>" . $list_ad->model . "</p>";
                                            echo "<p class='fw-600'>" . $list_ad->year . "</p>";
                                            echo "<p class='fw-600'>" . $list_ad->price . "</p>";
                                            echo "<p class='fw-600'>" . $list_ad->registration_city . "</p>";
                                            echo "<p class='fw-600'>" . $list_ad->assembly . "</p>";
                                            echo "<p class='fw-600'>" . $list_ad->ad_condition . "</p>";
                                            //die();
                                        }

                                        if ($list_ad->cat == 'Property') {
                                            echo "<p class='fw-600'>" . $list_ad->price . "</p>";
                                            echo "<p class='fw-600'>" . $list_ad->area_unit . "</p>";

                                            //    die();
                                        }
                                        if ($list_ad->cat == 'Mobile') {
                                            echo "<p class='fw-600'>" . $list_ad->price . "</p>";
                                            //    die();
                                        }
                                        ?>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12 sec-4 my-2">
                                <h3>Description</h3>
                                <div class="pt-1">

                                    <p><?php echo $list_ad->description; ?></p>
                                </div>
                                <div class="pt-2">

                                </div>
                                <div class="pt-2">

                                </div>
                                <div class="pt-2">

                                </div>
                                <div class="pt-2">

                                </div>
                            </div>
                        </div>
                        <!-- section end -->
                        <!--section -->
                        <section class="gray-section related" style="padding: 0px;border-top: 1px solid #d8dfe0;">
                            <div class="container">
                                <div class="sec-title">
                                    <h2 style="text-align: left;font-size: 24px;font-weight: 600;padding: 15px;">Related ads</h2>
                                </div>
                            </div>
                            <!-- carousel -->
                            <div class="list-carousel fl-wrap card-listing ">
                                <!--listing-carousel-->
                                <div class="listing-carousel fl-wrap ">
                                    <?php foreach ($list_related_ads as $key => $related) {
                                        $title = str_replace(' ', '-', $related->title) . '-';
                                    ?>

                                        <!--slick-slide-item-->
                                        <div class="slick-slide-item">
                                            <!-- listing-item -->

                                            <div class="listing-item">
                                                <article class="geodir-category-listing fl-wrap">

                                                    <a href="<?php echo base_url('single/' . $title . $related->id); ?>">
                                                        <div class="geodir-category-img">
                                                            <?php
                                                            $main_model = new MainModel;
                                                            $file_name =  $main_model->list_photo($related->id);
                                                            //echo $file_name;
                                                            if (!isset($file_name)) {
                                                                $file_name = '1.jpg';
                                                            }
                                                            ?>
                                                            <img src="<?php echo base_url('assets/images/all/' . $file_name . ''); ?>" alt="">
                                                            <div class="overlay"></div>
                                                            <div class="list-post-counter"><i class="fa fa-heart"></i></div>
                                                        </div>
                                                        <div class="geodir-category-content fl-wrap">
                                                            <p class="c-head"><?php echo substr($related->title, 0, 32) ?> </p>
                                                            <h3>Rs. <?php echo $related->price; ?> </h3>
                                                            <div class="geodir-category-options fl-wrap">
                                                                <div class="geodir-category-location"><a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i> 27th Brooklyn New York, NY 10065</a></div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </article>
                                            </div>
                                            <!-- listing-item end-->
                                        </div>
                                        <!--slick-slide-item end-->
                                    <?php } ?>
                                </div>
                                <!--listing-carousel end-->
                                <div class="swiper-button-prev sw-btn"><i class="fa fa-long-arrow-left"></i></div>
                                <div class="swiper-button-next sw-btn"><i class="fa fa-long-arrow-right"></i></div>
                            </div>
                            <!--  carousel end-->
                        </section>
                        <!-- section end -->
                    </div>
                    <!--box-widget-wrap -->

                    <div class="col-md-4 details-right">
                        <div class="box-widget-wrap">

                            <!--box-widget-item -->
                            <div class="box-widget-item fl-wrap">
                                <div class="box-widget widget-posts">
                                    <div class="box-widget-content">
                                        <ul>
                                            <li class="clearfix" style="margin-bottom: 0px;">
                                                <a href="#" class="widget-posts-img"><img src="<?php echo base_url('assets/images/avatar/avatar-bg.png'); ?>" alt=""></a>
                                                <div class="widget-posts-descr">
                                                    <a href="#" title="">Shopping Paradise</a>
                                                    <span class="widget-posts-date">Member since Sept 2014</span>
                                                    <a class="widget-posts-link" href="#">See All Listing<span><i class="fa fa-angle-right"></i></span></a>
                                                </div>

                                                <button class="btn flat-btn" onclick="showDiv()" id="myButton1"><!-- <i class="fa fa-phone" aria-hidden="true"> -->
                                                    <div style="display:block;" id="hidecell" class="fa fa-phone"> Show Phone Number </div>

                                                    <!-- </i>  -->
                                                    <div style="display:none;" id="showcell" class="fa fa-phone"> <?php echo $list_ad->phone_number; ?> </div>

                                                </button>
                                                <br><br>
                                                <button class="btn transparent-btn float-btn" style="margin: 0px;"> <i class="fa fa-comments-o" aria-hidden="true"></i> Chat </button>
                                            </li>
                                        </ul>

                                    </div>
                                </div>
                                <div class="box-widget widget-posts" style="margin-top: 15px">
                                    <div class="box-widget-content section-2">
                                        <h3>Delivery within 2 days </h3>
                                        <p>This delivery will be fulfilled by OLX Move in approx.</p>
                                        <button class="btn transparent-btn float-btn" style="margin: 0px;"> <i class="fa fa-truck" aria-hidden="true"></i> Buy with delivery </button>
                                    </div>
                                </div>
                                <div class="box-widget widget-posts" style="margin-top: 15px">
                                    <div class="box-widget-content section-2">
                                        <h3>Location</h3>
                                        <p><i class="fa fa-map-marker"></i> <?php echo $list_ad->neighbourhood . "," . $list_ad->city; ?></p>
                                    </div>
                                </div>
                                <div class="last-add">
                                    <p>AD ID <?php echo $list_ad->id; ?></p>
                                    <p><a href="#"><i class="fa fa-flag"></i> Report this ad</a></p>
                                </div>
                            </div>
                            <!--box-widget-item end -->
                        </div>
                    </div>
                    <!--box-widget-wrap end -->
                </div>
            </div>
        </section>
        <!-- section end-->
        <!-- </div> -->
        <!-- content end-->
    </div>
    <!-- wrapper end -->
</div>