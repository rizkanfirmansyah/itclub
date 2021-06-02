<?php
use App\Models\Division;
?>


<!-- navbar -->
        <div class="navbar-meta nav-meta">
            <nav class="navbar navbar-expand-lg navbar-dark py-2">
                <div class="container">
                     <a class="navbar-brand" href="{{route('home')}}"><img src="{{asset('home_page/img/logo_putih.png')}}" class="w-75 mt-1"></a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="fas fa-bars"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNavDropdown">
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item mx-2">
                                <a class="nav-link text-white" href="{{route('home')}}">HOME</a>
                            </li>
                            <li class="nav-item mx-2 dropdown">
                                <a class="nav-link text-white" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    PROFIL
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                   <a class="dropdown-item" href="{{route('member',11)}}">Anggota</a>
                                <a class="dropdown-item" href="{{route('alumni')}}">Alumni</a>
                                 <a class="dropdown-item" href="{{route('mentor')}}">Pembimbing</a>
                                <a class="dropdown-item" href="{{route('gallery')}}">Galeri Kegiatan</a>
                                </div>
                            </li>
                            <li class="nav-item mx-2 dropdown">
                                <a class="nav-link text-white" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    DIVISI
                                </a>
                                 <div style="display: none;">{{$divisions = Division::select('slug','name')->get()}}</div>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                @foreach($divisions as $division)
                                <a class="dropdown-item" href="{{route('division',$division->slug)}}">{{$division->name}}</a>
                                @endforeach

                            </div>
                            </li>
                            <li class="nav-item mx-2">
                                <a class="nav-link text-white" href="{{route('eLearning')}}">ELEARNING</a>
                            </li>
                            <li class="nav-item mx-2">
                                <a class="nav-link text-white" href="{{route('article')}}">BERITA</a>
                            </li>
                             @auth
                        
                        <li class="nav-item mx-2 dropdown">
                                <a class="nav-link text-white" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span><i class="fas fa-user mr-2 active"></i></span>{{auth()->user()->name}}</a>
                               <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                <a href="{{route('dashboard_user')}}" class="dropdown-item has-icon">
                                <i class="fas fa-home"></i> Dashboard
                            </a>
                              <div class="dropdown-divider"></div>
                            <a href="/api/v1/auth/logout" class="dropdown-item has-icon text-danger">
                                <i class="fas fa-sign-out-alt"></i> Logout
                            </a>
                               
                            </div> 
                            </li>
              
                        @endauth

                        @guest
                        <li class="nav-item mx-2">
                            <a href="{{route('login')}}" class="nav-link btn btn-1 text-white px-4">LOGIN</a>
                        </li>
                        @endguest
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
        <!-- navbar -->