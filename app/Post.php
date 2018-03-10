<?php

namespace App;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
	use SoftDeletes;
    protected $fillable =['user_id', 'title', 'body'];
    protected $dates = ['deleted_at'];


    public function User(){
    	return $this->belongsTo('App\User');
    }

    public function photos(){
    	return $this->morphMany('App\Photo', 'imageable');
    }
}
