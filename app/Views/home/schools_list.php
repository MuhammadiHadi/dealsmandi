    <!-- ***** Breadcrumb Area Start ***** -->
    <div class="breadcrumb-area">
        <div class="container h-100">
            <div class="row h-100 align-items-end">
                <div class="col-12">
                    <div class="breadcumb--con">
                        <h2 class="title">Schools List</h2>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="<?php echo base_url(); ?>"><i class="fa fa-home"></i> Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Schools List</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>

        <!-- Background Curve -->
        <div class="breadcrumb-bg-curve">
            <img src="./img/core-img/curve-5.png" alt="">
        </div>
    </div>
    <!-- ***** Breadcrumb Area End ***** -->

    <!-- ***** Services Area Start ***** -->
    <section class="uza-services-area section-padding-80-0">
        <div class="container">
            <div class="row">
<?php

                       foreach ($schoollist as $key => $fetch) { 
                    ?>
                <!-- Single Service Area -->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-service-area mb-80">
                        <!-- Service Icon -->
                        <div class="service-icon">
                            <!-- <i class="icon_cone_alt"></i> -->
                            <a href="<?php echo base_url('/school/'.$fetch->school_string); ?>"><img src="school_folder/school_logo.png" class="img_res team-pic"></a>
                        </div>
                        <h5><a href="https://<?php echo $fetch->school_string; ?>.taleemyapps.com" class="nohover"><h4 style="text-align: center;"><?php  echo $fetch->school_name;  ?></h4></a></h5>
                        <p></p>

                        <!-- <a href="https://<?php echo $fetch->school_string; ?>.taleemyapps.com"><img src="school_folder/school_logo.png" class="img_res team-pic"></a> -->
                        <!-- <a href="https://<?php echo $fetch->school_string; ?>.taleemyapps.com" class="nohover"><h4 style="text-align: center;"><?php  echo $fetch->school_name;  ?></h4></a> -->
                    </div>
                </div>
    <?php      
                        }
                    ?>
                <!-- Single Service Area -->

            </div>
        </div>
    </section>
    <!-- ***** Services Area End ***** -->
