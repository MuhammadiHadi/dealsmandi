            <!--footer -->
            <footer class="main-footer dark-footer">
                <div class="container py-2">
                    <div class="row">
                        <div class="col-md-3 p-2">
                            <div class="fs-1">
                                <span class="head-text">Popular Categories</span>
                                <ul>
                                    <li><a href="<?php echo base_url('/search/cars'); ?>"><span>Cars</span></a></li>
                                    <li><a href="<?php echo base_url('search/apartment-&-Flats'); ?>"><span>Flats for rent</span></a></li>
                                    <li><a href="<?php echo base_url('/search/Mobile-Phones'); ?>"><span>Mobile Phones</span></a></li>
                                    <li><a href="<?php echo base_url('/search/jobs'); ?>"><span>Jobs</span></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-3 p-2">
                            <div class="fs-1">
                                <span class="head-text">TRENDING SEARCHES</span>
                                <ul>
                                    <li><a href="<?php echo base_url('/search/bikes'); ?>"><span>Bikes</span></a></li>
                                    <li><a href="<?php echo base_url('/search/bikes'); ?>"><span>Watchs</span></a></li>
                                    <li><a href="<?php echo base_url('/search/Books and Magazines'); ?>"><span>Books</span></a></li>
                                    <li><a href="<?php echo base_url('/search/dogs'); ?>"><span>Dogs</span></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-3 p-2">
                            <div class="fs-1">
                                <span class="head-text">ABOUT US</span>
                                <ul>
                                    <li><a href="#"><span>About Dealsmandi.com</span></a></li>
                                    <li><a href="#"><span>Contact Us</span></a></li>
                                    <li><a href="#"><span>Dealsmandi for Businesses</span></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-3 p-2">
                            <div class="fs-1">
                                <span class="head-text">FOLLOW US</span>
                                <div class="footer-social">
                                    <ul>
                                        <li><a href="#" target="_blank" ><i class="fa fa-facebook-official"></i></a></li>
                                        <li><a href="#" target="_blank"><i class="fa fa-twitter"></i></a></li>
                                        <li><a href="#" target="_blank" ><i class="fa fa-chrome"></i></a></li>
                                        <li><a href="#" target="_blank" ><i class="fa fa-vk"></i></a></li>
                                        <li><a href="#" target="_blank" ><i class="fa fa-whatsapp"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="sub-footer fl-wrap">
                    <div class="container"><span class="copyright"> &#169; CityBook 2018 .  All rights reserved.</span></div>
                </div>

            </footer>
            <!--footer end  -->
            <a class="to-top"><i class="fa fa-angle-up"></i></a>
        </div>
        <!-- Main end -->


        <!--=============== scripts  ===============-->
        <script>
    function showDiv() {

    document.getElementById("showcell").style.display = "block"; 
    document.getElementById("hidecell").style.display = "none"; 
     // var elem = document.getElementById("myButton1");
     // elem.value="090454545";
     }
</script>
<script>
              function myFunction() {
                var x = document.getElementById("show");
                if (x.style.display === "block") {
                    x.style.display = "none";
                    } else {
                        x.style.display = "block";
                    }
              };
</script>
        <script>
            // (function() {
            //   const heart = document.getElementById('heart');
            //   heart.addEventListener('click', function() {
            //     heart.classList.toggle('red');
            //   });
            // })();
        </script>   
        <script type="text/javascript" src="<?php echo base_url('assets/js/jquery.min.js'); ?>"></script>
        <script type="text/javascript" src="<?php echo base_url('assets/js/newjs.js'); ?>"></script>
        <script type="text/javascript" src="<?php echo base_url('assets/js/plugins.js'); ?>"></script>
        <script type="text/javascript" src="<?php echo base_url('assets/js/scripts.js'); ?>"></script>   
        <!-- <script src="https://maps.googleapis.com/maps/api/js?key=YOURAPIKEYHERE&libraries=places&callback=initAutocomplete"></script> -->
        <script type="text/javascript" src="<?php echo base_url('assets/js/map-add.js'); ?>"></script>        
    </body>
</html>