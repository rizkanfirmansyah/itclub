<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MentorDivision extends Model
{
    use HasFactory;

    protected $table = 'division_mentor';
    protected $fillable = ['division_id', 'mentor_id'];
}
