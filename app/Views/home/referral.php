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
                        <h2 class="title">Referral</h2>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#"><i class="fa fa-home"></i> Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Referral</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>

        <!-- Background Curve -->
        <div class="breadcrumb-bg-curve">
            <img src="<?php echo base_url('assets/img/core-img/curve-5.png'); ?>" alt="">
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
                            <h4>Get <strong style="color: red;">20%</strong> cash reward for each referral. <br>Suggest <strong style="color: blue;">Taleemyapps.com</strong> to any kind of institute.</h4>
                        </div>
                        <span id="errors"></span>                      
                        <form action="<?php echo base_url('index.php/Main/referral_submit'); ?>" id="contactForm" method="post">
                            <!-- <input type="hidden" name="type_value" value="home_page"> -->
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <input required type="text" class="form-control mb-30" id="firstname"  name="your_name" placeholder="Your Name" ed-message="Please enter your name.">
                                         <p class="help-block text-danger"></p>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <input required type="text" class="form-control mb-30" id="email" name="your_org" placeholder="Your Orginization" ed-message="Please enter your Orginization Name.">
                                        <p class="help-block text-danger"></p>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <input required type="text" class="form-control mb-30" id="phone" name="your_phone" placeholder="Your Phone" ed-message="Please enter your phone.">
                                        <p class="help-block text-danger"></p>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <input type="email" class="form-control mb-30" id="phone" name="your_email" placeholder="Your email">
                                        <p class="help-block text-danger"></p>
                                    </div>
                                </div>                                
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <input required type="text" class="form-control mb-30" id="phone" name="referring_person_name" placeholder="Referring person name" ed-message="Please enter referring person name.">
                                        <p class="help-block text-danger"></p>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <input required type="text" class="form-control mb-30" id="phone" name="referring_person_org" placeholder="Referral person Orginization" ed-message="Please enter referring person Orginization.">
                                        <p class="help-block text-danger"></p>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <input required type="text" class="form-control mb-30" id="phone" name="referring_person_mobile" placeholder="Referring person phone number">
                                        <p class="help-block text-danger"></p>
                                    </div>
                                </div>  
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <input type="email" class="form-control mb-30" id="phone" name="referring_person_email" placeholder="Referring person email">
                                        <p class="help-block text-danger"></p>
                                         <span style="color:red;"><?php 
                                             echo $this->session->get('success_msg');
                                         ?></span>
                                    </div>
                                </div>
<!--                                                                                                                                
                                <div class="col-12">
                                    <div class="form-group">
                                        <textarea class="form-control mb-30" id="message" name="message" rows="8" cols="80" placeholder="Enter message here."></textarea>
                                        <p class="help-block text-danger"></p>
                                         <span style="color:red;"><?php 
                                             echo $this->session->get('success_msg');
                                         ?></span>
                                    </div>
                                </div>
-->
                                <div class="col-12">
                                    <button class="btn uza-btn btn-3 mt-15" id="sub" >Submit</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>


            </div>
        </div>
    </section>
    <!-- ***** Contact Area End ***** -->

