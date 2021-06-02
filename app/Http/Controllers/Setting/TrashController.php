<?php

namespace App\Http\Controllers\Setting;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class TrashController extends Controller
{
    //
    public function section()
    {
        return view('main.setting.section_trash');
    }

    public function menu()
    {
        return view('main.setting.menu_trash');
    }

    public function submenu()
    {
        return view('main.setting.submenu_trash');
    }

    public function user()
    {
        return view('main.setting.user_trash');
    }

    public function division()
    {
        return view('main.setting.division_trash');
    }

    public function prestation()
    {
        return view('main.setting.prestation_trash');
    }

    public function imageDivision()
    {
        return view('main.setting.imageDivision_trash');
    }

    public function member()
    {
        return view('main.setting.member_trash');
    }

    public function alumni()
    {
        return view('main.setting.alumni_trash');
    }

    public function gallery()
    {
        return view('main.setting.gallery_trash');
    }

    public function imageGallery()
    {
        return view('main.setting.imageGallery_trash');
    }

    public function category()
    {
        return view('main.setting.category_trash');
    }

    public function activity()
    {
        return view('main.setting.activity_trash');
    }

    public function schedule()
    {
        return view('main.setting.schedule_trash');
    }

    public function tests()
    {
        return view('main.setting.tests_trash');
    }

    public function score()
    {
        return view('main.setting.score_trash');
    }

    public function mentor()
    {
        return view('main.setting.mentor_trash');
    }

     public function memberIT()
    {
        return view('main.setting.memberIT_trash');
    }
}
