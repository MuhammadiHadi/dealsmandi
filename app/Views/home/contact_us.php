<?php
       $this->session = \Config\Services::session();
       $this->session->start();
?>
    <!-- ***** Breadcrumb Area Start ***** -->
    <div class="breadcrumb-area">
        <div class="container h-100">
            <div class="row h-100 align-items-end">
                <div class="col-12">
                    <div class="breadcumb--con">
                        <h2 class="title">Contact</h2>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="<?php echo base_url(); ?>"><i class="fa fa-home"></i> Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Contact</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>

        <!-- Background Curve -->
        <div class="breadcrumb-bg-curve">
            <img src="<?php echo base_url('assets/img/core-img/curve-5.png'); ?>" alt="Taleemyapps.com - school management software">
        </div>
    </div>
    <!-- ***** Breadcrumb Area End ***** -->

    <!-- ***** Contact Area Start ***** -->
    <section class="uza-contact-area section-padding-80">
        <div class="container">
            <div class="row justify-content-between">
                <!-- Contact Form -->
                <div class="col-12 col-lg-8">
                    <div class="uza-contact-form mb-80">
                        <div class="contact-heading mb-50">
                            <h4>Thank you for your interest. <br>Please fill out the form below.</h4>
                        </div>
                        <span id="errors"></span>
                        <form action="<?php echo base_url('contact_submit'); ?>" id="contactForm" method="post">
                            <input type="hidden" name="type_value" value="home_page">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <input type="text" class="form-control mb-30" id="firstname"  name="firstname" placeholder="Name" ed-message="Please enter your name.">
                                         <p class="help-block text-danger"></p>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <input type="email" class="form-control mb-30" id="email" name="email" placeholder="Email" ed-message="Please enter your email.">
                                        <p class="help-block text-danger"></p>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <input type="text" class="form-control mb-30" id="phone" name="phone" placeholder="Phone">
                                        <p class="help-block text-danger"></p>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <textarea class="form-control mb-30" id="message" name="message" rows="8" cols="80" placeholder="Message"></textarea>
                                        <p class="help-block text-danger"></p>
                                         <span style="color:red;"><?php 
                                             echo $this->session->get('success_msg');
                                         ?></span>
                                    </div>
                                </div>
                                <div class="g-recaptcha" data-sitekey="6LcGwIskAAAAAK8Y9FsbbxvkeOHl_Dc_zPLubbfQ"></div> 
                                <div class="col-12">
                                    <button class="btn uza-btn btn-3 mt-15" id="sub" >Contact Us</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

                <!-- Single Contact Card -->
                <div class="col-12 col-lg-3">
                    <div class="contact-sidebar-area mb-80">
                        <!-- Single Sidebar Area -->
                        <div class="single-contact-card mb-50">
                            <h4>Contact Us</h4>
                            <h3>(+92) 346 930 7639</h3>
                            <h6>info@taleemyapps.com</h6>
                            <h6>Mon - Fri: 9:00 - 19:00 <br>Closed on Weekends</h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Contact Area End ***** -->

  <script src='https://www.google.com/recaptcha/api.js'></script>
<!-- https://www.tutsmake.com/codeigniter-php-google-recaptcha-form-validation-demo/ -->