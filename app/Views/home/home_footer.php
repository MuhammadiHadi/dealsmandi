    <!-- ***** Footer Area Start ***** -->
    <footer class="footer-area section-padding-80-0">
        <div class="container">
            <div class="row justify-content-between">

                <!-- Single Footer Widget -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-footer-widget mb-80">
                        <!-- Widget Title -->
                        <h4 class="widget-title">Contact Us</h4>

                        <!-- Footer Content -->
                        <div class="footer-content mb-15">
                            <h3>+92 3469307639</h3>
                            <p>G-11 Markaz, Islamabad, Pakistan <br> info@taleemyapps.com</p>
                        </div>
                        <p class="mb-0">Mon - Fri: 9:00 - 19:00 <br>
                            Closed on Weekends</p>
                    </div>
                </div>

                <!-- Single Footer Widget -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-footer-widget mb-80">
                        <!-- Widget Title -->
                        <h4 class="widget-title">Quick Link</h4>

                        <!-- Nav -->
                        <nav>
                            <ul class="our-link">
                                <li><a href="<?php echo base_url(); ?>">Home</a></li>
                                <li><a href="https://taleemyapps.com/school/demo">Demo</a></li>
                                <!-- <li><a href="<?php echo base_url('schools'); ?>">Our Schools</a></li> -->
                                <li><a href="<?php echo base_url('pricing'); ?>">Pricing</a></li>
                                <!-- <li><a href="<?php echo base_url('referral'); ?>">Referral</a></li> -->                                
                                <li><a href="<?php echo base_url('contact'); ?>">Contact Us</a></li>

                            </ul>
                        </nav>
                    </div>
                </div>

                <!-- Single Footer Widget -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-footer-widget mb-80">
                        <!-- Widget Title -->
                        <h4 class="widget-title">Resources</h4>

                        <!-- Nav -->
                        <nav>
                            <ul class="our-link">
                                <li><a href="<?php echo base_url('documentations'); ?>">Documentations</a></li>
                                <li><a href="<?php echo base_url('privacy'); ?>">Privacy</a></li>
                                <li><a href="<?php echo base_url('termsofuse'); ?>">Term & Conditions</a></li>
                                <li><a href="#"></a></li>
                                <li><a href="#"></a></li>
                            </ul>
                        </nav>
                    </div>
                </div>

                <!-- Single Footer Widget -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-footer-widget mb-80">
                        <!-- Widget Title -->
                        <h4 class="widget-title">About Us</h4>
                        <p>The School Management Software | that’s Simple, Affordable and Flexible</p>

                        <!-- Copywrite Text -->
                        <div class="copywrite-text mb-30">
                            <!-- <p>&copy; Copyright 2018 <a href="#">Colorlib</a>.</p> -->
                        </div>

                        <!-- Social Info -->
                        <div class="footer-social-info">
                            <a href="https://www.facebook.com/Keep-Schoolin-1676602015777827/" target="_blank" class="facebook" data-toggle="tooltip" data-placement="top" title="Facebook"><i class="fa fa-facebook"></i></a>
                            <a href="https://twitter.com/taleemyapps" target="_blank" class="twitter" data-toggle="tooltip" data-placement="top" title="Twitter"><i class="fa fa-twitter"></i></a>
                            <a href="https://www.pinterest.com/mnadeem0966/school-management-software/" target="_blank" class="pinterest" data-toggle="tooltip" data-placement="top" title="Pinterest"><i class="fa fa-pinterest"></i></a>
                            <a href="#" target="_blank" class="instagram" data-toggle="tooltip" data-placement="top" title="Instagram"><i class="fa fa-instagram"></i></a>
                            <a href="https://www.youtube.com/channel/UC2RH6tfFeM1xJuVAIZvhbHw" target="_blank" class="youtube" data-toggle="tooltip" data-placement="top" title="YouTube"><i class="fa fa-youtube-play"></i></a>
                        </div>
                    </div>
                </div>

            </div>

 <div class="row" style="margin-bottom: 30px;">
                
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
<!-- Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a> -->
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </div>

        </div>
    </footer>
    <!-- ***** Footer Area End ***** -->

    <!-- ******* All JS Files ******* -->
    <!-- jQuery js -->
    <script src="<?php echo base_url('assets/js/jquery.min.js'); ?>"></script>
    <!-- Popper js -->
    <script src="<?php echo base_url('assets/js/popper.min.js'); ?>"></script>
    <!-- Bootstrap js -->
    <script src="<?php echo base_url('assets/js/bootstrap.min.js'); ?>"></script>
    <!-- All js -->
    <script src="<?php echo base_url('assets/js/uza.bundle.js'); ?>"></script>
    <!-- Active js -->
    <script src="<?php echo base_url('assets/js/default-assets/active.js'); ?>"></script>
    <!-- validate js - contact form -->
    <script src="<?php echo base_url('assets/js/jquery.validate.min.js'); ?>"></script>



</body>

</html>
<script type="text/javascript">
    
$(document).ready(function () {


    $('#contactForm').validate({ // initialize the plugin
        rules: {
            firstname: {
                required: true
                
            },
            email: {
                required: true,
                email: true
            },
            phone: {
                 required: true
                 
            },
            message:{
                required:true
            }

        },

        messages: {
   firstname: '<p style="color:red;">Please enter your name.</p>',
   email: '<p style="color:red;">Please enter a valid email address.</p>',
   phone: '<p style ="color: red;">Please enter mobile number.</p>',
   message: '<p style ="color:red"> Please enter message.</p>',
},
showErrors: function(errorMap, errorList) {
        if(errorList.length) {
            $("#errors").html(errorList[0].message);
        }
    }
    });
});
</script>
<script type="text/javascript">
    
    $("#message").on("keydown", function (e) {
    var c = $("#message").val().length;
    if(c == 0)
        return e.which !== 32;
});
    $("#firstname").on("keydown", function (e) {
    var b = $("#firstname").val().length;
    if(b == 0)
        return e.which !== 32;
});
$("#phone").on("keydown", function (e) {
    var b = $("#phone").val().length;
    if(b == 0)
        return e.which !== 32;
});
$("#email").on("keydown", function (e) {
    var b = $("#email").val().length;
    if(b == 0)
        return e.which !== 32;
});
/*
if($("#personID").val()=="") {
        $("#error_msg").html("Field needs filling");
    }
*/

</script>