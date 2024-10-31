<?php

namespace App\Controllers;
use CodeIgniter\CodeIgniter;

use App\Models\MainModel;
use App\Models\Search_model;

class Search_controller extends BaseController

{

public function __construct()
        {
        // https://forum.codeigniter.com/thread-69139-post-347984.html#pid347984

        $this->session = \Config\Services::session();
        $this->session->start();

        $request = \Config\Services::request();

        $userid = $this->session->get('userid');
        // echo "userid=".$userid;
        // die();

        $db_name = $this->session->get("db_name");
        $db_string = $this->session->get("db_string");

        }

    public function index()
    {

            /* **************************************************** 
                user visits log
             ******************************************************* */
            // $country_name = $this->session->userdata('country');
            //$loginuser = array( 'subdomain' => $country_name );
        $cat = NULL;
        $loginuser ="";
        $main_model = new MainModel;
        $search_model = new Search_model;

//            $main_model->add_user_visits_log($loginuser);

        $keywords = $this->request->getPost('keywords');    
        $category = $this->request->getPost('category');
        $city     = $this->request->getPost('cities');
//print_r($category); die();

        $this->data['list_cities']= $main_model->list_cities();
        $this->data['list_main_cat']= $main_model->list_main_cat();
        $this->data['list_cat_ads']= $search_model->list_cat_search($cat);
    // $this->data['list_data']= $this->List_model->list_data($search);

    //$this->data['list_data']= $this->List_model->list_data($category, $keywords, $city);
//print_r($this->data); die();
        //$this->data['popular_locations']= $this->List_model->popular_locations();
        //$this->data['countries']= $this->List_model->our_global_network();

                return view('header/header_search',$this->data)
                    .view('search_result', $this->data)
                    .view('header/footer');
 }

    public function search($cat)
    {

            /* **************************************************** 
                user visits log
             ******************************************************* */
            // $country_name = $this->session->userdata('country');
            //$loginuser = array( 'subdomain' => $country_name );

            $loginuser ="";
            $main_model = new MainModel;
            $search_model = new Search_model;

//            $main_model->add_user_visits_log($loginuser);

        $keywords = $this->request->getPost('keywords');    
        $category = $this->request->getPost('category');
        $city     = $this->request->getPost('cities');
//print_r($cat); die();

        $this->data['list_main_cat']= $main_model->list_main_cat();
        //$this->data['list_sub_cat']= $main_model->list_sub_cat();
        $this->data['list_cities']= $main_model->list_cities();
        $this->data['list_cat_ads']= $search_model->list_cat_search($cat);
        $this->data['category']= $cat;

    // $this->data['list_data']= $this->List_model->list_data($search);

    //$this->data['list_data']= $this->List_model->list_data($category, $keywords, $city);
//print_r($this->data); die();
        //$this->data['popular_locations']= $this->List_model->popular_locations();
        //$this->data['countries']= $this->List_model->our_global_network();

                return view('header/header_search',$this->data)
                    .view('search_result', $this->data)
                    .view('header/footer');
 } 
}