<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet"></link>
  <style>
    /* Remove the navbar's default rounded borders and increase the bottom margin */ 
    .navbar {
      margin-bottom: 50px;
      border-radius: 0;
    }
    
    /* Remove the jumbotron's default bottom margin */ 
     .jumbotron {
      margin-bottom: 0;
    }
   
    /* Add a gray background color and some padding to the footer */
    footer {
    background-color: #37454D;
    color:#fff;
      padding: 10px;
    }
  </style>

  <div style="background-color:green;  height:90px; font-size: 30px;  text-align: center; color: white;" class="text-center">
  <!-- Give full URL -->
  <p style="padding-top: 25px;"> taleemyapps</p>
  </div>
 <br><br><br>
<div class="container" >    
  <div class="row">
    <div class="col-sm-12">
     <h3 style="font-weight:bold; margin-left:125px;">Referral </h3>
     <p style="margin-left:125px;"><?php if(isset($date)) { ?> Date: <?php echo $date; }?></p>
     <p style="margin-left:125px;"><?php if(isset($name)) { ?> From: <?php echo $name; } ?></p>
     <p style="margin-left:125px;"><?php if(isset($phone)) { ?> Phone: <?php  echo $phone; } ?></p>
     <p style="margin-left:125px;"><?php if(isset($email)) { ?> Email: <?php  echo $email; } ?></p> 
     <p style="margin-left:125px;"> ****************************** Referral information *********************** </p>
    <p style="margin-left:125px;"><?php if(isset($referring_person_name)) { ?> Referring person name: <?php  echo $referring_person_name; } ?></p>
    <p style="margin-left:125px;"><?php if(isset($referring_person_org)) { ?> Referring person org: <?php  echo $referring_person_org; } ?></p>
    <p style="margin-left:125px;"><?php if(isset($referring_person_mobile)) { ?> Referring person mobile: <?php  echo $referring_person_mobile; } ?></p>
    <p style="margin-left:125px;"><?php if(isset($referring_person_email)) { ?> Referring person Email: <?php  echo $referring_person_email; } ?></p>
    </div>
  </div>
</div>
<br><br><br>
<hr style="width: 620px;">
<br>
<footer  style="text-align: center;"  class="container-fluid text-center">
  © taleemyapps.com
</footer>