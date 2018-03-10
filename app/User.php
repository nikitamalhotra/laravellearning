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

	public function Post(){
		return $this->hasOne('App\Post');
	}

}
