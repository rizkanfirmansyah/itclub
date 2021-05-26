@extends('templates.dashboard')

@section('main')

    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4>Trash Mentor</h4>
                    <div class="ml-auto">
                        <a href="#" class="btn btn-info rounded" id="recoveryData"><i class="fas fa-recycle"></i>
                            Recovery</a>
                        <a href="#" class="btn btn-danger rounded" id="deleteData"><i class="far fa-trash-alt"></i>
                            Hapus</a>
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
                                                onchange="checkbox_all(this)" class="custom-control-input"
                                                id="checkbox-all">
                                            <label for="checkbox-all" class="custom-control-label">&nbsp;</label>
                                        </div>
                                    </th>
                                  <th>Name</th>
                            <th>Division</th>
                            <th>Profession</th>
                            <th>Image</th>             
                            <th>Created At</th>
                            <th>Deleted At</th>
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


@endsection
