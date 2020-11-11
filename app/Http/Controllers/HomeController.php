<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\TravelPackage;

class HomeController extends Controller
{
   
    public function index()
    {
    	$items = TravelPackage::with(['galleries'])->get();
        return view('pages.home', [
        	'items' => $items
    	]);
    }

    public function testimonial()
    {
    	return view('pages.testimonial');
    }
}
