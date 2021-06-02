@extends('templates.home')
@section('navbar')
@include('include.home.navbar_mentor')
@endsection
@section('main')

  <div class="thumnail"><img src="{{asset('home_page')}}/img/bg-mentor-detail.png" alt=""></div>
      <div class="mentor-detail position-relative">
          <div class="container">
              <div class="row">
                  <div class="col-md-4">
                    <img src="{{$mentor->image()}}" class="w-50 border border-light border-2 rounded-circle my-3 img-mentor">
                    <h3 class="mentor-judul fw-700 mb-1">{{$mentor->name}}</h3>
                    <h5 class="active mb-3">Pembimbing-IT Club</h5>
                    <div class="badge-mentor p-4">
                        <div class="text-center">
                            <h3 class="text-white">Tentang Saya</h3>
                        </div>
                        <p class="mb-0 text-white">{{$mentor->content}}</p>
                    </div>
                  </div>
                  <div class="col-md-4">
                      <div class="biodata px-3">
                        <h3 class="mb-0 fw-700 mentor-judul">Biodata</h3>
                        <hr class="hr-header">
                        <div class="d-flex">
                            <img src="{{asset('home_page')}}/img/icon-mentor/birthdate.png" class="h-fit-content mr-1">
                            <div class="ml-2">
                                <h5 class="text-fairplay mb-0 active">Tempat Tanggal Lahir</h5>
                                <p class="text-black-50">{{$mentor->birth_date}}</p>
                            </div>
                        </div>
                        <div class="d-flex">
                            <img src="{{asset('home_page')}}/img/icon-mentor/gender.png" class="h-fit-content mr-1">
                            <div class="ml-2">
                                <h5 class="text-fairplay mb-0 active">Jenis Kelamin</h5>
                                <p class="text-black-50">{{$mentor->gender}}i</p>
                            </div>
                        </div>
                        <div class="d-flex">
                            <img src="{{asset('home_page')}}/img/icon-mentor/koper.png" class="h-fit-content mr-1">
                            <div class="ml-2">
                                <h5 class="text-fairplay mb-0 active">Pekerjaan/Kesibukan</h5>
                                <p class="text-black-50">{{$mentor->profession}}</p>
                            </div>
                        </div>
                        <div class="d-flex">
                            <img src="{{asset('home_page')}}/img/icon-mentor/divisi.png" class="h-fit-content mr-1">
                            <div class="ml-2">
                                <h5 class="text-fairplay mb-0 active">Divisi</h5>
                              
                                <p class="text-black-50">
                                    @foreach($mentor->divisions as $divisi)
                                    {{$divisi->name}},
                                     @endforeach
                                </p>
                               
                            </div>
                        </div>
                        <div class="d-flex">
                            <img src="{{asset('home_page')}}/img/icon-mentor/Certificate.png" class="h-fit-content mr-1">
                            <div class="ml-2">
                                <h5 class="text-fairplay mb-0 active">Sertifikat</h5>
                                <p class="text-black-50">{{$mentor->sertifikasi}}</p>
                            </div>
                        </div>
                      </div>
                  </div>
                  <div class="col-md-4">
                    <div class="kontak px-3">
                      <h3 class="mb-0 fw-700 mentor-judul">Kontak</h3>
                      <hr class="hr-header">
                      <div class="d-flex">
                          <img src="{{asset('home_page')}}/img/icon-mentor/telephone.png" class="h-fit-content mr-1">
                          <div class="ml-2">
                              <h5 class="text-fairplay mb-0 active">Nomor Telepon</h5>
                              <p class="text-black-50">{{$mentor->whatsapp}}</p>
                          </div>
                      </div>
                      <div class="d-flex">
                          <img src="{{asset('home_page')}}/img/icon-mentor/Mail.png" class="h-fit-content mr-1">
                          <div class="ml-2">
                              <h5 class="text-fairplay mb-0 active">Email</h5>
                              <p class="text-black-50">{{$mentor->email}}</p>
                          </div>
                      </div>
                    </div>
                    <div class="social-media mt-2 px-3">
                        <h3 class="mb-0 fw-700 mentor-judul">Sosial Media</h3>
                        <hr class="hr-header">
                        <div class="d-flex">
                            <img src="{{asset('home_page')}}/img/icon-mentor/facebook.png" class="h-fit-content mr-1">
                            <div class="ml-2">
                                <h5 class="text-fairplay mb-0 active">Facebook</h5>
                                <p class="text-black-50">{{$mentor->facebook}}</p>
                            </div>
                        </div>
                        <div class="d-flex">
                            <img src="{{asset('home_page')}}/img/icon-mentor/Mail.png" class="h-fit-content mr-1">
                            <div class="ml-2">
                                <h5 class="text-fairplay mb-0 active">Instagram</h5>
                                <p class="text-black-50">{{$mentor->instagram}}</p>
                            </div>
                        </div>
                        <div class="d-flex">
                            <img src="{{asset('home_page')}}/img/icon-mentor/youtube.png" class="h-fit-content mr-1">
                            <div class="ml-2">
                                <h5 class="text-fairplay mb-0 active">Youtube</h5>
                                <p class="text-black-50">{{$mentor->youtube}}</p>
                            </div>
                        </div>
                        <div class="d-flex">
                            <img src="{{asset('home_page')}}/img/icon-mentor/web.png" class="h-fit-content mr-1">
                            <div class="ml-2">
                                <h5 class="text-fairplay mb-0 active">Website</h5>
                                <p class="text-black-50">{{$mentor->website}}</p>
                            </div>
                        </div>
                    </div>
                </div>
              </div>
          </div>
      </div>
@endsection

@section('footer')
@include('include.home.footer_putih')
@endsection