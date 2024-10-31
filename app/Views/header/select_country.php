<!-- theme page: listing-single3.html -->
<?php

use App\Models\MainModel;
?>
<!--  wrapper  -->
<div id="wrapper">
    <!-- Content-->
    <div class="content">
        <!--section -->
        <section id="sec2">
            <div class="container">
                <div class="section-title">
                    <h2>Select a Country</h2>
                    <div class="section-subtitle">Catalog of Categories</div>
                    <span class="section-separator"></span>
                    <p>Explore some of the best tips from around the city from our partners and friends.</p>
                </div>
                <!-- portfolio start -->
                <div class="gallery-items fl-wrap mr-bot spad">
                    <!-- gallery-item-->
                    <div class="gallery-item">
                        <div class="grid-item-holder">
                            <div class="listing-item-grid">
                                <div class="bg" data-bg="<?php echo base_url('assets/images/all/vehicle.jpg'); ?>"></div>
                                <div class="listing-counter"><span>10 </span> Locations</div>
                                <div class="listing-item-cat">
                                    <h3><a href="listing.html">Vehicles</a></h3>
                                    <p></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- gallery-item end-->
                    <!-- gallery-item-->
                    <div class="gallery-item gallery-item-second">
                        <div class="grid-item-holder">
                            <div class="listing-item-grid">
                                <div class="bg" data-bg="<?php echo base_url('assets/images/all/property.jpg'); ?>"></div>
                                <div class="listing-counter"><span>6 </span> Locations</div>
                                <div class="listing-item-cat">
                                    <h3><a href="listing.html">Properties</a></h3>
                                    <p></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- gallery-item end-->
                    <!-- gallery-item-->
                    <div class="gallery-item">
                        <div class="grid-item-holder">
                            <div class="listing-item-grid">
                                <div class="bg" data-bg="<?php echo base_url('assets/images/all/computer.jpg'); ?>"></div>
                                <div class="listing-counter"><span>21 </span> Locations</div>
                                <div class="listing-item-cat">
                                    <h3><a href="listing.html">Computers and Laptops</a></h3>
                                    <p></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- gallery-item end-->
                    <!-- gallery-item-->
                    <div class="gallery-item">
                        <div class="grid-item-holder">
                            <div class="listing-item-grid">
                                <div class="bg" data-bg="<?php echo base_url('assets/images/all/furniture.jpg'); ?>"></div>
                                <div class="listing-counter"><span>7 </span> Locations</div>
                                <div class="listing-item-cat">
                                    <h3><a href="listing.html">Furniture</a></h3>
                                    <p></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- gallery-item end-->
                    <!-- gallery-item-->
                    <div class="gallery-item">
                        <div class="grid-item-holder">
                            <div class="listing-item-grid">
                                <div class="bg" data-bg="<?php echo base_url('assets/images/all/bicycle.jpg'); ?>"></div>
                                <div class="listing-counter"><span>15 </span> Locations</div>
                                <div class="listing-item-cat">
                                    <h3><a href="listing.html">Bicycle</a></h3>
                                    <p></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- gallery-item end-->
                </div>
                <!-- portfolio end -->
                <a href="listing.html" class="btn  big-btn circle-btn dec-btn  color-bg flat-btn">View All<i class="fa fa-eye"></i></a>
            </div>
        </section>
        <!-- section end -->
        <!--section -->
        <section class="gray-section">
            <div class="container">
                <div class="section-title">
                    <h2>Popular listings</h2>
                    <div class="section-subtitle">Best Listings</div>
                    <span class="section-separator"></span>
                    <p>Nulla tristique mi a massa convallis cursus. Nulla eu mi magna.</p>
                </div>
            </div>
            <!-- carousel -->
            <div class="list-carousel fl-wrap card-listing ">
                <!--listing-carousel-->
                <div class="listing-carousel  fl-wrap ">
                    <!--slick-slide-item-->
                    <?php foreach ($list_featured_ads as $key => $featured) { ?>
                        <div class="slick-slide-item">
                            <!-- listing-item -->
                            <div class="listing-item">
                                <article class="geodir-category-listing fl-wrap">
                                    <div class="geodir-category-img">
                                        <?php
                                        $main_model = new MainModel;
                                        $file_name =  $main_model->list_photo($featured->id);
                                        //echo $file_name;
                                        if (!isset($file_name)) {
                                            $file_name = '1.jpg';
                                        }

                                        ?>
                                        <img src="<?php echo base_url('assets/images/all/' . $file_name . ''); ?>" alt="">
                                        <div class="overlay"></div>
                                        <div class="list-post-counter"><span>4</span><i class="fa fa-heart"></i></div>
                                    </div>
                                    <div class="geodir-category-content fl-wrap">
                                        <?php

                                        $cat_name =  $main_model->list_cat_name(1);
                                        //echo $file_name;
                                        if (!isset($cat_name)) {
                                            $cat_name = 'No category';
                                        }

                                        ?>

                                        <a class="listing-geodir-category" href="listing.html"><?php echo $cat_name; ?></a>
                                        <div class="listing-avatar"><a href="author-single.html"><img src="
<?php
                        $user_photo =  $main_model->list_user_photo($featured->ad_user);
                        //echo $file_name;
                        if (!isset($user_photo)) {
                            $user_photo = '1.jpg';
                        }

?>

                                                    <?php echo base_url('assets/images/users/' . $user_photo . ''); ?>" alt=""></a>
                                            <span class="avatar-tooltip">Added By <strong><?php echo $featured->name; ?></strong></span>
                                        </div>
                                        <?php
                                        $title = str_replace(' ', '-', $featured->title) . '-';
                                        ?>
                                        <h3><a href="<?php echo site_url('single/' . $title . $featured->id); ?>"><?php echo $featured->title; ?></a></h3>
                                        <p><?php echo $featured->ad_description; ?> </p>
                                        <div class="geodir-category-options fl-wrap">
                                            <div class="listing-rating card-popup-rainingvis" data-starrating2="5">
                                                <span>(7 reviews)</span>
                                            </div>
                                            <div class="geodir-category-location"><a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i> 27th Brooklyn New York, NY 10065</a></div>
                                        </div>
                                    </div>
                                </article>
                            </div>
                            <!-- listing-item end-->
                        </div>
                    <?php } ?>
                    <!--slick-slide-item end-->
                </div>
                <!--listing-carousel end-->
                <div class="swiper-button-prev sw-btn"><i class="fa fa-long-arrow-left"></i></div>
                <div class="swiper-button-next sw-btn"><i class="fa fa-long-arrow-right"></i></div>
            </div>
            <!--  carousel end-->
        </section>
        <!-- section end -->


    </div>
    <!-- Content end -->
</div>
<!-- wrapper end -->