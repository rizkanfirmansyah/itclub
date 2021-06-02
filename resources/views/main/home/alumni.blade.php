@extends('templates.home')

@section('navbar')
@include('include.home.navbar_biru')
@endsection

@section('main')

  <section class="body-alumni">
            <div class="alumni p-5">
                <div class="container text-center">
                    <h2>Alumni IT CLUB<span><img src="{{asset('home_page/img/icon_titik.png')}}" class="mb-1 ml-3"></span></h2>
                    <div class="row mt-3">
                      @foreach($alumnies as $alumni)
                        <div class="col-md-6 mt-4">
                            <img src="{{$alumni->image()}}" alt="image alumni" class="w-100 judul-2">
                        </div>
                       @endforeach
                    </div>
                </div>
            </div>
          <div class="d-flex justify-content-center">
                          {{$alumnies->links()}}
                  </div>
          </section>
@endsection

@section('footer')
@include('include.home.footer_hijau')
@endsection