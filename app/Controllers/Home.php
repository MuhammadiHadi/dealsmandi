<?php

namespace App\Controllers;

use App\Models\MainModel;

class Home extends BaseController
{
  public function index()
  {

    $main_model = new MainModel;
    //  dd( $main_model);

    $this->data['list_main_cat'] = $main_model->list_main_cat();

    //echo "this is home controller";
    //die();

    // list_4_all_cats($cat)
    // $this->data['list_main_cat']= $main_model->list_4_all_cats($cat);
    $this->data['list_cities'] = $main_model->list_cities();
    $this->data['list_featured_ads'] = $main_model->list_featured_ads();

    //echo "this is home controller";
    //die();


    //        return view('welcome_message');
    //$this->load->view('header', $this->data, FALSE);
    return view('header/header', $this->data)
      . view('home_view', $this->data)
      . view('header/footer');
  }

  //submit contact us form 

  public function reg_submit()
  {

    $main_model = new MainModel;
    $request = \Config\Services::request();

    // restrict empty form submission

    //echo "this is tes".$request->getPost('firstname'); die();

    if ($request->getPost('firstname') == NULL) {
      return redirect()->route('/');
    }

    // ***********************
    // test ip address 182.177.124.224
    $ip_address = $_SERVER['REMOTE_ADDR'];
    $geopluginURL = 'http://www.geoplugin.net/php.gp?ip=' . $ip_address;
    $addrDetailsArr = unserialize(file_get_contents($geopluginURL));
    $city = $addrDetailsArr['geoplugin_city'];
    $country = $addrDetailsArr['geoplugin_countryName'];

    if (!$city) {
      $city = 'Not Define';
    }
    if (!$country) {
      $country = 'Not Define';
    }

    //echo $country; die();

    // ***********************
    /*
      $recaptchaResponse = trim($request->getPost('g-recaptcha-response'));

//      $userIp   =   $request->getPost->ip_address();
         
      $secret='6Leoqa8UAAAAAMZ_Y0Wc330IpUUvu3KhRAmkWQfg'; // 'ENTER_YOUR_SECRET_KEY';
       
      $credential = array(
            'secret' => $secret,
            'response' => $request->getPost('g-recaptcha-response')
        );
 
      $verify = curl_init();
      curl_setopt($verify, CURLOPT_URL, "https://www.google.com/recaptcha/api/siteverify");
      curl_setopt($verify, CURLOPT_POST, true);
      curl_setopt($verify, CURLOPT_POSTFIELDS, http_build_query($credential));
      curl_setopt($verify, CURLOPT_SSL_VERIFYPEER, false);
      curl_setopt($verify, CURLOPT_RETURNTRANSFER, true);
      $response = curl_exec($verify);
 
      $status= json_decode($response, true);

      if($status['success']){ 
*/
    $date = date('y-m-d');

    $data = array(
      'first_name' => $request->getPost('firstname'),
      'request_date' => $date,
      //  'phone' => $request->getPost('phone'),
      'email' => $request->getPost('email'),
      'message' => $request->getPost('message'),
      'ip'   => $ip_address,
      'city'    => $city,
      'country'    => $country
    );

    //$this->load->model('Main_model');
    $result = $main_model->insrt_reg($data);
    //if result return true then  excute and  sending email
    if ($result) {
      return redirect()->route('/');
    } else {
      echo "failed";
    }
    /*         
         if($result){
            
            $type2 ="email"; 
            $date = date('M-d-Y H:i:s');

            $name = $this->input->post('firstname');
            $phone = $this->input->post('phone');
            $email = $this->input->post('email');
            $message = $this->input->post('message');

            $toemail = "info@keepschoolin.com";
            //$message = $this->input->post('messageData');
            $from_email = "info@keepschoolin.com";
              //Load email library 
            $this->load->library('email'); 
            $this->email->set_mailtype("html"); 
            $this->email->set_newline("\r\n");
            $this->email->from($from_email, 'Info keepschoolin'); 
            $this->email->to($toemail);
            $this->email->subject('Contact us - Keepschoolin'); 

            $mail_data['date'] = $date;
            $mail_data['name'] = $name;
            $mail_data['phone'] = $phone;
            $mail_data['email'] = $email;
            $mail_data['message'] = $message;
            $mail_data['ip_address'] = $ip_address;
            $mail_data['city'] = $city;
            $mail_data['country'] = $country;


            $message = $this->load->view('email_template',$mail_data,TRUE);
            $this->email->message($message); 
            $this->email->send();

$newdata = [
        'db_string'  => $db_string
];

$session = session();
$session->set($newdata);


        $this->session->set_flashdata('success_msg', 'Thank you, our representative will contact you soon.');
        header('Location: ' . base_url() . 'contact');
       // header('Location:http://localhost/keepschoolin/index.php');

      }
      else{
        $this->session->set_flashdata('success_msg', 'please enter correct email address');
        header('Location: ' . base_url() . 'contact');
      }

}else{
       $this->session->get('message', 'Sorry Google Recaptcha Unsuccessful!!');
      }
*/
    //echo "form submit successfuly";

  }
}
