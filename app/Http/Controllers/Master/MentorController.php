<?php

namespace App\Http\Controllers\Master;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Division;

class MentorController extends Controller
{
     public function mentor()
    {
        $divisions = Division::get();
       
        return view('main.master.profiles.mentor', compact('divisions'));
    }
}
