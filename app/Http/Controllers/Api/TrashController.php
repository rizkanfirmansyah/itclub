<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\{
    Section,Submenu,Menu,Prestation,User,Division,ImageDivision,Alumni,Gallery,ImageGallery,Category,Member,Activity,Schedule,TestList,ScoreList,Mentor,MemberIT
    };
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class TrashController extends Controller
{
    //
    public function section_get()
    {
        $section = Section::onlyTrashed();
        return DataTables::of($section)
            ->addIndexColumn()
            ->addColumn('check', function ($section) {
                return  '<div class="custom-checkbox custom-control">
                        <input type="checkbox" data-checkboxes="mygroup" data-checkbox-role="dad" class="custom-control-input" value="' . $section->id . '" name="id-checkbox" onchange="checkbox_this(this)" id="checkbox-' . $section->id . '" >
                    <label for="checkbox-' . $section->id . '" class="custom-control-label">&nbsp;</label>
                    </div>';
            })
            ->addColumn('btn', function ($section) {
                return '
            <a href="#" class="btn btn-icon btn-sm btn-info" data-value="' . $section->id . '" id="recycle"><i class="fas fa-recycle"></i></a>
            <a href="#" class="btn btn-icon btn-sm btn-danger" data-value="' . $section->id . '" id="delete"><i class="fas fa-trash"></i></a>
            ';
            })
            ->editColumn('created_by', function ($section) {
                return $section->users()->name;
            })
            ->editColumn('created_at', function ($section) {
                return date('d-M-Y H:i', strtotime($section->created_at));
            })
            ->editColumn('deleted_at', function ($section) {
                return date('d-M-Y H:i', strtotime($section->deleted_at));
            })
            ->rawColumns(['check', 'btn', 'status'])
            ->make(true);
    }

    public function section_recovery(Request $request)
    {
        activity('merecovery data sampah section');
        if (is_array($request->value)) {
            foreach ($request->value as $value) {
                Section::onlyTrashed()->where('id', $value)->restore();
            }
            return response()->json(['message' => 'Data berhasil di restore', 'status' => 'success'], 200);
        }
        Section::onlyTrashed()->where('id', $request->value)->restore();
        return response()->json(['message' => 'Data berhasil di restore', 'status' => 'success'], 200);
    }

    public function section_delete(Request $request)
    {
        activity('menghapus data sampah section');
        if (is_array($request->value)) {
            foreach ($request->value as $value) {
                Section::onlyTrashed()->where('id', $value)->forceDelete();
            }
            return response()->json(['message' => 'Data berhasil di hapus', 'status' => 'success'], 200);
        }
        Section::onlyTrashed()->where('id', $request->value)->forceDelete();
        return response()->json(['message' => 'Data berhasil di hapus', 'status' => 'success'], 200);
    }

    public function menu_get()
    {
        $menu = Menu::onlyTrashed();
        return DataTables::of($menu)
            ->addIndexColumn()
            ->addColumn('check', function ($menu) {
                return  '<div class="custom-checkbox custom-control">
                        <input type="checkbox" data-checkboxes="mygroup" data-checkbox-role="dad" class="custom-control-input" value="' . $menu->id . '" name="id-checkbox" onchange="checkbox_this(this)" id="checkbox-' . $menu->id . '" >
                    <label for="checkbox-' . $menu->id . '" class="custom-control-label">&nbsp;</label>
                    </div>';
            })
            ->addColumn('btn', function ($menu) {
                return '
            <a href="#" class="btn btn-icon btn-sm btn-info" data-value="' . $menu->id . '" id="recycle"><i class="fas fa-recycle"></i></a>
            <a href="#" class="btn btn-icon btn-sm btn-danger" data-value="' . $menu->id . '" id="delete"><i class="fas fa-trash"></i></a>
            ';
            })
            ->editColumn('created_by', function ($menu) {
                return $menu->users()->name;
            })
            ->editColumn('created_at', function ($menu) {
                return date('d-M-Y H:i', strtotime($menu->created_at));
            })
            ->editColumn('deleted_at', function ($menu) {
                return date('d-M-Y H:i', strtotime($menu->deleted_at));
            })
            ->rawColumns(['check', 'btn', 'status'])
            ->make(true);
    }

    public function menu_recovery(Request $request)
    {
        activity('merecovery data sampah menu');
        if (is_array($request->value)) {
            foreach ($request->value as $value) {
                Menu::onlyTrashed()->where('id', $value)->restore();
            }
            return response()->json(['message' => 'Data berhasil di restore', 'status' => 'success'], 200);
        }
        Menu::onlyTrashed()->where('id', $request->value)->restore();
        return response()->json(['message' => 'Data berhasil di restore', 'status' => 'success'], 200);
    }

    public function menu_delete(Request $request)
    {
        activity('menghapus data sampah menu');
        if (is_array($request->value)) {
            foreach ($request->value as $value) {
                Menu::onlyTrashed()->where('id', $value)->forceDelete();
            }
            return response()->json(['message' => 'Data berhasil di hapus', 'status' => 'success'], 200);
        }
        Menu::onlyTrashed()->where('id', $request->value)->forceDelete();
        return response()->json(['message' => 'Data berhasil di hapus', 'status' => 'success'], 200);
    }

    public function submenu_get()
    {
        $submenu = Submenu::onlyTrashed();
        return DataTables::of($submenu)
            ->addIndexColumn()
            ->addColumn('check', function ($submenu) {
                return  '<div class="custom-checkbox custom-control">
                        <input type="checkbox" data-checkboxes="mygroup" data-checkbox-role="dad" class="custom-control-input" value="' . $submenu->id . '" name="id-checkbox" onchange="checkbox_this(this)" id="checkbox-' . $submenu->id . '" >
                    <label for="checkbox-' . $submenu->id . '" class="custom-control-label">&nbsp;</label>
                    </div>';
            })
            ->addColumn('btn', function ($submenu) {
                return '
            <a href="#" class="btn btn-icon btn-sm btn-info" data-value="' . $submenu->id . '" id="recycle"><i class="fas fa-recycle"></i></a>
            <a href="#" class="btn btn-icon btn-sm btn-danger" data-value="' . $submenu->id . '" id="delete"><i class="fas fa-trash"></i></a>
            ';
            })
            ->editColumn('created_by', function ($submenu) {
                return $submenu->users()->name;
            })
            ->editColumn('created_at', function ($submenu) {
                return date('d-M-Y H:i', strtotime($submenu->created_at));
            })
            ->editColumn('deleted_at', function ($submenu) {
                return date('d-M-Y H:i', strtotime($submenu->deleted_at));
            })
            ->rawColumns(['check', 'btn', 'status'])
            ->make(true);
    }

    public function submenu_recovery(Request $request)
    {
        activity('merecovery data sampah submenu');
        if (is_array($request->value)) {
            foreach ($request->value as $value) {
                Submenu::onlyTrashed()->where('id', $value)->restore();
            }
            return response()->json(['message' => 'Data berhasil di restore', 'status' => 'success'], 200);
        }
        Submenu::onlyTrashed()->where('id', $request->value)->restore();
        return response()->json(['message' => 'Data berhasil di restore', 'status' => 'success'], 200);
    }

    public function submenu_delete(Request $request)
    {
        activity('menghapus data sampah submenu');
        if (is_array($request->value)) {
            foreach ($request->value as $value) {
                Submenu::onlyTrashed()->where('id', $value)->forceDelete();
            }
            return response()->json(['message' => 'Data berhasil di hapus', 'status' => 'success'], 200);
        }
        Submenu::onlyTrashed()->where('id', $request->value)->forceDelete();
        return response()->json(['message' => 'Data berhasil di hapus', 'status' => 'success'], 200);
    }

     public function prestation_get()
    {
        $prestation = Prestation::onlyTrashed();
        return DataTables::of($prestation)
            ->addIndexColumn()
            ->addColumn('check', function ($prestation) {
                return  '<div class="custom-checkbox custom-control">
                        <input type="checkbox" data-checkboxes="mygroup" data-checkbox-role="dad" class="custom-control-input" value="' . $prestation->id . '" name="id-checkbox" onchange="checkbox_this(this)" id="checkbox-' . $prestation->id . '" >
                    <label for="checkbox-' . $prestation->id . '" class="custom-control-label">&nbsp;</label>
                    </div>';
            })
            ->addColumn('btn', function ($prestation) {
                return '
            <a href="#" class="btn btn-icon btn-sm btn-info" data-value="' . $prestation->id . '" id="recycle"><i class="fas fa-recycle"></i></a>
            <a href="#" class="btn btn-icon btn-sm btn-danger" data-value="' . $prestation->id . '" id="delete"><i class="fas fa-trash"></i></a>
            ';
            })
            ->editColumn('created_at', function ($prestation) {
                return date('d-M-Y H:i', strtotime($prestation->created_at));
            })
            ->editColumn('deleted_at', function ($prestation) {
                return date('d-M-Y H:i', strtotime($prestation->deleted_at));
            })
            ->rawColumns(['check', 'btn', 'status'])
            ->make(true);
    }

    public function prestation_recovery(Request $request)
    {
        activity('merecovery data sampah prestation');
        if (is_array($request->value)) {
            foreach ($request->value as $value) {
                Prestation::onlyTrashed()->where('id', $value)->restore();
            }
            return response()->json(['message' => 'Data berhasil di restore', 'status' => 'success'], 200);
        }
        Prestation::onlyTrashed()->where('id', $request->value)->restore();
        return response()->json(['message' => 'Data berhasil di restore', 'status' => 'success'], 200);
    }

    public function prestation_delete(Request $request)
    {
        activity('menghapus data sampah prestation');
        if (is_array($request->value)) {
            foreach ($request->value as $value) {
               $prestation = Prestation::onlyTrashed()->where('id', $value)->first();
               \Storage::delete($prestation->image);
               $prestation->forceDelete();
            }
            return response()->json(['message' => 'Data berhasil di hapus', 'status' => 'success'], 200);
        }
      
        $prestation = Prestation::onlyTrashed()->where('id', $request->value)->first();
        \Storage::delete($prestation->image);
        $prestation->forceDelete();
        return response()->json(['message' => 'Data berhasil di hapus', 'status' => 'success'], 200);
    }

     public function user_get()
    {
        $user = User::onlyTrashed();
        return DataTables::of($user)
            ->addIndexColumn()
            ->addColumn('check', function ($user) {
                return  '<div class="custom-checkbox custom-control">
                        <input type="checkbox" data-checkboxes="mygroup" data-checkbox-role="dad" class="custom-control-input" value="' . $user->id . '" name="id-checkbox" onchange="checkbox_this(this)" id="checkbox-' . $user->id . '" >
                    <label for="checkbox-' . $user->id . '" class="custom-control-label">&nbsp;</label>
                    </div>';
            })
            ->addColumn('btn', function ($user) {
                return '
            <a href="#" class="btn btn-icon btn-sm btn-info" data-value="' . $user->id . '" id="recycle"><i class="fas fa-recycle"></i></a>
            <a href="#" class="btn btn-icon btn-sm btn-danger" data-value="' . $user->id . '" id="delete"><i class="fas fa-trash"></i></a>
            ';
            })
            ->editColumn('role_id', function ($user) {
                return $user->roles->name;
            })
            ->editColumn('email_verified_at', function ($user) {
                if ($user->email_verified_at) {
                    $data = '<a class="text-success"><i class="fas fa-check"></i> Verified</a>';
                } else {
                    $data = '<a class="text-danger"><i class="fas fa-times"></i> Not Verified</a>';
                }
                return $data;
            })
            ->editColumn('created_at', function ($user) {
                return date('d-M-Y H:i', strtotime($user->created_at));
            })
            ->editColumn('deleted_at', function ($user) {
                return date('d-M-Y H:i', strtotime($user->deleted_at));
            })
            ->rawColumns(['check', 'btn', 'email_verified_at', 'role_id'])
            ->make(true);
    }

    public function user_recovery(Request $request)
    {
        activity('merecovery data sampah user');
        if (is_array($request->value)) {
            foreach ($request->value as $value) {
                 $user = User::onlyTrashed()->where('id', $value)->first();
                  $user->restore();  
            }
            return response()->json(['message' => 'Data berhasil di restore', 'status' => 'success'], 200);
        }
      $user = User::onlyTrashed()->where('id', $request->value)->first();
      $user->restore();  
        return response()->json(['message' => 'Data berhasil di restore', 'status' => 'success'], 200);
    }

    public function user_delete(Request $request)
    {
        activity('menghapus data sampah user');

        if (is_array($request->value)) {
            foreach ($request->value as $value) {
               $user = User::onlyTrashed()->where('id', $value)->first();
                $user->member()->forceDelete();
               $user->forceDelete();
            }
            return response()->json(['message' => 'Data berhasil di hapus', 'status' => 'success'], 200);
        }
      
      $user = User::onlyTrashed()->where('id', $request->value)->first();
      $user->member()->forceDelete();  
      $user->forceDelete();

        return response()->json(['message' => 'Data berhasil di hapus', 'status' => 'success'], 200);
    }
// 
    public function division_get()
    {
        $division = Division::onlyTrashed();
        return DataTables::of($division)
            ->addIndexColumn()
            ->addColumn('check', function ($division) {
                return  '<div class="custom-checkbox custom-control">
                        <input type="checkbox" data-checkboxes="mygroup" data-checkbox-role="dad" class="custom-control-input" value="' . $division->id . '" name="id-checkbox" onchange="checkbox_this(this)" id="checkbox-' . $division->id . '" >
                    <label for="checkbox-' . $division->id . '" class="custom-control-label">&nbsp;</label>
                    </div>';
            })
            ->addColumn('btn', function ($division) {
                return '
            <a href="#" class="btn btn-icon btn-sm btn-info" data-value="' . $division->id . '" id="recycle"><i class="fas fa-recycle"></i></a>
            <a href="#" class="btn btn-icon btn-sm btn-danger" data-value="' . $division->id . '" id="delete"><i class="fas fa-trash"></i></a>
            ';
            })
            ->addColumn('imageDivisi', function ($division) {
                return '<img src="' . $division->image() . '" width="50">';
            })
            ->editColumn('created_at', function ($division) {
                return date('d-M-Y H:i', strtotime($division->created_at));
            })
            ->editColumn('deleted_at', function ($division) {
                return date('d-M-Y H:i', strtotime($division->deleted_at));
            })
            ->rawColumns(['check', 'btn', 'status', 'imageDivisi'])
            ->make(true);
    }

    public function division_recovery(Request $request)
    {
        activity('merecovery data sampah divisi');
        if (is_array($request->value)) {
            foreach ($request->value as $value) {
                 $division = Division::onlyTrashed()->where('id', $value)->first();
                  
                  $division->restore();  
            }
            return response()->json(['message' => 'Data berhasil di restore', 'status' => 'success'], 200);
        }
      $division = Division::onlyTrashed()->where('id', $request->value)->first();
     
      $division->restore();  
        return response()->json(['message' => 'Data berhasil di restore', 'status' => 'success'], 200);
    }

    public function division_delete(Request $request)
    {
        activity('menghapus data sampah divisi');

        if (is_array($request->value)) {
            foreach ($request->value as $value) {
               $division = Division::onlyTrashed()->where('id', $value)->first();
                \Storage::delete($division->image);

               $division->images()->forceDelete();
               $division->members()->forceDelete();
               $division->forceDelete();
            }
            return response()->json(['message' => 'Data berhasil di hapus', 'status' => 'success'], 200);
        }
      
      $division = Division::onlyTrashed()->where('id', $request->value)->first();
      \Storage::delete($division->image);
      
       foreach ($division->images as $data) {
            \Storage::delete($data->image);
         }

      $division->images()->forceDelete();
      $division->members()->forceDelete();
      $division->forceDelete();

        return response()->json(['message' => 'Data berhasil di hapus', 'status' => 'success'], 200);
    }

    public function imageDivision_get()
    {
        $imageDivision = ImageDivision::onlyTrashed();

        return DataTables::of($imageDivision)
            ->addIndexColumn()
            ->addColumn('check', function ($imageDivision) {
                return  '<div class="custom-checkbox custom-control">
                        <input type="checkbox" data-checkboxes="mygroup" data-checkbox-role="dad" class="custom-control-input" value="' . $imageDivision->id . '" name="id-checkbox" onchange="checkbox_this(this)" id="checkbox-' . $imageDivision->id . '" >
                    <label for="checkbox-' . $imageDivision->id . '" class="custom-control-label">&nbsp;</label>
                    </div>';
            })
            ->addColumn('btn', function ($imageDivision) {
                return '
            <a href="#" class="btn btn-icon btn-sm btn-info" data-value="' . $imageDivision->id . '" id="recycle"><i class="fas fa-recycle"></i></a>
            <a href="#" class="btn btn-icon btn-sm btn-danger" data-value="' . $imageDivision->id . '" id="delete"><i class="fas fa-trash"></i></a>
            ';
            })
            ->addColumn('imageDivisi', function ($imageDivision) {
                return '<img src="' . $imageDivision->image() . '" width="50">';
            })
            ->editColumn('division_id', function ($imageDivision) {   
                return $imageDivision->division->name;
            })
            ->editColumn('created_at', function ($imageDivision) {
                return date('d-M-Y H:i', strtotime($imageDivision->created_at));
            })
            ->editColumn('deleted_at', function ($imageDivision) {
                return date('d-M-Y H:i', strtotime($imageDivision->deleted_at));
            })
            ->rawColumns(['check', 'btn', 'status', 'division_id', 'imageDivisi'])
            ->make(true);
    }

    public function imageDivision_recovery(Request $request)
    {
        activity('merecovery data sampah image divisi');
        if (is_array($request->value)) {
            foreach ($request->value as $value) {
                ImageDivision::onlyTrashed()->where('id', $value)->restore();
            }
            return response()->json(['message' => 'Data berhasil di restore', 'status' => 'success'], 200);
        }
         ImageDivision::onlyTrashed()->where('id', $request->value)->restore();
        return response()->json(['message' => 'Data berhasil di restore', 'status' => 'success'], 200);
    }

    public function imageDivision_delete(Request $request)
    {
        activity('menghapus data sampah image divisi');
        if (is_array($request->value)) {
            foreach ($request->value as $value) {
               $imageDivision = ImageDivision::onlyTrashed()->where('id', $value)->first();
                \Storage::delete($imageDivision->image);
               $imageDivision->forceDelete();
            }
            return response()->json(['message' => 'Data berhasil di hapus', 'status' => 'success'], 200);
        }
      
       $imageDivision = ImageDivision::onlyTrashed()->where('id', $request->value)->first();
      \Storage::delete($imageDivision->image);
      $imageDivision->forceDelete();
        return response()->json(['message' => 'Data berhasil di hapus', 'status' => 'success'], 200);
    }

    public function alumni_get()
    {
        $alumni = Alumni::onlyTrashed();

        return DataTables::of($alumni)
            ->addIndexColumn()
            ->addColumn('check', function ($alumni) {
                return  '<div class="custom-checkbox custom-control">
                        <input type="checkbox" data-checkboxes="mygroup" data-checkbox-role="dad" class="custom-control-input" value="' . $alumni->id . '" name="id-checkbox" onchange="checkbox_this(this)" id="checkbox-' . $alumni->id . '" >
                    <label for="checkbox-' . $alumni->id . '" class="custom-control-label">&nbsp;</label>
                    </div>';
            })
            ->addColumn('btn', function ($alumni) {
                return '
            <a href="#" class="btn btn-icon btn-sm btn-info" data-value="' . $alumni->id . '" id="recycle"><i class="fas fa-recycle"></i></a>
            <a href="#" class="btn btn-icon btn-sm btn-danger" data-value="' . $alumni->id . '" id="delete"><i class="fas fa-trash"></i></a>
            ';
            })
            ->editColumn('image', function ($alumni) {
                return '<img src="' . $alumni->image() . '" width="50">';
            })
            ->editColumn('member_id', function ($alumni) {   
                return $alumni->member->name;
            })
            ->editColumn('created_at', function ($alumni) {
                return date('d-M-Y H:i', strtotime($alumni->created_at));
            })
            ->editColumn('deleted_at', function ($alumni) {
                return date('d-M-Y H:i', strtotime($alumni->deleted_at));
            })
            ->rawColumns(['check', 'btn', 'status', 'member_id', 'image'])
            ->make(true);
    }

    public function alumni_recovery(Request $request)
    {
        activity('merecovery data sampah alumni');
        if (is_array($request->value)) {
            foreach ($request->value as $value) {
                Alumni::onlyTrashed()->where('id', $value)->restore();
            }
            return response()->json(['message' => 'Data berhasil di restore', 'status' => 'success'], 200);
        }
         Alumni::onlyTrashed()->where('id', $request->value)->restore();
        return response()->json(['message' => 'Data berhasil di restore', 'status' => 'success'], 200);
    }

    public function alumni_delete(Request $request)
    {
        activity('menghapus data sampah alumni');
        if (is_array($request->value)) {
            foreach ($request->value as $value) {
               $alumni = Alumni::onlyTrashed()->where('id', $value)->first();
                \Storage::delete($alumni->image);
               $alumni->forceDelete();
            }
            return response()->json(['message' => 'Data berhasil di hapus', 'status' => 'success'], 200);
        }
      
      $alumni = Alumni::onlyTrashed()->where('id', $request->value)->first();
      \Storage::delete($alumni->image);
      $alumni->forceDelete();
        return response()->json(['message' => 'Data berhasil di hapus', 'status' => 'success'], 200);
    }
    // 
     public function member_get()
    {
        $member = Member::onlyTrashed();

        return DataTables::of($member)
            ->addIndexColumn()
            ->addColumn('check', function ($member) {
                return  '<div class="custom-checkbox custom-control">
                        <input type="checkbox" data-checkboxes="mygroup" data-checkbox-role="dad" class="custom-control-input" value="' . $member->id . '" name="id-checkbox" onchange="checkbox_this(this)" id="checkbox-' . $member->id . '" >
                    <label for="checkbox-' . $member->id . '" class="custom-control-label">&nbsp;</label>
                    </div>';
            })
            ->addColumn('btn', function ($member) {
                return '
            <a href="#" class="btn btn-icon btn-sm btn-info" data-value="' . $member->id . '" id="recycle"><i class="fas fa-recycle"></i></a>
            <a href="#" class="btn btn-icon btn-sm btn-danger" data-value="' . $member->id . '" id="delete"><i class="fas fa-trash"></i></a>
            ';
            })
            ->addColumn('imageMember', function ($member) {
                return '<img src="' . $member->image() . '" width="50">';
            })
          
            ->editColumn('user_id', function ($member) {
                return $member->user->email;
            })
            ->editColumn('division_id', function ($member) {
                return $member->division->name;
            })
            ->rawColumns(['check', 'btn', 'imageMember','user_id','division_id'])
            ->make(true);
    }

    public function member_recovery(Request $request)
    {
        activity('merecovery data sampah member');
        if (is_array($request->value)) {
            foreach ($request->value as $value) {
                Member::onlyTrashed()->where('id', $value)->restore();
            }
            return response()->json(['message' => 'Data berhasil di restore', 'status' => 'success'], 200);
        }
         Member::onlyTrashed()->where('id', $request->value)->restore();
        return response()->json(['message' => 'Data berhasil di restore', 'status' => 'success'], 200);
    }

    public function member_delete(Request $request)
    {
        activity('menghapus data sampah member');
        if (is_array($request->value)) {
            foreach ($request->value as $value) {
               $member = Member::onlyTrashed()->where('id', $value)->first();
                \Storage::delete($member->image);
                // $member->alumni()->forceDelete();
               $member->forceDelete();
            }
            return response()->json(['message' => 'Data berhasil di hapus', 'status' => 'success'], 200);
        }
      
      $member = Member::onlyTrashed()->where('id', $request->value)->first();
      \Storage::delete($member->image);
      // $member->alumni()->forceDelete();
      $member->forceDelete();
        return response()->json(['message' => 'Data berhasil di hapus', 'status' => 'success'], 200);
    }

     public function gallery_get()
    {
        $gallery = Gallery::onlyTrashed();

        return DataTables::of($gallery)
            ->addIndexColumn()
            ->addColumn('check', function ($gallery) {
                return  '<div class="custom-checkbox custom-control">
                        <input type="checkbox" data-checkboxes="mygroup" data-checkbox-role="dad" class="custom-control-input" value="' . $gallery->id . '" name="id-checkbox" onchange="checkbox_this(this)" id="checkbox-' . $gallery->id . '" >
                    <label for="checkbox-' . $gallery->id . '" class="custom-control-label">&nbsp;</label>
                    </div>';
            })
            ->addColumn('btn', function ($gallery) {
                return '
            <a href="#" class="btn btn-icon btn-sm btn-info" data-value="' . $gallery->id . '" id="recycle"><i class="fas fa-recycle"></i></a>
            <a href="#" class="btn btn-icon btn-sm btn-danger" data-value="' . $gallery->id . '" id="delete"><i class="fas fa-trash"></i></a>
            ';
            })
            ->editColumn('image', function ($gallery) {
                return '<img src="' . $gallery->image() . '" width="50">';
            })
            ->editColumn('created_at', function ($gallery) {
                return date('d-M-Y H:i', strtotime($gallery->created_at));
            })

            ->editColumn('deleted_at', function ($gallery) {
                return date('d-M-Y H:i', strtotime($gallery->deleted_at));
            })
            ->rawColumns(['check', 'btn', 'status',  'image'])
            ->make(true);
    }

    public function gallery_recovery(Request $request)
    {
        activity('merecovery data sampah gallery');
        if (is_array($request->value)) {
            foreach ($request->value as $value) {
                Gallery::onlyTrashed()->where('id', $value)->restore();
            }
            return response()->json(['message' => 'Data berhasil di restore', 'status' => 'success'], 200);
        }
         Gallery::onlyTrashed()->where('id', $request->value)->restore();
        return response()->json(['message' => 'Data berhasil di restore', 'status' => 'success'], 200);
    }

    public function gallery_delete(Request $request)
    {
        activity('menghapus data sampah gallery');
        if (is_array($request->value)) {
            foreach ($request->value as $value) {
               $gallery = Gallery::onlyTrashed()->where('id', $value)->first();
                \Storage::delete($gallery->image);
                $gallery->images()->forceDelete();
               $gallery->forceDelete();
            }
            return response()->json(['message' => 'Data berhasil di hapus', 'status' => 'success'], 200);
        }
      
      $gallery = Gallery::onlyTrashed()->where('id', $request->value)->first();
      \Storage::delete($gallery->image);
      $gallery->images()->forceDelete();
      $gallery->forceDelete();
        return response()->json(['message' => 'Data berhasil di hapus', 'status' => 'success'], 200);
    }

    public function imageGallery_get()
    {
        $imageGallery = ImageGallery::onlyTrashed();

        return DataTables::of($imageGallery)
            ->addIndexColumn()
            ->addColumn('check', function ($imageGallery) {
                return  '<div class="custom-checkbox custom-control">
                        <input type="checkbox" data-checkboxes="mygroup" data-checkbox-role="dad" class="custom-control-input" value="' . $imageGallery->id . '" name="id-checkbox" onchange="checkbox_this(this)" id="checkbox-' . $imageGallery->id . '" >
                    <label for="checkbox-' . $imageGallery->id . '" class="custom-control-label">&nbsp;</label>
                    </div>';
            })
            ->addColumn('btn', function ($imageGallery) {
                return '
            <a href="#" class="btn btn-icon btn-sm btn-info" data-value="' . $imageGallery->id . '" id="recycle"><i class="fas fa-recycle"></i></a>
            <a href="#" class="btn btn-icon btn-sm btn-danger" data-value="' . $imageGallery->id . '" id="delete"><i class="fas fa-trash"></i></a>
            ';
            })
            ->editColumn('image', function ($imageGallery) {
                return '<img src="' . $imageGallery->image() . '" width="50">';
            })
             ->editColumn('gallery_id', function ($imageGallery) {
                return $imageGallery->gallery->name;
            })
            ->editColumn('created_at', function ($imageGallery) {
                return date('d-M-Y H:i', strtotime($imageGallery->created_at));
            })
            ->editColumn('deleted_at', function ($imageGallery) {
                return date('d-M-Y H:i', strtotime($imageGallery->deleted_at));
            })
            ->rawColumns(['check', 'btn', 'status', 'gallery_id', 'image'])
            ->make(true);
    }


    public function imageGallery_recovery(Request $request)
    {
        activity('merecovery data sampah image gallery');
        if (is_array($request->value)) {
            foreach ($request->value as $value) {
                ImageGallery::onlyTrashed()->where('id', $value)->restore();
            }
            return response()->json(['message' => 'Data berhasil di restore', 'status' => 'success'], 200);
        }
         ImageGallery::onlyTrashed()->where('id', $request->value)->restore();
        return response()->json(['message' => 'Data berhasil di restore', 'status' => 'success'], 200);
    }

    public function imageGallery_delete(Request $request)
    {
        activity('menghapus data sampah image gallery');
        if (is_array($request->value)) {
            foreach ($request->value as $value) {
               $imageGallery = ImageGallery::onlyTrashed()->where('id', $value)->first();
                \Storage::delete($imageGallery->image);
               $imageGallery->forceDelete();
            }
            return response()->json(['message' => 'Data berhasil di hapus', 'status' => 'success'], 200);
        }
      
      $imageGallery = ImageGallery::onlyTrashed()->where('id', $request->value)->first();
      \Storage::delete($imageGallery->image);
      $imageGallery->forceDelete();
        return response()->json(['message' => 'Data berhasil di hapus', 'status' => 'success'], 200);
    }

    public function category_get()
    {
        $category = Category::onlyTrashed();

        return DataTables::of($category)
            ->addIndexColumn()
            ->addColumn('check', function ($category) {
                return  '<div class="custom-checkbox custom-control">
                        <input type="checkbox" data-checkboxes="mygroup" data-checkbox-role="dad" class="custom-control-input" value="' . $category->id . '" name="id-checkbox" onchange="checkbox_this(this)" id="checkbox-' . $category->id . '" >
                    <label for="checkbox-' . $category->id . '" class="custom-control-label">&nbsp;</label>
                    </div>';
            })
            ->addColumn('btn', function ($category) {
                return '
            <a href="#" class="btn btn-icon btn-sm btn-info" data-value="' . $category->id . '" id="recycle"><i class="fas fa-recycle"></i></a>
            <a href="#" class="btn btn-icon btn-sm btn-danger" data-value="' . $category->id . '" id="delete"><i class="fas fa-trash"></i></a>
            ';
            })
            ->editColumn('created_at', function ($category) {
                return date('d-M-Y H:i', strtotime($category->created_at));
            })
            ->editColumn('deleted_at', function ($category) {
                return date('d-M-Y H:i', strtotime($category->deleted_at));
            })
            ->rawColumns(['check', 'btn'])
            ->make(true);
    }


    public function category_recovery(Request $request)
    {
        activity('merecovery data sampah category');
        if (is_array($request->value)) {
            foreach ($request->value as $value) {
                Category::onlyTrashed()->where('id', $value)->restore();
            }
            return response()->json(['message' => 'Data berhasil di restore', 'status' => 'success'], 200);
        }
         Category::onlyTrashed()->where('id', $request->value)->restore();
        return response()->json(['message' => 'Data berhasil di restore', 'status' => 'success'], 200);
    }

    public function category_delete(Request $request)
    {
        activity('menghapus data sampah category');
        if (is_array($request->value)) {
            foreach ($request->value as $value) {
               Category::onlyTrashed()->where('id', $value)->forceDelete();
            }
            return response()->json(['message' => 'Data berhasil di hapus', 'status' => 'success'], 200);
        }
      
     Category::onlyTrashed()->where('id', $request->value)->forceDelete();
        return response()->json(['message' => 'Data berhasil di hapus', 'status' => 'success'], 200);
    }

    public function activity_get()
    {

        $activity = Activity::onlyTrashed();

        return DataTables::of($activity)
            ->addIndexColumn()
            ->addColumn('check', function ($activity) {
                return  '<div class="custom-checkbox custom-control">
                        <input type="checkbox" data-checkboxes="mygroup" data-checkbox-role="dad" class="custom-control-input" value="' . $activity->id . '" name="id-checkbox" onchange="checkbox_this(this)" id="checkbox-' . $activity->id . '" >
                    <label for="checkbox-' . $activity->id . '" class="custom-control-label">&nbsp;</label>
                    </div>';
            })
            ->addColumn('btn', function ($activity) {
                return '
            <a href="#" class="btn btn-icon btn-sm btn-info" data-value="' . $activity->id . '" id="recycle"><i class="fas fa-recycle"></i></a>
            <a href="#" class="btn btn-icon btn-sm btn-danger" data-value="' . $activity->id . '" id="delete"><i class="fas fa-trash"></i></a>
            ';
            })
            ->editColumn('user_id', function ($activity) {
                return $activity->user->name;
            })
            ->editColumn('status', function ($activity) {
                $data = '<div class="badge badge-secondary">Unknown</div>';
                if (strpos($activity->url_access, 'delete') == TRUE) {
                    $data = '<div class="badge badge-danger">Delete</div>';
                } else if (strpos($activity->url_access, 'insert') == TRUE) {
                    $data = '<div class="badge badge-success">Insert</div>';
                } else if (strpos($activity->url_access, 'update') == TRUE) {
                    $data = '<div class="badge badge-warning">Edit</div>';
                } else if (strpos($activity->url_access, 'recovery') == TRUE) {
                    $data = '<div class="badge badge-info">Recovery</div>';
                }
                return $data;
            })
            ->rawColumns(['status','check','btn'])
            ->make(true);
    }

    public function activity_recovery(Request $request)
    {
        activity('merecovery data sampah activity');
        if (is_array($request->value)) {
            foreach ($request->value as $value) {
                Activity::onlyTrashed()->where('id', $value)->restore();
            }
            return response()->json(['message' => 'Data berhasil di restore', 'status' => 'success'], 200);
        }
         Activity::onlyTrashed()->where('id', $request->value)->restore();
        return response()->json(['message' => 'Data berhasil di restore', 'status' => 'success'], 200);
    }

    public function activity_delete(Request $request)
    {
        activity('menghapus data sampah activity');
        if (is_array($request->value)) {
            foreach ($request->value as $value) {
               Activity::onlyTrashed()->where('id', $value)->forceDelete();
            }
            return response()->json(['message' => 'Data berhasil di hapus', 'status' => 'success'], 200);
        }
      
     Activity::onlyTrashed()->where('id', $request->value)->forceDelete();
        return response()->json(['message' => 'Data berhasil di hapus', 'status' => 'success'], 200);
    }

    public function schedule_get()
    {

        $schedule = Schedule::onlyTrashed();

        return DataTables::of($schedule)
            ->addIndexColumn()
            ->addColumn('check', function ($schedule) {
                return  '<div class="custom-checkbox custom-control">
                        <input type="checkbox" data-checkboxes="mygroup" data-checkbox-role="dad" class="custom-control-input" value="' . $schedule->id . '" name="id-checkbox" onchange="checkbox_this(this)" id="checkbox-' . $schedule->id . '" >
                    <label for="checkbox-' . $schedule->id . '" class="custom-control-label">&nbsp;</label>
                    </div>';
            })
            ->addColumn('btn', function ($schedule) {
                return '
            <a href="#" class="btn btn-icon btn-sm btn-info" data-value="' . $schedule->id . '" id="recycle"><i class="fas fa-recycle"></i></a>
            <a href="#" class="btn btn-icon btn-sm btn-danger" data-value="' . $schedule->id . '" id="delete"><i class="fas fa-trash"></i></a>
            ';
            })
            ->addColumn('division', function ($schedule) {
                return $schedule->division == 'all' ? 'All' : $schedule->divisions->name;
            })
            ->rawColumns(['check','btn'])
            ->make(true);
    }

    public function schedule_recovery(Request $request)
    {
        activity('merecovery data sampah schedule');
        if (is_array($request->value)) {
            foreach ($request->value as $value) {
                Schedule::onlyTrashed()->where('id', $value)->restore();
            }
            return response()->json(['message' => 'Data berhasil di restore', 'status' => 'success'], 200);
        }
         Schedule::onlyTrashed()->where('id', $request->value)->restore();
        return response()->json(['message' => 'Data berhasil di restore', 'status' => 'success'], 200);
    }

    public function schedule_delete(Request $request)
    {
        activity('menghapus data sampah schedule');
        if (is_array($request->value)) {
            foreach ($request->value as $value) {
               Schedule::onlyTrashed()->where('id', $value)->forceDelete();
            }
            return response()->json(['message' => 'Data berhasil di hapus', 'status' => 'success'], 200);
        }
      
     Schedule::onlyTrashed()->where('id', $request->value)->forceDelete();
        return response()->json(['message' => 'Data berhasil di hapus', 'status' => 'success'], 200);
    }


    public function tests_get()
    {

        $test = TestList::onlyTrashed();

        return DataTables::of($test)
            ->addIndexColumn()
            ->addColumn('check', function ($test) {
                return  '<div class="custom-checkbox custom-control">
                        <input type="checkbox" data-checkboxes="mygroup" data-checkbox-role="dad" class="custom-control-input" value="' . $test->id . '" name="id-checkbox" onchange="checkbox_this(this)" id="checkbox-' . $test->id . '" >
                    <label for="checkbox-' . $test->id . '" class="custom-control-label">&nbsp;</label>
                    </div>';
            })
            ->addColumn('btn', function ($test) {
                return '
            <a href="#" class="btn btn-icon btn-sm btn-info" data-value="' . $test->id . '" id="recycle"><i class="fas fa-recycle"></i></a>
            <a href="#" class="btn btn-icon btn-sm btn-danger" data-value="' . $test->id . '" id="delete"><i class="fas fa-trash"></i></a>
            ';
            })
            ->editColumn('division_id', function ($test) {
                return $test->division->name;
            })
            ->rawColumns(['check','btn'])
            ->make(true);
    }

    public function tests_recovery(Request $request)
    {
        activity('merecovery data sampah test');
        if (is_array($request->value)) {
            foreach ($request->value as $value) {
                TestList::onlyTrashed()->where('id', $value)->restore();
            }
            return response()->json(['message' => 'Data berhasil di restore', 'status' => 'success'], 200);
        }
         TestList::onlyTrashed()->where('id', $request->value)->restore();
        return response()->json(['message' => 'Data berhasil di restore', 'status' => 'success'], 200);
    }

    public function tests_delete(Request $request)
    {
        activity('menghapus data sampah test');
        if (is_array($request->value)) {
            foreach ($request->value as $value) {
               TestList::onlyTrashed()->where('id', $value)->forceDelete();
            }
            return response()->json(['message' => 'Data berhasil di hapus', 'status' => 'success'], 200);
        }
      
     TestList::onlyTrashed()->where('id', $request->value)->forceDelete();
        return response()->json(['message' => 'Data berhasil di hapus', 'status' => 'success'], 200);
    }

    public function score_get()
    {

        $score = ScoreList::onlyTrashed();

        return DataTables::of($score)
            ->addIndexColumn()
            ->addColumn('check', function ($score) {
                return  '<div class="custom-checkbox custom-control">
                        <input type="checkbox" data-checkboxes="mygroup" data-checkbox-role="dad" class="custom-control-input" value="' . $score->id . '" name="id-checkbox" onchange="checkbox_this(this)" id="checkbox-' . $score->id . '" >
                    <label for="checkbox-' . $score->id . '" class="custom-control-label">&nbsp;</label>
                    </div>';
            })
            ->addColumn('btn', function ($score) {
                return '
            <a href="#" class="btn btn-icon btn-sm btn-info" data-value="' . $score->id . '" id="recycle"><i class="fas fa-recycle"></i></a>
            <a href="#" class="btn btn-icon btn-sm btn-danger" data-value="' . $score->id . '" id="delete"><i class="fas fa-trash"></i></a>
            ';
            })
            ->editColumn('user_id', function ($score) {
                return $score->user->name;
            })
            ->editColumn('test_id', function ($score) {
                return $score->test->name;
            })
            ->rawColumns(['check','btn'])
            ->make(true);
    }

    public function score_recovery(Request $request)
    {
        activity('merecovery data sampah score');
        if (is_array($request->value)) {
            foreach ($request->value as $value) {
                ScoreList::onlyTrashed()->where('id', $value)->restore();
            }
            return response()->json(['message' => 'Data berhasil di restore', 'status' => 'success'], 200);
        }
         ScoreList::onlyTrashed()->where('id', $request->value)->restore();
        return response()->json(['message' => 'Data berhasil di restore', 'status' => 'success'], 200);
    }

    public function score_delete(Request $request)
    {
        activity('menghapus data sampah score');
        if (is_array($request->value)) {
            foreach ($request->value as $value) {
               ScoreList::onlyTrashed()->where('id', $value)->forceDelete();
            }
            return response()->json(['message' => 'Data berhasil di hapus', 'status' => 'success'], 200);
        }
      
     ScoreList::onlyTrashed()->where('id', $request->value)->forceDelete();
        return response()->json(['message' => 'Data berhasil di hapus', 'status' => 'success'], 200);
    }

    public function mentor_get()
    {
        $mentor = Mentor::onlyTrashed();

         return DataTables::of($mentor)
            ->addIndexColumn()
            ->addColumn('check', function ($mentor) {
                return  '<div class="custom-checkbox custom-control">
                        <input type="checkbox" data-checkboxes="mygroup" data-checkbox-role="dad" class="custom-control-input" value="' . $mentor->id . '" name="id-checkbox" onchange="checkbox_this(this)" id="checkbox-' . $mentor->id . '" >
                    <label for="checkbox-' . $mentor->id . '" class="custom-control-label">&nbsp;</label>
                    </div>';
            })
               ->addColumn('btn', function ($mentor) {
                return '
            <a href="#" class="btn btn-icon btn-sm btn-info" data-value="' . $mentor->id . '" id="recycle"><i class="fas fa-recycle"></i></a>
            <a href="#" class="btn btn-icon btn-sm btn-danger" data-value="' . $mentor->id . '" id="delete"><i class="fas fa-trash"></i></a>
            ';
            })
            ->addColumn('imageMentor', function ($mentor) {
                return '<img src="' . $mentor->image() . '" width="50">';
            })
            ->addColumn('division', function ($mentor) {
                $division = ' ';
                foreach ($mentor->divisions as $value) {
                    $division .= '<a class="text-white badge badge-primary m-1">
                    ' . $value->name . '
                  </a>';
                }
                return $division;
            })
            ->rawColumns(['check', 'btn','imageMentor','division'])
            ->make(true);
    }


    public function mentor_recovery(Request $request)
    {
        activity('merecovery data sampah mentor');
        if (is_array($request->value)) {
            foreach ($request->value as $value) {
                Mentor::onlyTrashed()->where('id', $value)->restore();
            }
            return response()->json(['message' => 'Data berhasil di restore', 'status' => 'success'], 200);
        }
         Mentor::onlyTrashed()->where('id', $request->value)->restore();
        return response()->json(['message' => 'Data berhasil di restore', 'status' => 'success'], 200);
    }

    public function mentor_delete(Request $request)
    {
        activity('menghapus data sampah mentor');
        if (is_array($request->value)) {
            foreach ($request->value as $value) {
               $mentor = Mentor::onlyTrashed()->where('id', $value)->first();
                \Storage::delete($mentor->image);
                $mentor->divisions()->detach();
               $mentor->forceDelete();
            }
            return response()->json(['message' => 'Data berhasil di hapus', 'status' => 'success'], 200);
        }
      
      $mentor = Mentor::onlyTrashed()->where('id', $request->value)->first();
      \Storage::delete($mentor->image);
      $mentor->divisions()->detach();
      $mentor->forceDelete();
        return response()->json(['message' => 'Data berhasil di hapus', 'status' => 'success'], 200);
    }

      public function memberIT_get()
    {
        $member = MemberIT::onlyTrashed();

        return DataTables::of($member)
            ->addIndexColumn()
            ->addColumn('check', function ($member) {
                return  '<div class="custom-checkbox custom-control">
                        <input type="checkbox" data-checkboxes="mygroup" data-checkbox-role="dad" class="custom-control-input" value="' . $member->id . '" name="id-checkbox" onchange="checkbox_this(this)" id="checkbox-' . $member->id . '" >
                    <label for="checkbox-' . $member->id . '" class="custom-control-label">&nbsp;</label>
                    </div>';
            })
            ->addColumn('btn', function ($member) {
                return '
            <a href="#" class="btn btn-icon btn-sm btn-info" data-value="' . $member->id . '" id="recycle"><i class="fas fa-recycle"></i></a>
            <a href="#" class="btn btn-icon btn-sm btn-danger" data-value="' . $member->id . '" id="delete"><i class="fas fa-trash"></i></a>
            ';
            })
            ->addColumn('imageMember', function ($member) {
                return '<img src="' . $member->image() . '" width="50">';
            })

            ->editColumn('division_id', function ($member) {
                return $member->division->name;
            })
            ->rawColumns(['check', 'btn', 'imageMember','division_id'])
            ->make(true);
    }

    public function memberIT_recovery(Request $request)
    {
        activity('merecovery data sampah member');
        if (is_array($request->value)) {
            foreach ($request->value as $value) {
                MemberIT::onlyTrashed()->where('id', $value)->restore();
            }
            return response()->json(['message' => 'Data berhasil di restore', 'status' => 'success'], 200);
        }
         MemberIT::onlyTrashed()->where('id', $request->value)->restore();
        return response()->json(['message' => 'Data berhasil di restore', 'status' => 'success'], 200);
    }

    public function memberIT_delete(Request $request)
    {
        activity('menghapus data sampah member');
        if (is_array($request->value)) {
            foreach ($request->value as $value) {
               $member = MemberIT::onlyTrashed()->where('id', $value)->first();
                \Storage::delete($member->image);
                // $member->alumni()->forceDelete();
               $member->forceDelete();
            }
            return response()->json(['message' => 'Data berhasil di hapus', 'status' => 'success'], 200);
        }
      
      $member = MemberIT::onlyTrashed()->where('id', $request->value)->first();
      \Storage::delete($member->image);
      // $member->alumni()->forceDelete();
      $member->forceDelete();
        return response()->json(['message' => 'Data berhasil di hapus', 'status' => 'success'], 200);
    }



}
