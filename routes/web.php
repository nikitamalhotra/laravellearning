<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
/*
Route::get('/', function () {
    return view('welcome');
});

Route::get('admin/category/post', array ('as'=> 'admin.post', function(){
	$url = route('admin.post');
	return $url;
}));*/

//Route::resource('post', 'PostsController');
//Route::get('contact', 'PostsController@contact');
//Route::get('/post/{id}', 'PostsController@show_post');
//Route::get('/post/{id}/{fname}/{lname}', 'PostsController@show_post');



/*
use Illuminate\Support\Facades\DB;

Route ::get('/insert', function(){
	DB::insert('INSERT INTO posts(title, body) VALUES (?, ?)', ['PHP', 'Laravel Framework']);
});

Route ::get('/read', function(){
	$res = DB::select('SELECT * FROM posts WHERE id=?', [1]);
	foreach ($res as $row){
		return $row->title . "<br>";
	}
});

Route ::get('/update', function(){
	$res = DB::update('update posts set title="PHP 1" WHERE id=?', [1]);
	return $res;
});

Route ::get('/delete', function(){
	$res = DB::delete('delete from posts WHERE id=?', [1]);
	return $res;
});
*/




//Eloquent 1
use App\Post;
Route::get('/find', function(){
	//Finding all records
	//$posts = Post::all();
	//foreach ($posts as $item){
	//	return $item->title;
	//}


	//Finding particular Record
	//$posts = Post::find(1); //Return one record
	//return $posts->title;


	$post = "App\Post";        //In case we do not call at top ->   use App\Post
	$res = $post::all();
	foreach ($res as $item){
		return $item->title;
	}
});



