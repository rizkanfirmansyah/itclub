@extends('templates.dashboard')

@section('main')

        <div class="row">
          <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4>Data Member SMK 5</h4>
                <div class="ml-auto">
                    <a href="#" class="btn btn-primary rounded" data-target="#insertMember" data-toggle="modal"><i class="fas fa-plus"></i> Tambah</a>
                    <a href="#" class="btn btn-danger rounded" id="deleteArray"><i class="far fa-trash-alt" ></i> Hapus</a>
                </div>
              </div>
              <div class="card-body p-3">
                <div class="table-responsive">
                  <table class="table table-striped" id="table">
                    <thead>
                        <tr>
                            <th width="10px">
                                <div class="custom-checkbox custom-control">
                                <input type="checkbox" data-checkboxes="mygroup" data-checkbox-role="dad" class="custom-control-input" id="checkbox-all">
                                <label for="checkbox-all" class="custom-control-label">&nbsp;</label>
                                </div>
                            </th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Division</th>
                            <th>Class</th>
                            <th>Position</th>
                            <th>Entry Year</th>
                            <th>Image</th>
                            <th>Created At</th>
                            <th>Status</th>
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

  <!-- Modal Insert -->
    <div class="modal fade" id="insertMember" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="insertMemberLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header border-bottom pb-4">
            <h5 class="modal-title" id="insertMemberLabel">Insert Member</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
               <form class="needs-validation" novalidate id="insert">
                <div class="row">
                      <div class="form-group col-md-6 col-12">
                        <label>User ID</label>
                        <select required name="user_id" class="form-control">
                              <option selected disabled>== Email dari table User ==</option>
                              @foreach ($users as $data)
                                <option value="{{$data->id}}">{{$data->email}}</option>
                              @endforeach
                          </select>
                        <div class="invalid-feedback">
                          Please fill in the ID User
                        </div>
                      </div>
                      <div class="form-group col-md-6 col-12">
                        <label>Division</label>
                        <select required name="division_id" class="form-control">
                              <option selected disabled>== Pilih Divisi ==</option>
                              @foreach ($divisions as $data)
                                <option value="{{$data->id}}">{{$data->name}}</option>
                              @endforeach
                          </select>
                        <div class="invalid-feedback">
                          Please fill in the Division
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="form-group col-md-6 col-12">
                        <label>Name</label>
                        <input type="text" class="form-control" name="name" required="" placeholder="Name Member"  >
                        <div class="invalid-feedback">
                          Please fill in the Name
                        </div>
                      </div>
                       <div class="form-group col-md-6 col-12">
                        <label>Jabatan</label>
                        <input type="text" class="form-control" name="position" required="" placeholder="Posisi Member"  >
                        <div class="invalid-feedback">
                          Please fill in the Position
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="form-group col-md-6 col-12">
                        <label>Kelas</label>
                        <select required name="class" class="form-control">
                              <option selected disabled>== Kelas ==</option>
                              <option value="10">10</option>
                              <option value="11">11</option>
                              <option value="12">12</option>
                              <option value="13">13</option>
                          </select>
                        <div class="invalid-feedback">
                          Please fill in the Class
                        </div>
                      </div>
                      <div class="form-group col-md-6 col-12">
                        <label>Jurusan</label>
                        <select required name="majors" class="form-control">
                              <option selected disabled>== Jurusan ==</option>
                              <option value="TKJ">Teknik Komputer Jaringan</option>
                              <option value="DPIB">DPIB</option>
                              <option value="GEO">Geomatika</option>
                              <option value="KGSP">KGSP</option>
                              <option value="KA">Kimia Analisis</option>
                              <option value="PF">Produksi Film</option>
                          </select>
                        <div class="invalid-feedback">
                          Please fill in the Majors
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="form-group col-md-6 col-12">
                        <label>Entry Year</label>
                        <input type="date" class="form-control" name="entry_year" required="" placeholder="Entry Year Member"  >
                        <div class="invalid-feedback">
                          Please fill in the Year
                        </div>
                      </div>

                    </div>
                    <div class="row">
                      <div class="form-group col-md-6 col-12">
                        <label>Thumbnail</label>
                        <input type="file" class="form-control image-input-preview"  value="" name="image" placeholder="Pelajar" data-id="img-thumbnail">
                      </div>
                      <div class="form-group col-md-6 col-12">
                          <img src="/public_file/assets/img/news/img08.jpg" id="img-thumbnail" alt="" class="img-fluid" style="max-width: 150px"><br>
                          <a id="" href="#">Hapus Gambar</a>
                    </div>
                </div>

                    <hr>

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
    <div class="modal fade" id="updateMember" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="updateMemberLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header border-bottom pb-4">
            <h5 class="modal-title" id="updateMemberLabel">Update Member</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
               <form class="needs-validation" novalidate id="update">
                <div class="row">
                      <div class="form-group col-md-6 col-12">
                        <label>User ID</label>
                        <select required name="user_id" class="form-control">
                              <option selected disabled>== ID dari table User ==</option>
                              @foreach ($users as $data)
                                <option value="{{$data->id}}">{{$data->email}}</option>
                              @endforeach
                          </select>
                        <div class="invalid-feedback">
                          Please fill in the ID User
                        </div>
                      </div>
                      <div class="form-group col-md-6 col-12">
                        <label>Division</label>
                        <select required name="division_id" class="form-control">
                              <option selected disabled>== Pilih Divisi ==</option>
                              @foreach ($divisions as $data)
                                <option value="{{$data->id}}">{{$data->name}}</option>
                              @endforeach
                          </select>
                        <div class="invalid-feedback">
                          Please fill in the Division
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="form-group col-md-6 col-12">
                        <label>Name</label>
                        <input type="text" class="form-control" name="name" required="" placeholder="Name Member"  >
                        <div class="invalid-feedback">
                          Please fill in the Name
                        </div>
                      </div>
                       <div class="form-group col-md-6 col-12">
                        <label>Jabatan</label>
                        <input type="text" class="form-control" name="position" required="" placeholder="Posisi Member"  >
                        <div class="invalid-feedback">
                          Please fill in the Position
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="form-group col-md-6 col-12">
                        <label>Kelas</label>
                        <select required name="class" class="form-control">
                              <option selected disabled>== Kelas ==</option>
                              <option value="10">10</option>
                              <option value="11">11</option>
                              <option value="12">12</option>
                              <option value="13">13</option>
                          </select>
                        <div class="invalid-feedback">
                          Please fill in the Class
                        </div>
                      </div>
                      <div class="form-group col-md-6 col-12">
                        <label>Jurusan</label>
                        <select required name="majors" class="form-control">
                              <option selected disabled>== Jurusan ==</option>
                              <option value="TKJ">Teknik Komputer Jaringan</option>
                              <option value="DPIB">DPIB</option>
                              <option value="GEO">Geomatika</option>
                              <option value="KGSP">KGSP</option>
                              <option value="KA">Kimia Analisis</option>
                              <option value="PF">Produksi Film</option>
                          </select>
                        <div class="invalid-feedback">
                          Please fill in the Majors
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="form-group col-md-6 col-12">
                        <label>Entry Year</label>
                        <input type="date" class="form-control" name="entry_year" required="" placeholder="Entry Year Member"  >
                        <div class="invalid-feedback">
                          Please fill in the Year
                        </div>
                      </div>

                    </div>
                    <div class="row">
                      <div class="form-group col-md-6 col-12">
                        <label>Thumbnail</label>
                        <input type="file" class="form-control image-input-preview"  value="" name="image" placeholder="Pelajar" data-id="img-thumbnail">
                      </div>
                      <div class="form-group col-md-6 col-12">
                          <img src="" id="img-thumbnail" alt="" class="img-fluid" style="max-width: 150px"><br>
                          <a id="" href="#">Hapus Gambar</a>
                    </div>
                </div>

                    <hr>

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
