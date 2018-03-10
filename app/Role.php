<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Role extends Model
{
	//Implementing the Inverse of User-to-Roles belongsToMany Relationship
    public function users(){
    	return $this->belongsToMany('App\User');
    	//This is to find fields from Pivot Table
	    //return $this->belongsToMany('App\User')->withPivot('created_at');
    }
}
