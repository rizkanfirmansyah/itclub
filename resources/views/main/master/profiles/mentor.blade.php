@extends('templates.dashboard')

@section('main')

        <div class="row">
          <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4>Data Mentor</h4>
                <div class="ml-auto">
                    <a href="#" class="btn btn-primary rounded" data-target="#insertMentor" data-toggle="modal"><i class="fas fa-plus"></i> Tambah</a>
                    <a href="#" class="btn btn-danger rounded" id="deleteArray"><i class="far fa-trash-alt"></i> Hapus</a>
                </div>
              </div>
              <div class="card-body p-3">
                <div class="table-responsive">
                  <table class="table table-striped" id="table">
                    <thead>
                        <tr>
                            <th width="10px">
                                <div class="custom-checkbox custom-control">
                                            <input type="checkbox" data-checkboxes="mygroup" data-checkbox-role="dad"
                                                class="custom-control-input" id="checkbox-all">
                                            <label for="checkbox-all" class="custom-control-label">&nbsp;</label>
                                        </div>
                            </th>
                            <th>Name</th>
                            <th>Division</th>
                            <th>Profession</th>
                            <th>Image</th>             
                            <th>Created At</th>
                            <th>Updated At</th>
                            <th width="70px">Action</th>
                            </tr>
                        </thead>
                        <tbody></tbody>
                    </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>


  {{-- !NOTE Data Modal here  --}}


  <!-- Modal insert -->
        <div class="modal fade" id="insertMentor" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="insertMentorLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header border-bottom pb-4">
            <h5 class="modal-title" id="insertMentorLabel">Insert Mentor</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form class="needs-validation" novalidate id="insert">
                     
                       <div class="form-group row">
                        <div class="form-group col-12">
                        <label>Mentor Name</label>
                         <input type="text" class="form-control" name="name" placeholder="Nama Mentor"  required="">
                          <div class="invalid-feedback">
                            What's Mentor name?
                          </div>
                        </div>
                      </div>

                       <div class="form-group row">
                        <div class="form-group col-12">
                        <label>Keahlian / Profesion</label>
                          <input type="text" class="form-control" name="profession" placeholder="Keahlian / Profesion" required="">
                          <div class="invalid-feedback">
                            Keahlian / Profesion?
                          </div>
                        </div>
                      </div>

                      <div class="form-group row">
                        <div class="form-group col-6">
                        <label>Tanggal Lahir</label>
                          <input type="date" class="form-control" name="birth_date"  placeholder="Tanggal Lahir"  >
                          
                        </div>
                     
                        <div class="form-group col-6">
                        <label>Jenis Kelamin</label>
                          <select name="gender" class="form-control" >
                              <option value="laki-Laki">Laki-Laki</option>
                              <option value="Perempuan">Perempuan</option>
                          </select>
                          
                        </div>
                      </div>

                      <div class="form-group row">
                          <div class="form-group col-md-6 col-12">
                        <label>Image</label>
                         <input type="file" class="form-control image-input-preview"  value="" name="image" placeholder="Image Mentor" data-id="img-thumbnail">
                      </div>
                      <div class="form-group col-md-6 col-12">
                          <img src="/public_file/assets/img/news/img08.jpg" id="img-thumbnail" alt="" class="img-fluid" style="max-width: 150px"><br>
                          
                    </div>
                          <div class="invalid-feedback">
                            What's image division?
                      </div>    
                        </div>
                       <div class="form-group row">
                          <div class="form-group col-12">
                        <label>Mentor Divisi</label>
                          <select name="divisions[]" id="divisions" class="form-control" required multiple="multiple">
                              @foreach ($divisions as $division)
                                  <option value="{{$division->id}}">{{$division->name}}</option>
                              @endforeach
                          </select>
                          <div class="invalid-feedback">
                            What's division?
                          </div>
                        </div>
                      </div>
                        <div class="form-group row">
                        <div class="form-group col-12">
                        <label>Sertifikasi</label>
                          <input type="text" class="form-control" name="sertifikasi" placeholder="Sertifikasi">
                          <div class="invalid-feedback">
                            Sertifikasi?
                          </div>
                        </div>
                      </div>
                       <div class="form-group row">
                        <div class="form-group col-6">
                        <label>Nomor Whatsapp</label>
                          <input type="number" class="form-control" name="whatsapp"  placeholder="Nomor Whatsapp"  >
                          
                        </div>
                     
                        <div class="form-group col-6">
                        <label>Instagram Nickname</label>
                          <input type="text" class="form-control" name="instagram"placeholder="Instagram Nickname">
                          
                        </div>
                      </div>
              
                    </div>
                    <div class="modal-footer ml-3">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save</button>
                    </div>
                </form>
        </div>
        </div>
    </div>

     <!-- Modal Update -->
    <div class="modal fade" id="updateMentor" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="updateMentorLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header border-bottom pb-4">
            <h5 class="modal-title" id="updateMentorLabel">update Mentor</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
               <form class="needs-validation" novalidate id="update">
                     
                       <div class="form-group row">
                        <div class="form-group col-12">
                        <label>Mentor Name</label>
                         <input type="text" class="form-control" name="name" placeholder="Nama Mentor"  required="">
                          <div class="invalid-feedback">
                            What's Mentor name?
                          </div>
                        </div>
                      </div>

                       <div class="form-group row">
                        <div class="form-group col-12">
                        <label>Keahlian / Profesion</label>
                          <input type="text" class="form-control" name="profession" placeholder="Keahlian / Profesion" required="">
                          <div class="invalid-feedback">
                            Keahlian / Profesion?
                          </div>
                        </div>
                      </div>

                      <div class="form-group row">
                        <div class="form-group col-6">
                        <label>Tanggal Lahir</label>
                          <input type="date" class="form-control" name="birth_date"  placeholder="Tanggal Lahir"  >
                          
                        </div>
                     
                        <div class="form-group col-6">
                        <label>Jenis Kelamin</label>
                          <select name="gender" class="form-control" >
                              <option value="laki-Laki">Laki-Laki</option>
                              <option value="Perempuan">Perempuan</option>
                          </select>
                          
                        </div>
                      </div>

                      <div class="form-group row">
                          <div class="form-group col-md-6 col-12">
                        <label>Image</label>
                         <input type="file" class="form-control image-input-preview"  value="" name="image" placeholder="Image Mentor" data-id="img-thumbnail">
                      </div>
                      <div class="form-group col-md-6 col-12">
                          <img src="/public_file/assets/img/news/img08.jpg" id="img-thumbnail" alt="" class="img-fluid" style="max-width: 150px"><br>
                          
                    </div>
                          <div class="invalid-feedback">
                            What's image division?
                      </div>    
                        </div>
                       <div class="form-group row">
                          <div class="form-group col-12">
                        <label>Mentor Divisi</label>
                          <select name="divisions[]" class="form-control" required multiple="multiple">
                              @foreach ($divisions as $division)
                                  <option value="{{$division->id}}">{{$division->name}}</option>
                              @endforeach
                          </select>
                          <div class="invalid-feedback">
                            What's division?
                          </div>
                        </div>
                      </div>
                        <div class="form-group row">
                        <div class="form-group col-12">
                        <label>Sertifikasi</label>
                          <input type="text" class="form-control" name="sertifikasi" placeholder="Sertifikasi">
                          <div class="invalid-feedback">
                            Sertifikasi?
                          </div>
                        </div>
                      </div>
                       <div class="form-group row">
                        <div class="form-group col-6">
                        <label>Nomor Whatsapp</label>
                          <input type="number" class="form-control" name="whatsapp"  placeholder="Nomor Whatsapp"  >
                          
                        </div>
                     
                        <div class="form-group col-6">
                        <label>Instagram Nickname</label>
                          <input type="text" class="form-control" name="instagram"placeholder="Instagram Nickname">
                          
                        </div>
                      </div>
              
                    </div>
                    <div class="modal-footer ml-3">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save</button>
                    </div>
                </form>
        </div>
        </div>
    </div>

@endsection
