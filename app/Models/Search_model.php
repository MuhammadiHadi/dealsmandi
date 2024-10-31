<?php
namespace App\Models;

use CodeIgniter\Model;
use CodeIgniter\Database\ConnectionInterface;
use App\Models\MainModel;


class Search_model extends Model {

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

    public function list_cat_search($cat){

        $db = \Config\Database::connect();

        $main_model = new MainModel;

        $cat = $main_model->replace_dashes($cat);

        //echo $cat; die();

        if (isset($cat)){
            $query=$db->query("SELECT * FROM ad_entry WHERE cat = '$cat' OR sub_cat = '$cat'");    
        }
        else
        {
            $query=$db->query("SELECT * FROM ad_entry");
        }
        return $query->getResult();
        //return $query->getRow('file_name');
    }

}