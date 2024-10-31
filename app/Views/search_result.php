<?php 
use App\Models\Search_model;
use App\Models\MainModel;

$main_model = new MainModel;
?>

            <!-- wrapper -->	
            <div id="wrapper" class="search-page">
                <!--  content  --> 
                <div class="content">
                    <!--  section  end--> 
                    <div class="main-head-section" style="">
                        <div class="container">
                            <ul class="d-flex">
                                <li><a href="<?php echo base_url(); ?>">Home</a></li> 
                                <li>
<?php if (isset($category)){ ?>
                / <a href="<?php echo base_url('/search/'.$category); ?>">
<?php echo $main_model->replace_dashes($category); ?>
                </a>
<?php }
else 
{ ?>
                <a href="<?php echo base_url('/search/'); ?>">
<?php echo ""; ?>
                </a>
<?php } ?>
    </li>
                            </ul>
                            <div>
<h3><?php if (isset($category)){ echo $main_model->replace_dashes($category)." in Pakistan"; } ?> </h3>
                            </div>
                        </div>
                    </div>

                    <!--  section  --> 
                    <section class="gray-bg no-pading no-top-padding" id="sec1" style="padding-top: 10px">
                        <div class="col-list-wrap fh-col-list-wrap  left-list">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="fil-1">Filters</div>
                                        <div class="fl-wrap">
                                            <!-- listsearch-input-wrap  -->  
                                            <div class="listsearch-input-wrap fl-wrap">
                                                <!-- <div class="listsearch-input-item">
                                                    <i class="mbri-key single-i"></i>
                                                    <input type="text" placeholder="Keywords?" value=""/>
                                                </div> -->
    <div class="sidebar">
        <ul class="nav-links"> 
            <li>
                        <div class="iocn-link">
                            <span class="link-name">Category</span>
                              <i class='bx bxs-chevron-down arrow' ></i>
                        </div>
                <ul class="sub-menu sub-menu1">
                    <li><a class="link_name" href="#">Category</a></li>
                    <li>
                    <a href="<?php echo base_url('/search/'); ?>">All Category</a>        
                </li>
                </ul>
<?php foreach ($list_main_cat as $key => $cats) { 
    //$title = str_replace(' ', '-', $featured->title).'-';
?>                
                <ul class="sub-menu sub-menu1">
                    <li><a class="link_name" href="#">Category</a></li>
                    <li style="padding-left: 10px;"><a href="<?php echo base_url('/search/'.$cats->name); ?>"><?php echo $cats->name; ?></a></li>
                <ul class="sub-menu2">
<!-- selected item -->  
<?php foreach ($main_model->list_sub_cat($cats->id) as $key => $sub_cats) { 
    //$title = str_replace(' ', '-', $featured->title).'-';
?>                

                    <li><a href="<?php echo base_url('/search/'.$main_model->replace_spaces($sub_cats->cat_name)); ?>" style="opacity:1;"><?php 
//$sub_cats_name = $main_model->list_main_cat($cats->id);

                    echo $sub_cats->cat_name; ?>(<?php echo
 $main_model->total_ads_sub_cat($sub_cats->cat_name);
 ?>
                    )</a></li>
<?php } ?>                    
                </ul>
                </ul>
<?php } ?>                

            </li>
        </ul>

        </div>
            <!-- <div class="listsearch-input-text" id="autocomplete-container">
                <label><i class="mbri-map-pin"></i> Enter Addres </label>
                    <input type="text" placeholder="Destination , Area , Street" id="autocomplete-input" class="qodef-archive-places-search" value=""/>
                    <a  href="#"  class="loc-act qodef-archive-current-location"><i class="fa fa-dot-circle-o"></i></a>
            </div> -->
            <div class="sidebar" style="margin-top: 20px;">
                <ul class="nav-links"> 
                    <li>
                        <div class="iocn-link">
                        <span class="link-name">LOCATIONS</span>
                            <i class='bx bxs-chevron-down arrow' ></i>
                        </div>
                            <ul class="sub-menu sub-menu1">
                              <li><a href="#" style="opacity:1;">Pakistan</a></li>
                            <?php foreach ($list_cities as $key => $cities) { ?>
                            <ul class="sub-menu2">
                              <li><a href="#"><?php echo $cities->city_name; ?>(<?php echo
 $main_model->total_city_ads($cities->city_name);
 ?>)</a></li>
                            </ul>
                        <?php } ?>
                          </li>
                                                        </ul>
                                                    </li>
                                                    </ul>
                                                </div>
                                                <div class="sidebar">
                                                    <ul class="nav-links"> 
                                                    <li>
                                                        <div class="iocn-link">
                                                            <span class="link-name">BRAND</span>
                                                            <i class='bx bxs-chevron-down arrow' ></i>
                                                        </div>
                <ul class="sub-menu">
                    <li><a class="link_name" href="#">BRAND</a></li>
                    <li><a href="#">Apple iPhone(65555)</a></li>
                    <li><a href="#">Samsung Mobile(28354)</a></li>
                    <li><a href="#">Vivo(20327) </a>
                    <li><a href="#">OPPO(16563)</a></li>
                    <li><a href="#">Infinix(14709</a></li>
                </ul>
                                                    </li>
                                                    </ul>
                                            </div>
                    <div class="sidebar">
                                                    <ul class="nav-links"> 
                                                    <li>
                                                        <div class="iocn-link">
                                                            <span class="link-name">CONDITION</span>
                                                            <i class='bx bxs-chevron-down arrow' ></i>
                                                        </div>
                                                        <ul class="sub-menu">
                                                            <!-- Checkboxes -->
                                                            <div class=" fl-wrap filter-tags">
                                                                <div class="filter-tags-wrap">
                                                                    <input id="check-a" type="checkbox" name="check" checked>
                                                                    <label for="check-a">Used(160140)</label>
                                                                </div>
                                                                <div class="filter-tags-wrap">
                                                                    <input id="check-b" type="checkbox" name="check">
                                                                    <label for="check-b">New(32934)</label>
                                                                </div>
                                                                <div class="filter-tags-wrap">  
                        <input id="check-c" type="checkbox" name="check">
                                                                    <label for="check-c">Open Box(10793)</label>
                                                                </div>
                        <div class="filter-tags-wrap">
                                                                    <input id="check-d" type="checkbox" name="check">
                                                                    <label for="check-d">For Parts or Not Working(1534)</label>
                                                                </div>
                                                                <div class="filter-tags-wrap">
                                                                    <input id="check-d" type="checkbox" name="check">
                                                                    <label for="check-d">Refurbished(448)</label>
                                                                </div>
                                                            </div>
                                                        </ul>
                                                    </li>
                                                    </ul>
                                                </div>
                                                <!-- hidden-listing-filter end -->
                                            </div>
                                            <!-- listsearch-input-wrap end -->
                                        </div>

                                    </div>

                                    <div class="col-md-8">
                                        <div class="listsearch-header fl-wrap">
                                            <h3>Results For : <span>
                        <?php 
if (isset($category)) {
                    $total_ads = $main_model->total_ads($category); 
                    echo $total_ads;
}
else {
    $category = NULL;
                 $total_ads = $main_model->total_ads($category); 
                    echo $total_ads;
}
                                             ?>+ ads</span></h3>
                                            <div class="listing-view-layout">
                                                <ul>
                                                    <li><a class="grid active" href="#"><i class="fa fa-th-large"></i></a></li>
                                                    <li><a class="list" href="#"><i class="fa fa-list-ul"></i></a></li>
                                                </ul>
                                            </div>
                                            <div class="short-list">
                                                <div class="short-label">SHORT BY:</div>
                                                <div class="short-list-select">
                                                    <select class="form-control input-sm">
                                                        <option value="featured">Featured</option>
                                                        <option value="rating">Rating</option>
                                                        <option value="price">Price</option>
                                                    </select>
                                                </div>
                                            </div>
                                           
                                        </div>
                                        
            <!-- list-main-wrap-->
            <div class="list-main-wrap fl-wrap card-listing">
<?php
// var_dump($list_cat_ads);
// die();

 foreach ($list_cat_ads as $key => $list_ads) { 
    
    $title = str_replace('/', '-', $list_ads->title).'-';

    //$title = serialize($title);
    //$title = addslashes($title);
$item = $title.$list_ads->id;
                        $item = str_replace(' ', '-', $list_ads->title);
                        $item = $item."-".$list_ads->id;
                        //echo "here is item=   ".$item;
                        
                        //echo base_url('single/'.$item); 
//die();
?>
            
                <!-- listing-item -->
                <div class="listing-item">
                    <article class="geodir-category-listing fl-wrap">
                        <a href="<?php echo base_url('single/'.$item); ?>" title="<?php echo $title; ?>">
<?php 
$main_model = new MainModel;
$file_name =  $main_model->list_photo($list_ads->id); 
//echo $file_name;
if (!isset($file_name)) { $file_name='1.jpg';}

?>

                        <div class="geodir-category-img">
                            <img src="<?php echo base_url('assets/images/all/'.$file_name.''); ?>" alt="">
                            <div class="overlay"></div>
                            <div class="list-post-counter"><span>4</span><i class="fa fa-heart"></i></div>
                            </div>
                        <div class="geodir-category-content fl-wrap">
                            <p class="c-head"><?php echo $list_ads->title; ?> </p>
                            <h3>Rs. <?php echo $list_ads->price; ?></h3>
                            <div class="geodir-category-options fl-wrap">
                            <div class="geodir-category-location"><a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i> <?php echo $list_ads->neighbourhood.",".$list_ads->city; ?></a></div>
                            </div>
                            </div></a>
                            </article>
                </div>
                <!-- listing-item end-->   
<?php } ?>

                                            <!-- pagination-->
                                            <div class="pagination">
                                                <a href="#" class="prevposts-link"><i class="fa fa-caret-left"></i></a>
                                                <a href="#" class="blog-page transition">1</a>
                                                <a href="#" class="blog-page current-page transition">2</a>
                                                <a href="#" class="blog-page transition">3</a>
                                                <a href="#" class="blog-page transition">4</a>
                                                <a href="#" class="nextposts-link"><i class="fa fa-caret-right"></i></a>
                                            </div>
                                        </div>
                                        <!-- list-main-wrap end-->                           
                                    </div>

                                </div>

                            </div>
                        </div>
                    </section>
                    <!--  section  end--> 

                </div>
                <!-- content end--> 
            </div>
            <!-- wrapper end -->

