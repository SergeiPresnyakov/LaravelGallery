<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * about page
     */
    public function about() 
    {
        return view('about');
    }
}
