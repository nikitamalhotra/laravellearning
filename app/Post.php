<?php

namespace App;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
	use SoftDeletes;
    protected $fillable =['title', 'body'];
    protected $dates = ['deleted_at'];
}
