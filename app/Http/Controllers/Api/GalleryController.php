<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Gallery;
use App\Http\Requests\GalleryRequest;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class GalleryController extends Controller
{
     public function index()
    {
       if (!empty($_GET['id'])) {
            $data = Gallery::find($_GET['id']);
            return response()->json(['message' => 'query berhasil', 'status' => 'success', 'data' => $data]);
        }

         $gallery = Gallery::all();

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
            <a href="#" class="btn btn-icon btn-sm btn-primary" data-value="' . $gallery->id . '" id="edit"><i class="fas fa-edit"></i></a>
            <a href="#" class="btn btn-icon btn-sm btn-danger" data-value="' . $gallery->id . '" id="delete"><i class="fas fa-trash"></i></a>
            ';
            })
           ->addColumn('imageGallery', function ($gallery) {   
                return '<img src="'.$gallery->image().'" width="50">';
            })
           
            ->rawColumns(['check', 'btn','imageGallery'])
            ->make(true);
    }

    public function show($id)
    {
        $gallery = Gallery::with('images','created_by')->find($id);
        if(!$gallery)
        {
            return response()->json([
                'status' => 'error',
                'message' => 'gallery not found'
            ],404);
        }

         return response()->json([
                'status' => 'success',
                'data' => $gallery
            ]);
    }

    public function create()
    {
         return response()->json([
                'status' => 'success',
                'message' => 'form untuk create'
            ]);
    }

    public function store(GalleryRequest $request)
    {
         

        $slug = Str::slug(request('name'));
        
        $gallery = Gallery::create([
            'name' => $request->name,
            'image' =>  $request->file('image')->store('images/gallery'),
            'slug' => $slug,
            'created_by' => auth()->user()->id
        ]);

        activity('menambah data gallery');

         return response()->json([
            'status' => 'success',
            'message' => 'data created successfuly'
        ]);
    }

    public function edit($id)
    {
        $gallery = Gallery::find($id);
        if(!$gallery)
        {
            return response()->json([
                'status' => 'error',
                'message' => 'gallery not found'
            ],404);
        }

         return response()->json([
                'status' => 'success',
                'message' => 'form untuk edit'
            ]);
    }

    public function update(GalleryRequest $request)
    {
        $gallery = Gallery::find($request->id);
        if(!$gallery)
        {
            return response()->json([
                'status' => 'error',
                'message' => 'gallery not found'
            ],404);
        }


       $slug = Str::slug(request('name'));

       if($request->image){
            \Storage::delete($gallery->image);
            $image = request()->file('image')->store('images/gallery');
       }elseif($gallery->image){
            $image = $gallery->image;
       }else{
            $image = null;
       }

        $gallery->update([
            'name' => $request->name,
            'image' => $image,
            'slug' => $slug,
            'created_by' => auth()->user()->id
        ]);

        activity('mengedit data gallery');

        return response()->json([
            'status' => 'success',
            'message' => 'gallery update successfuly'
        ]);
    }

    public function destroy(Request $request)
    {   
        if (is_array($request->value)) {
            foreach ($request->value as $value) {
                $gallery = Gallery::find($value);
                $gallery->images()->delete();
                $gallery->delete();
            }
            activity('menghapus data gallery');
            return response()->json(['status' => 'success', 'message' => 'Data berhasil dihapus!'], 200);
        }

        $gallery = Gallery::find($request->value);

        if(!$gallery)
        {
            return response()->json([
                'status' => 'error',
                'message' => 'gallery not found'
            ],404);
        }

        // \Storage::delete($gallery->image);

        $gallery->images()->delete();
        $gallery->delete();
        activity('menghapus data gallery');
        return response()->json([
            'status' => 'success',
            'message' => 'gallery deleted successfuly'
        ],200);
    }
}
