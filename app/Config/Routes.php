<?php

namespace Config;

// Create a new instance of our RouteCollection class.
$routes = Services::routes();

/*
 * --------------------------------------------------------------------
 * Router Setup
 * --------------------------------------------------------------------
 */
$routes->setDefaultNamespace('App\Controllers');
$routes->setDefaultController('Home');
$routes->setDefaultMethod('index');
$routes->setTranslateURIDashes(false);
//$routes->set404Override();
$routes->set404Override(function(){
    return ('home/home_header')
          .view('home/page_not_found')
          .view('home/home_footer');
});

// The Auto Routing (Legacy) is very dangerous. It is easy to create vulnerable apps
// where controller filters or CSRF protection are bypassed.
// If you don't want to define all routes, please use the Auto Routing (Improved).
// Set `$autoRoutesImproved` to true in `app/Config/Feature.php` and set the following to true.
$routes->setAutoRoute(false);

/*
 * --------------------------------------------------------------------
 * Route Definitions
 * --------------------------------------------------------------------
 */

// We get a performance increase by specifying the default
// route since we don't have to scan directories.
// Website

/*
 * -------------------------------------------------------
 *  Apps for schools            Description     String
 *  ----------------            -----------     ---------
 * 1. School Management App                     schoolapp
 * 2. Educational institutes Directory          list
 * 3. Examination / Testing app                 testing
 * 4. Study Material                            studymat
 * 5. kid games         
 * 6. kid books / Library
 * 7.                
 * -------------------------------------------------------
 */

    $routes->get('/', 'Home::index');

    $routes->get('/', 'Home::index');
    $routes->get('single/(:any)', 'Single_controller::single/$1');
    $routes->get('search/', 'Search_controller::index');
    $routes->get('search/(:any)', 'Search_controller::search/$1');

    $routes->get('sell', 'Entry_controller::index');
    $routes->get('sub_cat/(:any)', 'Entry_controller::subcat_Ajax/$1');
    $routes->get('city/(:any)', 'Entry_controller::cities_Ajax/$1');
    $routes->post('form/submit_ad', 'Entry_controller::submit_ad');
   

    //Hadi Dev
    $routes->get('signup','SignupController::index');
    $routes->get('post','CategoryController::index');
    $routes->get('post/(:num)','CategoryController::show/$1');
    $routes->get('model/(:num)','CategoryController::showModel/$1');
    $routes->get('sub-category/(:num)','CategoryController::subCategory/$1');
    $routes->get('sub-child-category/(:num)','CategoryController::subChildCategorys/$1');
    $routes->get('exchange-data/(:num)','CategoryController::exChange/$1');
    $routes->get('sub-category-data/(:num)','CategoryController::subCategoryChange/$1');
    

$routes->get('/file-upload', 'FileUpload::index');
$routes->post('/multiple-file-upload', 'FileUpload::multipleUpload');


/*
$routes->get(['sitemap'] = 'Sitemap_controller/index';

$routes->get(['contact'] = 'Home_controller/contact_us';
$routes->get(['privacy'] = 'Help_docs/privacy';
$routes->get(['sell'] = 'Home_controller/add_ad';

$routes->get(['404_override'] , '');
$routes->get(['translate_uri_dashes'] , FALSE);
*/

/*
 * --------------------------------------------------------------------
 * Additional Routing
 * --------------------------------------------------------------------
 *
 * There will often be times that you need additional routing and you
 * need it to be able to override any defaults in this file. Environment
 * based routes is one such time. require() additional route files here
 * to make that happen.
 *
 * You will have access to the $routes object within that file without
 * needing to reload it.
 */
if (is_file(APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php')) {
    require APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php';
}
