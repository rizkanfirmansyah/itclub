<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Mentor extends Model
{
    use HasFactory,SoftDeletes;

    protected $table = 'mentors';
    protected $guarded = ['id','created_at','updated_at'];
    protected $casts = [
        'created_at' => 'datetime:Y-m-d H:m:s',
        'updated_at' => 'datetime:Y-m-d H:m:s',
        'deleted_at' => 'datetime:Y-m-d H:m:s',
    ];

      public function divisions()
    {
        return $this->belongsToMany(Division::class)->withPivot('division_id', 'mentor_id');
    }

    public function image()
    {
        return !$this->image ? asset('no-image.jpg') : asset("storage/" . $this->image);
    }

     public function created_by()
    {
        return $this->belongsTo(User::class, 'created_by')->withTrashed();
    }
}
