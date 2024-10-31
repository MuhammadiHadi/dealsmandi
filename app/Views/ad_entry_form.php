<?php

use App\Models\MainModel;

$main_model = new MainModel;
?>

<!DOCTYPE HTML>
<html lang="en">

<head>
    <!--=============== basic  ===============-->
    <meta charset="UTF-8">
    <title>DealsMandi.com</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="robots" content="index, follow" />
    <meta name="keywords" content="" />
    <meta name="description" content="" />
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

    <!-- Main   -->
    <div id="main" class="fm-head">
        <header>
            <div class="logo">
                <a href="<?php echo base_url(); ?>"><i class="fa fa-arrow-left"></i><img src="<?php echo base_url('assets/images/logo2.png'); ?>" alt="" width="130px"></a>
            </div>
        </header>
        <!-- wrapper -->
        <div id="" class="form-page">
            <!--content -->
            <div class="content">
                <!--section -->
                <section id="sec1">
                    <div class="form-page-title"><span>POST YOUR AD</span></div>
                    <!-- container -->
                    <div class="container">
                        <!-- profile-edit-wrap -->
                        <div class="profile-edit-wrap">

                            <div class="row">
                                <div class="col-md-12">
                                    <!-- enctype="multipart/form-data" name="data_register" data-parsley-validate class="form-horizontal form-label-left"-->
                                    <form method="post" action="<?php echo base_url('form/submit_ad'); ?>" enctype="multipart/form-data">

                                        <!-- profile-edit-container-->
                                        <div class="profile-edit-container add-list-container" style="padding: 0px;">
                                            <div class="profile-edit-header fl-wrap" style="padding: 20px 20px 0px 20px;">
                                                <h4>SELECT CATEGORY</h4>
                                            </div>
                                            <div class="custom-form" style="text-align: left;padding: 0px 20px 20px 20px;">

                                                <div class="custom-form py-2">
                                                    <label>Main Category</label>
                                                    <select name="main_cat" data-placeholder="Location" class="chosen-select">
                                                        <?php foreach ($list_main_cat as $key => $main_cat) { ?>
                                                            <option value="<?php echo $main_cat->id; ?>"> <?php echo $main_cat->category_name; ?> </option> <?php } ?>
                                                    </select>
                                                </div>

                                                <div class="custom-form py-2">
                                                    <label>Sub Category</label>
                                                    <!-- id="sub_cat"  -->
                                                    <select name="sub_cat" required="required" data-placeholder="Location">
                                                        <option value=""> Select Section </option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- profile-edit-container end-->
                                        <!-- profile-edit-container-->
                                        <div class="profile-edit-container add-list-container">
                                            <div class="profile-edit-header fl-wrap">
                                                <h4>INCLUDE SOME DETAILS</h4>
                                            </div>
                                            <!-- fa-briefcase  -->
                                            <div class="custom-form">
                                                <label>Ad title<i class="fa "></i></label>
                                                <input name="title" type="text" required="required" placeholder="Enter Ad Title here " value="" />
                                                <span class="cus-bot">Mention the key features of your item (e.g. brand, model, age, type)</span>
                                                <span style="position: absolute;right: 0px;">0/70</span>
                                            </div>
                                            <div class="custom-form" style="padding-top: 15px;">
                                                <label>Description</label>
                                                <textarea name="ad_description" required="required" cols="40" rows="3" placeholder=""></textarea>
                                                <span class="cus-bot">Include condition, features and reason for selling</span>
                                                <span style="position: absolute;right: 0px;">0/4096</span>
                                            </div>
                                            <div class="custom-form py-2">
                                                <label>Brand</label>
                                                <select name="brand" data-placeholder="Location" class="chosen-select">
                                                    <option>Popular Brand</option>
                                                    <option>Apple</option>
                                                    <option>Brooklyn</option>
                                                    <option>Samsung</option>
                                                    <option>Huawei</option>
                                                    <option>Lenovo</option>
                                                    <option>Others</option>
                                                    <option>Apple</option>
                                                    <option>Dany Tabs</option>
                                                    <option>Huawei</option>
                                                    <option>Lenovo</option>
                                                    <option>Amazon</option>
                                                    <option>Asus</option>
                                                </select>
                                            </div>
                                        </div>
                                        <!-- profile-edit-container end-->
                                        <!-- profile-edit-container-->
                                        <div class="profile-edit-container add-list-container">
                                            <div class="profile-edit-header fl-wrap">
                                                <h4>SET A PRICE</h4>
                                            </div>
                                            <div class="custom-form ">
                                                <label>Price
                                                    <span class="f16">
                                                        <span class="f17">
                                                            RS
                                                        </span>
                                                    </span>
                                                </label>
                                                <input name="price" required="required" type="number" placeholder="" value="" />
                                            </div>
                                        </div>
                                        <!-- profile-edit-container end-->
                                        <!-- profile-edit-container-->
                                        <div class="profile-edit-container add-list-container">
                                            <div class="profile-edit-header fl-wrap">
                                                <h4>UPLOAD UP TO 12 PHOTOS</h4>
                                            </div>
                                            <div class="custom-form">
                                                <div class="row">
                                                    <div class="col-md-2">
                                                        <!-- act-widget-->
                                                        <div class="act-widget fl-wrap">
                                                            <div class="add-list-media-wrap">
                                                                <div class="fu-text">
                                                                    <span><i class="fa fa-picture-o"></i> </span>
                                                                    <div class="photoUpload-files fl-wrap"></div>
                                                                </div>
                                                                <input type="file" name="fileuploads[]" class="upload" multiple>
                                                            </div>
                                                        </div>
                                                        <!-- act-widget end-->
                                                        <!-- act-widget-->
                                                        <div class="act-widget fl-wrap">
                                                            <div class="add-list-media-wrap">
                                                                <div class="fu-text">
                                                                    <span><i class="fa fa-picture-o"></i> </span>
                                                                    <div class="photoUpload-files fl-wrap"></div>
                                                                </div>
                                                                <input type="file" name="fileuploads[]" class="upload" multiple>
                                                            </div>
                                                        </div>
                                                        <!-- act-widget end-->
                                                    </div>
                                                    <!-- col-md-2 end-->
                                                    <div class="col-md-2">
                                                        <!-- act-widget-->
                                                        <div class="act-widget fl-wrap">
                                                            <div class="add-list-media-wrap">
                                                                <div class="fu-text">
                                                                    <span><i class="fa fa-picture-o"></i> </span>
                                                                    <div class="photoUpload-files fl-wrap"></div>
                                                                </div>
                                                                <input type="file" name="fileuploads[]" class="upload" multiple>
                                                            </div>
                                                        </div>
                                                        <!-- act-widget end-->
                                                        <!-- act-widget-->
                                                        <div class="act-widget fl-wrap">
                                                            <div class="add-list-media-wrap">
                                                                <div class="fu-text">
                                                                    <span><i class="fa fa-picture-o"></i> </span>
                                                                    <div class="photoUpload-files fl-wrap"></div>
                                                                </div>
                                                                <input type="file" name="fileuploads[]" class="upload" multiple>
                                                            </div>
                                                        </div>
                                                        <!-- act-widget end-->
                                                    </div>
                                                    <!-- col-md-2 end-->
                                                    <div class="col-md-2">
                                                        <!-- act-widget-->
                                                        <div class="act-widget fl-wrap">
                                                            <div class="add-list-media-wrap">
                                                                <div class="fu-text">
                                                                    <span><i class="fa fa-picture-o"></i> </span>
                                                                    <div class="photoUpload-files fl-wrap"></div>
                                                                </div>
                                                                <input type="file" name="fileuploads[]" class="upload" multiple>
                                                            </div>
                                                        </div>
                                                        <!-- act-widget end-->
                                                        <!-- act-widget-->
                                                        <div class="act-widget fl-wrap">
                                                            <div class="add-list-media-wrap">
                                                                <div class="fu-text">
                                                                    <span><i class="fa fa-picture-o"></i> </span>
                                                                    <div class="photoUpload-files fl-wrap"></div>
                                                                </div>
                                                                <input type="file" name="fileuploads[]" class="upload" multiple>
                                                            </div>
                                                        </div>
                                                        <!-- act-widget end-->
                                                    </div>
                                                    <!-- col-md-2 end-->
                                                    <div class="col-md-2">
                                                        <!-- act-widget-->
                                                        <div class="act-widget fl-wrap">
                                                            <div class="add-list-media-wrap">
                                                                <div class="fu-text">
                                                                    <span><i class="fa fa-picture-o"></i> </span>
                                                                    <div class="photoUpload-files fl-wrap"></div>
                                                                </div>
                                                                <input type="file" name="fileuploads[]" class="upload" multiple>
                                                            </div>
                                                        </div>
                                                        <!-- act-widget end-->
                                                        <!-- act-widget-->
                                                        <div class="act-widget fl-wrap">
                                                            <div class="add-list-media-wrap">
                                                                <div class="fu-text">
                                                                    <span><i class="fa fa-picture-o"></i> </span>
                                                                    <div class="photoUpload-files fl-wrap"></div>
                                                                </div>
                                                                <input type="file" name="fileuploads[]" class="upload" multiple>
                                                            </div>
                                                        </div>
                                                        <!-- act-widget end-->
                                                    </div>
                                                    <!-- col-md-2 end-->
                                                </div>
                                                <!-- row end-->

                                                <span class="cus-bot">For the cover picture we recommend using the landscape mode.</span>
                                            </div>
                                        </div>
                                        <!-- profile-edit-container end-->

                                        <!-- profile-edit-container-->
                                        <div class="profile-edit-container add-list-container">
                                            <div class="profile-edit-header fl-wrap">
                                                <h4>YOUR AD'S LOCATION</h4>
                                            </div>
                                            <div class="custom-form">
                                                <label>Location</label>
                                                <select name="location" data-placeholder="Location" class="chosen-select">
                                                    <?php foreach ($list_locations as $key => $locations) { ?>
                                                        <option value="<?php echo $locations->id; ?>"> <?php echo $locations->location_title; ?> </option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                            <div class="custom-form">
                                                <label>City</label>
                                                <select name="city" data-placeholder="Location" class="chosen-select">
                                                    <option value=""> Select City </option>
                                                </select>
                                            </div>
                                            <!--        <div class="custom-form">
            <label>Neighbourhood</label>
                <select name="neighbourhood" data-placeholder="Location" class="chosen-select" >
                <?php foreach ($list_cities as $key => $cities) { ?>
                <option value="<?php echo $cities->id; ?>"> <?php echo $cities->city_name; ?> </option>
                          <?php } ?>
                </select>
        </div>                                            
-->
                                        </div>
                                        <!-- profile-edit-container end-->
                                        <!-- profile-edit-container-->
                                        <div class="profile-edit-container add-list-container" style="margin-bottom: 20px">
                                            <div class="profile-edit-header fl-wrap">
                                                <h4>REVIEW YOUR DETAILS</h4>
                                            </div>
                                            <div class="custom-form">
                                                <div class="row" style="padding: 25px 0px">
                                                    <div class="review-profile col-md-1">
                                                        <img src="<?php echo base_url('assets/images/avatar/1.jpg'); ?>" alt="">
                                                    </div>
                                                    <div class="review-name col-md-11">
                                                        <label for="">Name</label>
                                                        <input name="ad_user" type="text" placeholder="USER NAME" style="padding: 15px 20px 15px 20px; width: 100%" />
                                                    </div>
                                                </div>


                                                <input name="phone_no" type="number" placeholder="Phone Number" value="" />
                                            </div>
                                        </div>
                                        <!-- profile-edit-container end-->
                                        <div class="submit">
                                            <!-- aria-hidden="true"                                             -->
                                            <button class="btn big-btn  color-bg flat-btn" type="submit">Post Now <i class="fa fa-paper-plane-o"></i></button>
                                        </div>
                                    </form>
                                </div>

                            </div>
                        </div>
                        <!--profile-edit-wrap end -->
                    </div>
                    <!--container end -->
                </section>
                <!-- section end -->
                <div class="limit-box fl-wrap"></div>

            </div>
        </div>
        <!-- wrapper end -->
        <!--footer -->
        <footer class="main-footer dark-footer">
            <div class="container py-2">
                <div class="row">
                    <div class="col-md-3 p-2">
                        <div class="fs-1">
                            <span class="head-text">Popular Categories</span>
                            <ul>
                                <li><a href="#"><span>Cars</span></a></li>
                                <li><a href="#"><span>Flats for rent</span></a></li>
                                <li><a href="#"><span>Mobile Phones</span></a></li>
                                <li><a href="#"><span>Jobs</span></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3 p-2">

                    </div>
                    <div class="col-md-3 p-2">
                        <div class="fs-1">
                            <span class="head-text">FOLLOW US</span>
                            <div class="footer-social">
                                <ul>
                                    <li><a href="#" target="_blank"><i class="fa fa-facebook-official"></i></a></li>
                                    <li><a href="#" target="_blank"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#" target="_blank"><i class="fa fa-chrome"></i></a></li>
                                    <li><a href="#" target="_blank"><i class="fa fa-vk"></i></a></li>
                                    <li><a href="#" target="_blank"><i class="fa fa-whatsapp"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="sub-footer fl-wrap">
                <div class="container"><span class="copyright"> &#169; CityBook 2018 . All rights reserved.</span></div>
            </div>

        </footer>
        <!--footer end  -->
        <a class="to-top"><i class="fa fa-angle-up"></i></a>
    </div>
    <!-- Main end -->
    <!--=============== scripts  ===============-->
    <script>
        function myFunction() {
            var x = document.getElementById("myDIV");
            if (x.style.display === "block") {
                x.style.display = "none";
            } else {
                x.style.display = "block";
            }
        };
    </script>
    <!-- dependent list for class / sections -->
    <!-- the following are 2 dependent lists, 1. class and section 
                                          2. class and student 
    in both class_id is referenced, so for class student the class_id 
                                        and for class section class_id2 will be used.

url: "<?php //echo base_url('schoolapp/users/sectionsAjax/'); 
        ?>"+"/"+classID,
-->
    <script type="text/javascript">
        $(document).ready(function() {
            $('select[name="main_cat"]').on('change', function() {
                var classID = $(this).val();
                if (classID) {
                    $.ajax({

                        url: "<?php echo base_url('sub_cat'); ?>" + "/" + classID,
                        type: "GET",
                        dataType: "json",
                        success: function(data) {
                            $('select[name="sub_cat"]').empty();
                            $.each(data, function(key, value) {
                                $('select[name="sub_cat"]').append('<option value="' + value.id + '">' + value.subcategory_name + '</option>');
                            });
                        }
                    });
                } else {
                    $('select[name="sub_cat"]').empty();
                }
            });
        });
    </script>

    <!-- 
 list for location / city / neighbourhood
-->
    <script type="text/javascript">
        $(document).ready(function() {
            $('select[name="location"]').on('change', function() {
                var classID = $(this).val();
                if (classID) {
                    $.ajax({

                        url: "<?php echo base_url('city'); ?>" + "/" + classID,
                        type: "GET",
                        dataType: "json",
                        success: function(data) {
                            $('select[name="city"]').empty();
                            $.each(data, function(key, value) {
                                $('select[name="city"]').append('<option value="' + value.id + '">' + value.city_name + '</option>');
                            });
                        }
                    });
                } else {
                    $('select[name="city"]').empty();
                }
            });
        });
    </script>


    <script type="text/javascript">
        $("#user_profile_pic").change(function() {
            //alert('This file size is: ' + this.files[0].size/1024/1024 + "MB");

            var val = $(this).val();

            switch (val.substring(val.lastIndexOf('.') + 1).toLowerCase()) {
                case 'jpg':
                    $("#imageerror").empty();
                    $("#imageerror").append('<label class="text-success"><span class="glyphicon glyphicon-ok"></span>Valid image</label>');
                    break;
                default:
                    $(this).val('');
                    $("#imageerror").empty();
                    $("#imageerror").append('<label class="text-danger"><span class="glyphicon glyphicon-remove"></span>Please Enter only jpg Image</label>');
                    // error message here
                    //alert("");
                    break;
            }
        });
    </script>
    <script type="text/javascript">
        $("#user_profile_pic").change(function() {
            var file_size = $(this)[0].files[0].size;
            if (file_size > 2097152) {
                //$("#file_error").html("File size is greater than 2MB");
                alert('File size is greater than 2MB');
                $(this).val('');
                $("#imageerror").empty();
                return false;
            }
        });
        // alert('This file size is: ' + this.files[0].size/1024/1024 + "MB");
    </script>
    <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script> -->
    <script type="text/javascript" src="<?php echo base_url('assets/js/jquery.min.js'); ?>"></script>
    <script type="text/javascript" src="<?php echo base_url('assets/js/plugins.js'); ?>"></script>
    <script type="text/javascript" src="<?php echo base_url('assets/js/scripts.js'); ?>"></script>
    <!-- <script src="https://maps.googleapis.com/maps/api/js?key=YOURAPIKEYHERE&libraries=places&callback=initAutocomplete"></script> -->
    <script type="text/javascript" src="<?php echo base_url('assets/js/map-add.js'); ?>"></script>
</body>

</html>