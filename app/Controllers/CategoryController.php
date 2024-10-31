<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\MainModel;
use CodeIgniter\HTTP\ResponseInterface;

class CategoryController extends BaseController
{

  protected $modelData;
  public function __construct(){
      $this->modelData=new MainModel();;
  }  
  function index()
    {
        
        $categoryList = $this->modelData->list_main_cat();
        $title = 'dealsmandi/post'; 
        return view('category/post-list', get_defined_vars());
    }

    function show($id)
    {
    $categoryList = $this->modelData->list_main_cat();
    $subCategoryList=$this->modelData->subCategory($id);

    $title = 'dealsmandi/post'; 
    return view('category/sub-post',get_defined_vars());
    }

    function showModel($id){

    $categoryList = $this->modelData->list_main_cat();
    $subCategoryList=$this->modelData->subCategory($id);

    $title = 'dealsmandi/post'; 
    $openModal=true;
    $categoryID=$id;
    return view('category/model',get_defined_vars());

    }

    function subCategory($categoryId) {
        try {
            $subCategoryList = $this->modelData->subCategory($categoryId);
            $response = [
                'status' => true,
                'data'   => $subCategoryList
            ];
            return $this->response->setJSON($response);
        } catch (\Exception $e) {
            return $this->response->setJSON([
                'status'  => false,
                'message' => 'An error occurred: ' . $e->getMessage()
            ]);
        }
    }

    function subChildCategorys($subCategoryId){
        try {
            $subChildCategoryList = $this->modelData->subChildCatetory($subCategoryId);
            $response = [
                'status' => true,
                'data'   => $subChildCategoryList
            ];
            return $this->response->setJSON($response);
        } catch (\Exception $e) {
            return $this->response->setJSON([
                'status'  => false,
                'message' => 'An error occurred: ' . $e->getMessage()
            ]);
        }
    }

    function exChange($subChildCategoryId){
        $subChildName    = $this->modelData->singleSubChildCategory($subChildCategoryId);
        $subName         = $this->modelData->singleSubCategory(  $subChildName->subcategory_id);
        $categoryName    = $this->modelData->singleCategory(  $subName->category_id);
        $categoryList    = $this->modelData->list_main_cat();
        $subCategoryList = $this->modelData->subCategory($subName->category_id);
        $list_locations = $this->modelData->list_locations();


        $title = 'dealsmandi/post'; 
        return view('category/post-form',get_defined_vars());
    }
   
    function subCategoryChange($subCategoryId){
        $subChildName="";
        $subName = $this->modelData->singleSubCategory(  $subCategoryId);
        $categoryName = $this->modelData->singleCategory(  $subName->category_id);
        $categoryList = $this->modelData->list_main_cat();
        $subCategoryList = $this->modelData->subCategory($subName->category_id);
        $list_locations = $this->modelData->list_locations();


        $title = 'dealsmandi/post'; 
        return view('category/post-form',get_defined_vars());
    }
}
