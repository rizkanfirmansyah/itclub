<?php

namespace App\Http\Controllers\Api;

use App\Models\{MemberIT, Division};
use App\Http\Requests\MemberITRequest;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use PHPUnit\Framework\Test;
use Yajra\DataTables\Facades\DataTables;
class MemberITController extends Controller
{

public function index()
    {
        if (!empty($_GET['id'])) {
            $data = MemberIT::find($_GET['id']);
            return response()->json(['message' => 'query berhasil', 'status' => 'success', 'data' => $data]);
        }

        $member = MemberIT::all();

        if (!empty($_GET['parm'])) {
            if ($_GET['parm'] != 'null') {
                $member = MemberIT::where('division_id', $_GET['parm']);
            }
            return DataTables::of($member)
                ->addIndexColumn()
                ->addColumn('btn', function ($member) {
                    return '
                    <a href="#" class="btn btn-icon btn-sm btn-primary" data-id="' . $member->id . '" data-value="' . $member->division_id . '" id="edit"><i class="fas fa-edit"></i></a>
                    ';
                })
                ->addColumn('imageMember', function ($member) {
                    return '<img src="' . $member->image() . '" width="50">';
                })
                ->addColumn('class_majors', function ($member) {
                    return $member->class . ' ' . $member->majors;
                })
                ->editColumn('division_id', function ($member) {
                    return $member->division->name;
                })
                ->rawColumns(['btn', 'imageMember',])
                ->make(true);
        }

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
            <a href="#" class="btn btn-icon btn-sm btn-primary" data-value="' . $member->id . '" id="edit"><i class="fas fa-edit"></i></a>
            <a href="#" class="btn btn-icon btn-sm btn-danger" data-value="' . $member->id . '" id="delete"><i class="fas fa-trash"></i></a>
            ';
            })
            ->addColumn('imageMember', function ($member) {
                return '<img src="' . $member->image() . '" width="50">';
            })
            ->addColumn('class_majors', function ($member) {
                return $member->class . ' ' . $member->majors;
            })
            ->editColumn('division_id', function ($member) {
                return $member->division->name;
            })
            ->rawColumns(['check', 'btn', 'imageMember', 'division_id'])
            ->make(true);
    }

  

    public function store(MemberITRequest $request)
    {
        
        $division = Division::where('id', $request->division_id)->exists();
        if (!$division) {
            return response()->json([
                'status' => 'error',
                'message' => 'division not found'
            ], 404);
        }

        $member = MemberIT::create([
            'name' => $request->name,
            'class' => $request->class,
            'division_id' => $request->division_id,
            'image' => $request->image ? request()->file('image')->store('images/memberIT') : null,
            'position' => $request->position,
            'majors' => $request->majors,
            'entry_year' => $request->entry_year,
            'created_by' => auth()->user()->id
        ]);

        activity('menambah data member');

        return response()->json([
            'status' => 'success',
            'message' => 'data added successfuly'
        ], 200);
    }


    public function update(MemberITRequest $request)
    {
        $member = MemberIT::find($request->id);

        if (!$member) {
            return response()->json([
                'status' => 'error',
                'message' => 'member not found'
            ], 404);
        }


        $division = Division::where('id', $request->division_id)->exists();
        if (!$division) {
            return response()->json([
                'status' => 'error',
                'message' => 'division not found'
            ], 404);
        }

        if ($request->image) {
            \Storage::delete($member->image);
            $image = request()->file('image')->store('images/memberIT');
        } elseif ($member->image) {
            $image = $member->image;
        } else {
            $image = null;
        }

        $member->update([
            'name' => $request->name,
            'class' => $request->class,
            'division_id' => $request->division_id,
            'image' => $image,
            'position' => $request->position,
            'majors' => $request->majors,
            'entry_year' => $request->entry_year,
            'created_by' => auth()->user()->id
        ]);

        activity('mengedit data member');

        return response()->json([
            'status' => 'success',
            'message' => 'member update successfuly'
        ], 200);
    }

    public function destroy(Request $request)
    {

        if (is_array($request->value)) {
            foreach ($request->value as $value) {
                $member = MemberIT::find($value);
                
                $member->delete();
            }
            activity('menghapus data member');
            return response()->json(['status' => 'success', 'message' => 'Data berhasil dihapus!'], 200);
        }


        $member = MemberIT::find($request->value);

        if (!$member) {
            return response()->json([
                'status' => 'error',
                'message' => 'member not found'
            ], 404);
        }

        $member->delete();

        activity('menghapus data member');

        return response()->json([
            'status' => 'success',
            'message' => 'member deleted successfuly'
        ], 200);
    }

}
