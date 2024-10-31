<?php

namespace App\Controllers;
use App\Models\MainModel;

class Entry_controller extends BaseController
{
protected $helpers = ['form'];

   // Initialize Objects
    public function __construct(){

        $this->session = \Config\Services::session();
        $this->session->start();


    helper('url_helper');
        
        }

    public function index()
    {

        $main_model = new MainModel;
        $this->data['list_main_cat']= $main_model->list_main_cat();
        $this->data['list_locations']= $main_model->list_locations();
        $this->data['list_cities']= $main_model->list_cities();
        // list_4_all_cats($cat)
        // $this->data['list_main_cat']= $main_model->list_4_all_cats($cat);
        $this->data['list_cities']= $main_model->list_cities();
        $this->data['list_featured_ads']= $main_model->list_featured_ads();



//        return view('welcome_message');
//$this->load->view('header', $this->data, FALSE);
                //return view('header/header',$this->data)
                return view('ad_entry_form', $this->data);
                    //.view('header/footer');
    }

    public function submit_ad()
    {

        $main_model = new MainModel;
        $request = \Config\Services::request();
        
        helper(['form', 'url']);

// NOt null fields 

        
        // echo "ad_id= ".$ad_id."ad_date= ".$ad_date."ad_user= ".$ad_user." title= ".$title."ad_description= ".$ad_description." brand= ".$brand." phone no= ".$phone_no." city= ".$city." price= ".$price." main cat= ".$main_cat." sub cat= ".$sub_cat;
        // die();


/* upload photo --------------- */
/*
        $validationRule = [
            'userfile' => [
                'label' => 'Image File',
                'rules' => [
                    'uploaded[userfile]',
                    'is_image[userfile]',
                    'mime_in[userfile,image/jpg,image/jpeg,image/gif,image/png,image/webp]',
                    'max_size[userfile,100]',
                    'max_dims[userfile,1024,768]',
                ],
            ],
        ];
        
        if (! $this->validate($validationRule)) {
            $data = ['errors' => $this->validator->getErrors()];

//            return view('upload_form', $data);
        }

        $img = $this->request->getFile('userfile');

        $ext = $img->getClientExtension();
        $newName = $max_id.".".$ext;
        $path='school_folder/'.$school_string.'/users_picture';

if ($img->isValid() && ! $img->hasMoved()) {
    $img->move($path, $newName);
    }
*/
/* /upload photo ----------------- */

        // $ad_date = date('Y-m-d');
        // echo $ad_date;
        // die();

    $data = array(  'id' => $main_model->get_next_id(),
                    'created_at' => date('Y-m-d'),
                    'user_id'  => $request->getPost('ad_user'),
                    'title'  => $request->getPost('title'),
                    'description' => $request->getPost('ad_description'),
                    'brand'     => $request->getPost('brand'),
                    'phone_number' => $request->getPost('phone_no'),
                    'cityId'  => $request->getPost('city'),
                    'price' => $request->getPost('price'),
                    'cat_Id'    => $request->getPost('main_cat'),
                    'sub_cat_Id'  => $request->getPost('sub_cat')
                  );
//var_dump($data); die();
    
    $insert = $main_model->insert_ad_entry($data);

    if($insert){
/* ---------------------- */
        $filesUploaded = 0;
 
        if($this->request->getFileMultiple('fileuploads'))
        {
            $files = $this->request->getFileMultiple('fileuploads');
 
            foreach ($files as $file) {
 
 // echo "before ".$main_model->get_next_id()-1;
 // $id_pk = $main_model->get_id_pk($main_model->get_next_id()-1);
 // echo "id =".$id_pk;

                if ($file->isValid() && ! $file->hasMoved())
                {
                    //$newName = $file->getRandomName();
                    $newName = $main_model->get_next_id()-1;

                    $ext = $file->getClientExtension();
                    $newName = $newName."_".$filesUploaded.".".$ext;

                    $file->move(WRITEPATH.'adphotos', $newName);
                    $datafile = array(
                    'list_id' => $main_model->get_id_pk($main_model->get_next_id()-1),
                    'file_name' => $newName, //file->getClientName(),
                    'url' => 'adphotos/' . $newName
                    //'file_type' => $file->getClientExtension()
                    );

 //echo 
 // die();
                    $main_model->insert_ad_photo($datafile);

                    //$fileUploadModel = new FileUploadModel();

                    //$fileUploadModel->save($datafile);
                    $filesUploaded++;
                }
                 
            }
 
        }
 
        if($filesUploaded <= 0) {
            return redirect()->back()->with('error', 'Choose files to upload.');
        }
 
        return redirect()->back()->with('success', $filesUploaded . ' File/s uploaded successfully.');

/* ---------------------- */

        
        $this->session->set('message', 'Your data inserted Successfully..');
        return redirect()->route('sell');


    }
    else{
        $this->session->set('error', 'Your data not inserted ');
        return redirect()->route('sell');

    }

    
    }
/*
 // file upload
    public function multipleUpload() 
    {
        $filesUploaded = 0;
 
        if($this->request->getFileMultiple('fileuploads'))
        {
            $files = $this->request->getFileMultiple('fileuploads');
 
            foreach ($files as $file) {
 
                if ($file->isValid() && ! $file->hasMoved())
                {
                    $newName = $file->getRandomName();
                    $file->move(WRITEPATH.'adphotos', $newName);
                    $data = [
                        'filename' => $file->getClientName(),
                        'filepath' => 'adphotos/' . $newName,
                        'type' => $file->getClientExtension()
                    ];
                    $fileUploadModel = new FileUploadModel();
                    $fileUploadModel->save($data);
                    $filesUploaded++;
                }
                 
            }
 
        }
 
        if($filesUploaded <= 0) {
            return redirect()->back()->with('error', 'Choose files to upload.');
        }
 
        return redirect()->back()->with('success', $filesUploaded . ' File/s uploaded successfully.');
 
    }
}

How to debug AJAX in chrome or firefox
https://docs.shondalai.com/general/debug_ajax_requests_using_chrome_developer_tools/
*/
   public function subcat_Ajax($cat_id) { 

        $db = \Config\Database::connect();
/* -----
SELECT * FROM subcategorys
where category_id =18
----- */

        $query=$db->query("SELECT *
                                 FROM subcategorys
                                 where category_id ="."'".$cat_id."'");
        $result = $query->getResult();
/*
             WHERE fieldName ="."'".$fieldName."'"
------------
        $anotherDb = \Config\Database::connect('demo');  
        //$result = $anotherDb->where("class_id",$class_id)->get("sections")->result();
        $result = $anotherDb->where("class_id",$class_id)->get("sections")->getResult();
*/        
        //echo $result; die();

        echo json_encode($result);
   }

   public function cities_Ajax($location_id) { 

        $db = \Config\Database::connect();

        $query=$db->query("SELECT * FROM cities
                            where location_id ="."'".$location_id."'");
        $result = $query->getResult();

        echo json_encode($result);
   }

    //submit contact us form 

    public function reg_submit(){
       
        $main_model = new MainModel;
        $request = \Config\Services::request();

    // restrict empty form submission

//echo "this is tes".$request->getPost('firstname'); die();

      if ($request->getPost('firstname')==NULL) {
        return redirect()->route('/');

      }

      // ***********************
    // test ip address 182.177.124.224
    $ip_address = $_SERVER['REMOTE_ADDR'];
    $geopluginURL='http://www.geoplugin.net/php.gp?ip='.$ip_address;
    $addrDetailsArr = unserialize(file_get_contents($geopluginURL));
    $city = $addrDetailsArr['geoplugin_city'];
    $country = $addrDetailsArr['geoplugin_countryName'];

    if(!$city){
       $city='Not Define';
    }if(!$country){
       $country='Not Define';
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
      
        $data = array('first_name' => $request->getPost('firstname'),
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
if ($result){
      return redirect()->route('/');

}
else {
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
