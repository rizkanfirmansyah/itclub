@extends('templates.home')
@section('navbar')
@include('include.home.navbar_biru')
@endsection
@section('main')

 <section class="body-anggota-11">
            <div class="anggota-11 p-5">
              <div class="container text-center">
                  <h1>Anggota Kelas {{$class}}<span><img src="{{asset('home_page/img/icon_titik.png')}}" class="mb-1 ml-3"></span></h2>
                  <div class="row mt-3">
                    @foreach($members as $member)
                      <div class="col-lg-3 col-sm-4 col-6 mt-3 down">
                          <div class="card p-4 text-center gradient-anggota">
                              <div class="card-head">
                                  <h4 class="text-white" style="text-transform: uppercase;">{{$member->position}}</h4>
                                  <img src="{{$member->image()}}" class="w-100 ">
                              </div>
                              <div class="card-body">
                                  <h5 class="mb-0 text-white nama-anggota">{{$member->name}}</h5>
                                  <p class="light mb-0 text-white">{{$member->division->name}}</p>
                              </div>
                          </div>
                      </div>
                        @endforeach
                  
                  </div>
              </div>
          </div>
  
          <nav aria-label="Page navigation example">
              <ul class="pagination pb-5 mb-0">
                <li class="page-item ml-auto">
                  <a class="page-link" href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                  </a>
                </li>

                <li class="page-item {{ (request()->is('member/10')) ? 'active' : '' }}"><a class="page-link" href="{{route('member',10)}}">Kelas 10</a></li>
                <li class="page-item {{ (request()->is('member/11')) ? 'active' : '' }}"><a class="page-link" href="{{route('member',11)}}">Kelas 11</a></li>
                <li class="page-item {{ (request()->is('member/12')) ? 'active' : '' }}"><a class="page-link" href="{{route('member',12)}}">Kelas 12</a></li>
                <li class="page-item mr-auto">
                  <a class="page-link" href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                  </a>
                </li>
              </ul>
            </nav>
        </section>
@endsection

@section('footer')
@include('include.home.footer_hijau')
@endsection