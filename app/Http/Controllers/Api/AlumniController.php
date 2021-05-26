<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\{Member, Alumni};
use App\Http\Requests\AlumniRequest;
use Yajra\DataTables\Facades\DataTables;
use Illuminate\Http\Request;

class AlumniController extends Controller
{

    public function index()
    {
        if (!empty($_GET['id'])) {
            $data = Alumni::find($_GET['id']);
           
            return response()->json(['message' => 'query berhasil', 'status' => 'success', 'data' => $data]);
        }

        $alumni = Alumni::all();

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
            <a href="#" class="btn btn-icon btn-sm btn-primary" data-value="' . $alumni->id . '" id="edit"><i class="fas fa-edit"></i></a>
            <a href="#" class="btn btn-icon btn-sm btn-danger" data-value="' . $alumni->id . '" id="delete"><i class="fas fa-trash"></i></a>
            ';
            })
            ->addColumn('imageAlumni', function ($alumni) {
                return '<img src="' . $alumni->image() . '" width="50">';
            })
            ->rawColumns(['check', 'btn','imageAlumni'])
            ->make(true);
    }

    public function show($id)
    {
        $alumni = Alumni::with('created_by')->find($id);
        if (!$alumni) {
            return response()->json([
                'status' => 'error',
                'message' => 'Alumni not found'
            ], 404);
        }
    }

    public function create()
    {
        return response()->json([
            'status' => 'success',
            'message' => 'form create'
        ]);
    }

    public function store(AlumniRequest $request)
    {

        $alumni = Alumni::create([
            'name' => $request->name,
            'place' => $request->place,
            'work' => $request->work,
            'study' => $request->study,
            'image' =>  $request->file('image')->store('images/alumni'),
            'created_by' => auth()->user()->id
        ]);

        activity('menambah data alumni');

        return response()->json([
            'status' => 'success',
            'message' => 'data added successfuly'
        ]);
    }

    public function edit($id)
    {
        $alumni = Alumni::find($id);
        if (!$alumni) {
            return response()->json([
                'status' => 'error',
                'message' => 'alumni not found'
            ], 404);
        }

        return response()->json([
            'status' => 'success',
            'message' => 'halaman form edit',
            'data' => $alumni
        ]);
    }

    public function update(AlumniRequest $request)
    {
        
        $alumni = Alumni::find($request->id);
        if (!$alumni) {
            return response()->json([
                'status' => 'error',
                'message' => 'alumni not found'
            ], 404);
        }

        if ($request->image) {
            \Storage::delete($alumni->image);
            $image = request()->file('image')->store('images/alumni');
        } elseif ($alumni->image) {
            $image = $alumni->image;
        } else {
            $image = null;
        }

        $alumni->update([
            'name' => $request->name,
            'place' => $request->place,
            'work' => $request->work,
            'study' => $request->study,
            'image' => $image,
            'created_by' => auth()->user()->id
        ]);

        activity('mengedit data alumni');

        return response()->json([
            'status' => 'success',
            'message' => 'data update successfuly'
        ]);
    }

    public function destroy(Request $request)
    {
        if (is_array($request->value)) {
            foreach ($request->value as $value) {
                $alumni = Alumni::find($value);
                $alumni->delete();
            }
            activity('menghapus data alumni');
            return response()->json(['status' => 'success', 'message' => 'Data berhasil dihapus!'], 200);
        }

        $alumni = Alumni::find($request->value);
        if (!$alumni) {
            return response()->json([
                'status' => 'error',
                'message' => 'alumni not found'
            ]);
        }

        $alumni->delete();

        activity('menghapus data alumni');
        
        return response()->json([
            'status' => 'success',
            'message' => 'alumni deleted successfuly'
        ], 200);
    }
}
