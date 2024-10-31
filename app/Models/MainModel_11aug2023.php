<?php
namespace App\Models;

use CodeIgniter\Model;
use CodeIgniter\Database\ConnectionInterface;

class MainModel extends Model {

//public $anotherDb;
    // // Initialize Objects

 protected function initialize()
    {

     }
    public function __construct(){


        // anotherDb -------------------
        
        $this->session = \Config\Services::session();
        $this->session->start();

        // $db_name = $this->session->get("db_name");
        // $db_string = $this->session->get("db_string");


        
        //         if(isset($db_string)){
        //                 $this->anotherDb = \Config\Database::connect($db_string, true);

        //                 //var_dump($anotherDb); die();
        //         } 
        //         else {
        //                 throw new Exception('Second database name not found.');
        //         }
}

    public function add_user_visits_log($data){

      // print_r($data);
      // exit();
 if(isset($data['login_user'])){
    $username = $data['login_user'];
  }
  else {
    $username = '';
  }

  if(isset($data['subdomain'])){

    $subdomain = $data['subdomain'];
  }
  else {

    $subdomain = '';
  }

    // test ip address 182.177.124.224
    $ip_address = $_SERVER['REMOTE_ADDR'];
    $geopluginURL='http://www.geoplugin.net/php.gp?ip='.$ip_address;
    // $addrDetailsArr = unserialize(file_get_contents($geopluginURL));
    // $city = $addrDetailsArr['geoplugin_city'];
    // $country = $addrDetailsArr['geoplugin_countryName'];

    $city="";
    $country="";

    if(!$city){
       $city='Not Define';
    }if(!$country){
       $country='Not Define';
    }

        $data = array(
                    'url'  => current_url(), //base_url(), //.$this->router->fetch_class().$this->router->fetch_method(),
                    'visit_date' => date('Y-m-d H:i:s'),
                    'login_user' => $username,
                    'subdomain' => $subdomain,
                    'ip'   => $ip_address,
                    'city'    => $city,
                    'country'    => $country
                  );
        // echo var_dump($data); die();
        $this->db->insert('user_visits', $data); 
        
        return TRUE;
    }

    public function insert_ad_entry($data){

        $db = \Config\Database::connect();

        $db->table('ad_entry')->insert($data); 

        return TRUE;
    }

    public function insert_ad_photo($data){

        $db = \Config\Database::connect();

        $db->table('list_photo')->insert($data); 

        return TRUE;
    }

// List all main categories 
    public function list_main_cat(){

        //$subdomain_name = $this->session->get("subdomain_name");
        //echo $subdomain_name; die();

        $db = \Config\Database::connect();

        $query=$db->query("SELECT * FROM main_categories");
        return $query->getResult();
    }
/*
 List all main categories for "All Categories"

 we have 4 columns and will call this procedure 4 times 
 1,2,3,6    7,11,12     4,10    5,13,9,8

*/
    public function list_4_all_cats($cat){

        //$subdomain_name = $this->session->get("subdomain_name");
        //echo $subdomain_name; die();

        $db = \Config\Database::connect();

//$ids = "('1','2','3','4')";
$q = "SELECT * FROM main_categories WHERE id IN (".$cat.")";
$query = $db->query($q);

        //$query=$db->query("SELECT * FROM main_categories where id IN ('$ids')");
        return $query->getResult();
    }

// List all sub categories for selected main category 
    public function list_sub_cat($main_cat){

        //$subdomain_name = $this->session->get("subdomain_name");
        //echo $subdomain_name; die();

        $db = \Config\Database::connect();

        $query=$db->query("SELECT * FROM categories where main_cat= $main_cat");
        return $query->getResult();
    }

    // public function total_sub_cats($cat){

    //     $db = \Config\Database::connect();
    //     $query=$db->query("SELECT count(id) as total FROM categories");
    //     //return $query->getResult();
    //     return $query->getRow()->total;

    //     //$misc_amount = $misc_amount->getRow()->misc_amount;
    // }


// this will return sub category name
    public function list_cat_name($cat_id){

        $db = \Config\Database::connect();

        $query=$db->query("SELECT cat_name FROM categories WHERE id = $cat_id");
        //return $query->getResult();
        return $query->getRow('cat_name');
    }

    public function list_cities(){

        $db = \Config\Database::connect();
        
        $query=$db->query("SELECT * FROM cities");
        return $query->getResult();
    }

/* ****************************************

// get next id ( ad_id is unique id)

    *************************************** */ 
    public function get_next_id(){

        $db = \Config\Database::connect();

        $query=$db->query("SELECT max(ad_id) as max_id
                                 FROM ad_entry")->getRow();
        $max_id = $query->max_id;
        
        return $max_id+1;
    }

/* ****************************************

// get id (pk) by ad_id

    *************************************** */ 
    public function get_id_pk($ad_id){

        $db = \Config\Database::connect();


        $query=$db->query("SELECT id
                                 FROM ad_entry where ad_id= '$ad_id'")->getRow();
        $id = $query->id;
        
        return $id;
    }

/* ****************************************

// get next id ( ad_id is unique id)

    *************************************** */ 
    public function get_main_cat_name($id){

        $db = \Config\Database::connect();

        $query=$db->query("SELECT name FROM main_categories WHERE id='$id'")->getRow();
        $main_cat_name = $query->name;
        
        return $main_cat_name;
    }

    public function list_featured_ads(){

        $db = \Config\Database::connect();
        
        $query=$db->query("SELECT ae.id, ae.cat, ae.sub_cat, ae.title, ae.ad_description, ae.price, ae.ad_user, au.name, ae.city, ae.neighbourhood, ae.phone_no
  FROM ad_entry ae, ad_user au 
WHERE ae.ad_user = au.id
and ae.ad_STATUS=1
");
// ORDER BY RAND()
// LIMIT 4

        return $query->getResult();
    }

    public function list_related_ads(){

        $db = \Config\Database::connect();
        
        $query=$db->query("SELECT ae.id, ae.cat, ae.sub_cat, ae.title, ae.ad_description, ae.price, ae.ad_user, au.name, ae.city, ae.neighbourhood, ae.phone_no
  FROM ad_entry ae, ad_user au 
WHERE ae.ad_user = au.id
and ae.ad_STATUS=1");
        return $query->getResult();
    }

    public function list_photo($list_id){

        $db = \Config\Database::connect();

        $query=$db->query("SELECT file_name FROM list_photo WHERE list_id = '$list_id'");
        //return $query->getResult();
        return $query->getRow('file_name');
    }
    public function list_user_photo($user_id){

        $db = \Config\Database::connect();

        $query=$db->query("SELECT file_name FROM user_photo WHERE user_id = $user_id");
        //return $query->getResult();
        return $query->getRow('file_name');
    }

    public function single($id){

        $db = \Config\Database::connect();

        $query=$db->query("SELECT * FROM ad_entry WHERE id = '$id'");
        //return $query->getResult();
        return $query->getRow();
    }


// this will return all total ads for category
    public function total_ads($cat){

        $db = \Config\Database::connect();

    if (isset($cat)) {
        $query_main_cat  = $db->query("SELECT count(id) as main_cat FROM main_categories WHERE NAME = '$cat'");

            if ($query_main_cat->getRow()->main_cat>0) {

                $query=$db->query("SELECT count(id) as total FROM ad_entry WHERE cat = '$cat'");    
            }
            else {

                $query=$db->query("SELECT count(id) as total FROM ad_entry WHERE sub_cat = '$cat'");   
            }

    }
    else {
        $query=$db->query("SELECT count(id) as total FROM ad_entry");   
    }
        //return $query->getResult();
        return $query->getRow()->total;

        //$misc_amount = $misc_amount->getRow()->misc_amount;
    }

// this will return all total ads for city
    public function total_city_ads($city){

        $db = \Config\Database::connect();

    if (isset($city)) {

                $query=$db->query("SELECT count(id) as total FROM ad_entry WHERE city = '$city'");   
    }
    else {
        $query=$db->query("SELECT count(id) as total FROM ad_entry");   
    }
        //return $query->getResult();
        return $query->getRow()->total;

        //$misc_amount = $misc_amount->getRow()->misc_amount;
    }

// this will return all total ads for sub category
    public function total_ads_sub_cat($sub_cat){

        $db = \Config\Database::connect();

    if (isset($sub_cat)) {
        $query=$db->query("SELECT count(id) as total FROM ad_entry WHERE sub_cat = '$sub_cat'");
    }
    else {
        $query=$db->query("SELECT count(id) as total FROM ad_entry");   
    }
        //return $query->getResult();
        return $query->getRow()->total;

        //$misc_amount = $misc_amount->getRow()->misc_amount;
    }

public function replace_dashes($string) {
    $string = str_replace("-", " ", $string);
    return $string;
}

public function replace_spaces($string) {
    $string = str_replace(" ", "-", $string);
    return $string;
}

// contact us from keepschoolin.com
public function insrt_reg($data){

//var_dump($data); die();
    $db = \Config\Database::connect('default');

    $db->table('contact_softminetek')->insert($data);
//    $db->insert('signup_request', $data); 

    return TRUE;

// <?php

// $data = [
//     'title' => $title,
//     'name'  => $name,
//     'date'  => $date,
// ];

// $db->table('mytable')->insert($data);

    }
}