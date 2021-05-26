<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\SoftDeletes;

class User extends Authenticatable
{
    use HasFactory, Notifiable, SoftDeletes;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'role_id',
        'name',
        'email',
        'password',
        'member_token'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password',
        'member_token',
        'remember_token',
    ];

    protected $dates = [
        'deleted_at',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function role()
    {
        return $this->belongsTo(Role::class)->withTrashed();
    }

    public function roles()
    {
        return $this->hasOne(Role::class, 'id', 'role_id')->withTrashed();
    }

    public function blogs()
    {
        return $this->hasMany(Blog::class);
    }

     public function score()
    {
        return $this->hasMany(ScoreList::class);
    }

    public function divisions()
    {
        return $this->hasMany(Division::class);
    }

    public function member()
    {
        return $this->hasOne(Member::class);
    }

    public function mentors()
    {
        return $this->hasMany(Mentor::class);
    }
}
