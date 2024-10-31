<?php

namespace App\Controllers;
use App\Models\MainModel;

class Single_controller extends BaseController
{
    public function index()
    {

        $main_model = new MainModel;
        $this->data['list_main_cat']= $main_model->list_main_cat();        
        //$this->data['list_cat']= $main_model->list_cat();
        $this->data['list_cities']= $main_model->list_cities();
        $this->data['list_featured_ads']= $main_model->list_featured_ads();

//        return view('welcome_message');
//$this->load->view('header', $this->data, FALSE);

               return view('home_view', $this->data);
//                .view('footer');
    }

    public function single($item)
    {
// $item2 = "abcasss-xyabc-xyz-ss";
// $pos = strpos($item2, '-');
// $pos2 = strripos($item2,'-');
// echo $item2."   ".$pos."   ".$pos2;
// die();
//echo $item;
$ad_id = substr($item, strripos($item, '-')+1);
// echo $item."   ".$ad_id;
//  die();


        $main_model = new MainModel;
        //$this->data['list_cat']= $main_model->list_cat();
        $this->data['list_main_cat']= $main_model->list_main_cat();
        $this->data['list_cities']= $main_model->list_cities();        
        $this->data['list_ad']= $main_model->single($ad_id);
        $this->data['list_related_ads']= $main_model->list_related_ads();

//        return view('welcome_message');
//$this->load->view('header', $this->data, FALSE);

                return view('header/header_single', $this->data)
                    .view('single_view', $this->data)
                    .view('header/footer');

    }    
}
