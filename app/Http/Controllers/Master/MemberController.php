<?php

namespace App\Http\Controllers\Master;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\{User,Division};
class MemberController extends Controller
{
    public function member()
    {
        $users = User::where('email_verified_at','!=',null)->get();
        $divisions = Division::get();
       
        return view('main.master.profiles.member', compact('users','divisions'));
    }
}
