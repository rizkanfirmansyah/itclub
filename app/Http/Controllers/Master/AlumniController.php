<?php

namespace App\Http\Controllers\Master;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class AlumniController extends Controller
{
    public function alumni()
    {
        return view('main.master.profiles.alumni');
    }
}
