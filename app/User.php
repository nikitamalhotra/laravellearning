<?php

namespace App;
use Illuminate\Database\Eloquent\SoftDeletes;   //For Soft Deletes
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;
    /**
     * The attributes that are mass assignable.
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /*For Soft Deletes */
	//protected $dates = ['deleted_at'];    //Will implement it later

	//This function implements One:One Relationship
	public function Post(){
		return $this->hasOne('App\Post');
	}

	//This function implements One:Many Relationship
	public function  Posts(){
		return $this->hasMany('App\Post');
	}

	//This function implements Roles - Pivot Table
	public function roles(){
		//return $this->belongsToMany('App\Role');
		//The created_at Column will be returned from intermediate table.
		return $this->belongsToMany('App\Role')->withPivot('created_at');
	}

	public function photos(){
		return $this->morphMany('App\Photo', 'imageable');
	}
}
