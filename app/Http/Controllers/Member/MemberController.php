<?php

namespace App\Http\Controllers\Member;

use App\Http\Controllers\Controller;
use App\Models\{Division,User};
use Illuminate\Http\Request;

class MemberController extends Controller
{


     public function member()
    {
        $users = User::where('email_verified_at','!=',null)->get();
        $divisions = Division::get();
       
        return view('main.member.member', compact('users','divisions'));
    }

    public function registration()
    {
        return view('main.member.registration');
    }

    public function schedule()
    {
        $divisi  = Division::all();
        return view('main.member.schedule', compact('divisi'));
    }

    public function test()
    {
        $division = Division::all();
        return view('main.member.precentages.test', compact('division'));
    }

    public function score()
    {
        $division = Division::all();
        return view('main.member.precentages.score', compact('division'));
    }
}
