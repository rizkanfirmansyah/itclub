<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\{Division, Mentor, MentorDivision};
use App\Http\Requests\MentorRequest;
use Yajra\DataTables\Facades\DataTables;
use Illuminate\Support\Str;
use Illuminate\Http\Request;

class MentorController extends Controller
{
     public function index()
    {
        if (!empty($_GET['id'])) {
            $data = Mentor::find($_GET['id']);
           $division = MentorDivision::where('mentor_id', $_GET['id'])->get();
            return response()->json(['message' => 'query berhasil', 'status' => 'success', 'data' => ['mentor'=>$data,'division'=>$division] ]);
        }

        $mentor = Mentor::all();

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
            <a href="#" class="btn btn-icon btn-sm btn-primary" data-value="' . $mentor->id . '" id="edit"><i class="fas fa-edit"></i></a>
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

     public function store(MentorRequest $request)
    {

        $mentor = Mentor::create([
            'name' => $request->name,
            'profession' => $request->profession,
            'whatsapp' => $request->whatsapp,
            'birth_date' => $request->birth_date,
            'sertifikasi' => $request->sertifikasi,
            'gender' => $request->gender,
            'youtube' => $request->youtube,
            'facebook' => $request->facebook,
            'website' => $request->website,
            'email' => $request->email,
            'content' => $request->content,
            'instagram' => $request->instagram,
            'slug' => Str::slug($request->name),
            'image' =>  $request->file('image')->store('images/mentor'),
            'created_by' => auth()->user()->id
        ]);
         $mentor->divisions()->sync($request->divisions);
        activity('menambah data mentor');

        return response()->json([
            'status' => 'success',
            'message' => 'data added successfuly'
        ]);
    }

     public function update(MentorRequest $request)
    {
        
        $mentor = Mentor::find($request->id);
        if (!$mentor) {
            return response()->json([
                'status' => 'error',
                'message' => 'mentor not found'
            ], 404);
        }

        if ($request->image) {
            \Storage::delete($mentor->image);
            $image = request()->file('image')->store('images/mentor');
        } elseif ($mentor->image) {
            $image = $mentor->image;
        } else {
            $image = null;
        }

        $mentor->update([
              'name' => $request->name,
            'profession' => $request->profession,
            'whatsapp' => $request->whatsapp,
            'birth_date' => $request->birth_date,
            'sertifikasi' => $request->sertifikasi,
            'gender' => $request->gender,
            'youtube' => $request->youtube,
            'facebook' => $request->facebook,
            'website' => $request->website,
            'email' => $request->email,
            'content' => $request->content,
            'instagram' => $request->instagram,
            'slug' => Str::slug($request->name),
            'image' =>  $image,
            'created_by' => auth()->user()->id
        ]);
        $mentor->divisions()->sync($request->divisions);
        activity('mengedit data mentor');

        return response()->json([
            'status' => 'success',
            'message' => 'data update successfuly'
        ]);
    }

    public function destroy(Request $request)
    {
        if (is_array($request->value)) {
            foreach ($request->value as $value) {
                $mentor = Mentor::find($value);
                $mentor->delete();
            }
            activity('menghapus data mentor');
            return response()->json(['status' => 'success', 'message' => 'Data berhasil dihapus!'], 200);
        }

        $mentor = Mentor::find($request->value);
        if (!$mentor) {
            return response()->json([
                'status' => 'error',
                'message' => 'mentor not found'
            ]);
        }

        $mentor->delete();

        activity('menghapus data mentor');
        
        return response()->json([
            'status' => 'success',
            'message' => 'mentor deleted successfuly'
        ], 200);
    }

}
