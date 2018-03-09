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
	DB::insert('INSERT INTO posts(title, body) VALUES (?, ?)', ['Laravel Record 2', 'This is a record 2nd.']);
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




// Eloquent 1
/* use App\Post;
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
*/

//Eloquent 2
/*
use App\Post;
Route::get('/findwhere', function() {
	$posts = Post::where('id', 1)->orderBy('id', 'desc')->take(1)->get();
	return $posts;

});
*/


//Eloquent 3
//Problem findorFail() does not throws error when wrong id is passed.
/*
use App\Post;
Route::get('/findmore', function() {
	$posts = Post::findorFail(11);
	//$posts = POST::where('id', '<', 2)->findorFail(2); //->get();
	return $posts;

});
*/

//Eloquent 4
/*
use App\Post;
Route::get('/simplesave', function() {
	$post = new Post;
	$post->title = "Laravel Lesson 3";
	$post->body  = "Laravel Body content for Lesson 3";
	$post->save();
});
Route::get('/searchandsave', function() {
	$post = Post::find(3);
	$post->title = "Modified Laravel Lesson 3";
	$post->body  = "Modified Laravel Body content for Lesson 3";
	$post->save();
});
*/


//Eloquent 5
/*
use App\Post;
Route::get('/simplesave', function() {
	$post = new Post;
	$post->title = "Laravel Lesson 3";
	$post->body  = "Laravel Body content for Lesson 3";
	$post->save();
});
*/

//Eloquent 6 - Mass Assignment
/*
use App\Post;
Route::get('/massassignment', function() {
	Post::create(['title'=>'create Method', 'body'=> 'Record with create method - Mass Assignment']);
});
*/

//Eloquent to create bulk records in Posts Table - it will create 10 records in posts table
/*
use App\Post;
Route::get('/simplesave', function() {

	$post = new Post;
	$post->title = "Laravel Lesson 1";
	$post->body  = "Laravel Body content for Lesson 1";
	$post->save();

	$post = new Post;
	$post->title = "Laravel Lesson 2";
	$post->body  = "Laravel Body content for Lesson 2";
	$post->save();

	$post = new Post;
	$post->title = "Laravel Lesson 3";
	$post->body  = "Laravel Body content for Lesson 3";
	$post->save();

	$post = new Post;
	$post->title = "Laravel Lesson 4";
	$post->body  = "Laravel Body content for Lesson 4";
	$post->save();

	$post = new Post;
	$post->title = "Laravel Lesson 5";
	$post->body  = "Laravel Body content for Lesson 5";
	$post->save();

	$post = new Post;
	$post->title = "Laravel Lesson 6";
	$post->body  = "Laravel Body content for Lesson 6";
	$post->save();

	$post = new Post;
	$post->title = "Laravel Lesson 7";
	$post->body  = "Laravel Body content for Lesson 7";
	$post->save();

	$post = new Post;
	$post->title = "Laravel Lesson 8";
	$post->body  = "Laravel Body content for Lesson 8";
	$post->save();

	$post = new Post;
	$post->title = "Laravel Lesson 9";
	$post->body  = "Laravel Body content for Lesson 9";
	$post->save();

	$post = new Post;
	$post->title = "Laravel Lesson 10";
	$post->body  = "Laravel Body content for Lesson 10";
	$post->save();
});
*/


//Eloquent 6 - Update Method
/*
use App\Post;
Route::get('/updatemethod', function() {
	Post::where('id', 1)->where('is_admin', 0)->update(['title'=>'Updated Title 1', 'body'=> 'Updated Body 1']);
});
*/

//Eloquent 7 - Delete Method
/*
use App\Post;
Route::get("/deletemethod1", function(){
	//$post = Post::find(1);
	//$post->delete();

	//Post::destroy(2);
	//Post::destroy([2,3]);

	Post::where('id', 2)->delete();
});
*/

//Eloquent 8 - SoftDelete Method
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Post;
Route::get('/softdelete', function(){
	Post::find(7)->delete();
});

