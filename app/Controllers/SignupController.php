<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use CodeIgniter\HTTP\ResponseInterface;

class SignupController extends BaseController
{
    public function index()
    {
        // return "Hello world";
        return view('account/signup');
    }
}
