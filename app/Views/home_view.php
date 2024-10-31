<?php

use App\Models\MainModel;
?>

<section class="gray-section home-page">
    <div class="container">
        <div class="section-title">
            <h2 style="text-align: left;">Fresh recommendations</h2>
            <?php //echo "this is a test line"; die(); 
            ?>
        </div>
    </div>
    <div class="all-recom">
        <!--section one-->
        <div class="col-lg-12 mt-3">
            <div class="row">
                <?php foreach ($list_featured_ads as $key => $featured) {
                    $title = str_replace(' ', '-', $featured->title) . '-';
                    //echo "this is a test line"; 
                    //var_dump($featured); die();
                ?>

                    <!-- listing-item -->
                    <div class="col-md-6 col-lg-3">
                        <a href="<?php echo base_url('single/' . $title . $featured->id); ?>">
                            <div class="card">
                                <div class="search-anime">
                                    <?php
                                    $main_model = new MainModel;
                                    $file_name =  $main_model->list_photo($featured->id);
                                    //echo $file_name;
                                    if (!isset($file_name)) {
                                        $file_name = 'no_image.jpg';
                                    }

                                    ?>
                                    <img class="card-img-top" src="<?php echo base_url('public/adphotos/' . $file_name . ''); ?>" alt="Card image">
                                </div>
                                <div class="card-body">
                                    <div class="c-head"><a href="<?php echo base_url('single/' . $title . $featured->id); ?>"><?php echo $featured->title; ?></a>
                                        <span><i class="fa fa-heart" id="heart"></i></span>
                                    </div>
                                    <h4 class="card-title">Rs.<?php echo $featured->price; ?> </h4>
                                    <div class="card-footer">
                                        <i class="fa fa-map-marker" aria-hidden="true"></i>
                                        <span><?php echo $featured->neighbourhood . ', ' . $featured->city;  ?></span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- listing-item end-->
                <?php } ?>
            </div>

        </div>
        <!-- section one end -->
        <a href="blog.html" class="btn  big-btn circle-btn  dec-btn color-bg flat-btn">Load More<i class="fa fa-eye"></i></a>
    </div>
</section>
<!-- section end -->