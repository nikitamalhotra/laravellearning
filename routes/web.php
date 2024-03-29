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

Route::get('/simplesave2', function() {
	$post = new Post;
	$post->id    = 1;
	$post->title = "Laravel Lesson 1";
	$post->body  = "Laravel Body content for Lesson 1";
	$post->save();

	$post = new Post;
	$post->id    = 2;
	$post->title = "Laravel Lesson 2";
	$post->body  = "Laravel Body content for Lesson 2";
	$post->save();

	$post = new Post;
	$post->id    = 3;
	$post->title = "Laravel Lesson 3";
	$post->body  = "Laravel Body content for Lesson 3";
	$post->save();

	$post = new Post;
	$post->id    = 4;
	$post->title = "Laravel Lesson 4";
	$post->body  = "Laravel Body content for Lesson 4";
	$post->save();

	$post = new Post;
	$post->id    = 5;
	$post->title = "Laravel Lesson 5";
	$post->body  = "Laravel Body content for Lesson 5";
	$post->save();

	$post = new Post;
	$post->id    = 6;
	$post->title = "Laravel Lesson 6";
	$post->body  = "Laravel Body content for Lesson 6";
	$post->save();

	$post = new Post;
	$post->id    = 7;
	$post->title = "Laravel Lesson 7";
	$post->body  = "Laravel Body content for Lesson 7";
	$post->save();

	$post = new Post;
	$post->id    = 8;
	$post->title = "Laravel Lesson 8";
	$post->body  = "Laravel Body content for Lesson 8";
	$post->save();

	$post = new Post;
	$post->id    = 9;
	$post->title = "Laravel Lesson 9";
	$post->body  = "Laravel Body content for Lesson 9";
	$post->save();

	$post = new Post;
	$post->id    = 10;
	$post->title = "Laravel Lesson 10";
	$post->body  = "Laravel Body content for Lesson 10";
	$post->save();

	$post = new Post;
	$post->id    = 11;
	$post->title = "Laravel Lesson 11";
	$post->body  = "Laravel Body content for Lesson 11";
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
/*
use App\Post;
Route::get('/softdelete', function(){
	Post::find(10)->delete();
});
*/

//Lecture 58 - Eloquent 9 - Retrieve SoftDelete Records
/*use App\Post;
Route::get('/readsoftdelete', function(){
	//withTrashed will pull records from Trashed items also.
	//$post = Post::withTrashed()->where('id', 10)->get();    //withTrashed() is going to pick results from Trashed records as well.
	//return $post;

	//What if you want to pull only Trashed Items
	//Example: Pull Trashed Non Admins i.e. is_admin=0
	$post = Post::onlyTrashed()->where('is_admin', 0)->get();    //withTrashed() is going to pick results from Trashed records as well.
	return $post;
});
*/


//Lecture 59 - Eloquent 10 - Restore SoftDelete Records
/*
use App\Post;
Route::get('/restoresoftdeleted', function(){
	//Let's restore Soft Deleted Records with restore() function
	//In following example - Restring all non-admins who are soft-deleted
	$post = Post::withTrashed()->where('is_admin', 0)->restore();
	return $post;
});
*/

//Lecture 60 - Eloquent 11 - Permanently Deleting Record using forceDelete()
//use App\Post;
Route::get('/permanentdelete', function(){
	//Permanently Deleting Records (including Soft Deleted)
	//Post::withTrashed()->where('is_admin', 0)->forceDelete();

	//Permanently Deleting Trashed Records (Only Soft Deleted)
	Post::onlyTrashed()->where('is_admin', 0)->forceDelete();
});


Route::get('/simplesave2', function() {
	//Mass Assignment to Create some Data for Database
	//Post::create(['user_id'=>1, 'title'=>'', 'body'=> '']);
	Post::create(['user_id'=>1, 'title'=>'Laravel Lesson 1', 'body'=> 'Laravel Body content for Lesson 1']);
	Post::create(['user_id'=>1, 'title'=>'Laravel Lesson 2', 'body'=> 'Laravel Body content for Lesson 2']);
	Post::create(['user_id'=>1, 'title'=>'Laravel Lesson 3', 'body'=> 'Laravel Body content for Lesson 3']);
	Post::create(['user_id'=>1, 'title'=>'Laravel Lesson 4', 'body'=> 'Laravel Body content for Lesson 4']);
	Post::create(['user_id'=>1, 'title'=>'Laravel Lesson 5', 'body'=> 'Laravel Body content for Lesson 5']);
	Post::create(['user_id'=>1, 'title'=>'Laravel Lesson 6', 'body'=> 'Laravel Body content for Lesson 6']);
	Post::create(['user_id'=>1, 'title'=>'Laravel Lesson 7', 'body'=> 'Laravel Body content for Lesson 7']);
	Post::create(['user_id'=>1, 'title'=>'Laravel Lesson 8', 'body'=> 'Laravel Body content for Lesson 8']);
	Post::create(['user_id'=>1, 'title'=>'Laravel Lesson 9', 'body'=> 'Laravel Body content for Lesson 9']);
	Post::create(['user_id'=>1, 'title'=>'Laravel Lesson 10', 'body'=> 'Laravel Body content for Lesson 10']);
	Post::create(['user_id'=>1, 'title'=>'Laravel Lesson 11', 'body'=> 'Laravel Body content for Lesson 11']);
});



/*
 |------------------------------------------------------------------------------------
 |      Eloquent Relationships
 |------------------------------------------------------------------------------------
*/
//Lecture 62 - 1:1 Relationship U -> P
/*
use App\Post;   //Use Model Class on which you're going to work.
use App\User;
Route::get('/user/{id}/post', function($id){
	$user = User::find($id);
	return $user->post->title;
});

//Lecture 63 - The inverse of 1:1 Relationship Post to User
Route::get('/post/{id}/user', function($id){
	$user = Post::find($id);
	return $user->user->name;
});
*/

//Lecture 64 - One:Many Relationship U -> P
/*
use App\Post;
use App\User;
Route::get('/userposts/{id}', function($id){
	$user = User::find($id);
	foreach ($user->posts as $post){
		echo $post->title . "<br>";
	}
});
*/

//Lecture 66-67 - Pivot Table
/*
use App\Post;
use App\User;
Route::get('/userrole/{id}', function($id){
	//$user = User::find($id);
	//foreach ($user->roles as $role){
	//	echo $role->name . "<br>";
	//}


	//I assigned two roles to the user to test result of following statement
	$user = User::find($id)->roles()->orderBy('id', 'desc')->get();
	return $user;
});
*/


//Lecture 68 - Pivot Table - Inverse
//It will display all users with particular role
/*
use App\Post;
use App\User;
use App\Role;
Route::get('/roleusers/{id}', function($id){
	$roles = Role::find($id);
	foreach ($roles->users as $role){
		echo $role->name . "<br>";
	}
});
*/

//Lecture 68 - Querying Intermediate Table
/*
use App\Post;
use App\User;
use App\Role;
Route::get('user/pivot', function(){
	$user = User::find(1);
	foreach ($user->roles as $role){
		echo $role->pivot->created_at . "<br>";
	}

	//$role = Role::find(1);
	//foreach ($role->users as $user){
	//	echo $user->pivot->created_at . "<br>";
	//}
});
*/


//Lecture 70 - HasManyThroughRelation
//Fetching Posts Column via Country Table.
/*
use App\Country;
Route::get('user/country', function(){
	$country = Country::find(2);
	foreach ($country->posts as $post){
		echo $post->title . "<br>";
	}
});
*/

/*
//Lecture 71-72 - Polymorphic Relation
//Fetching Posts Column via Country Table.
use App\User;
use App\Post;
Route::get('/polymorphic', function(){
	//$user = User::find(1);
	//foreach ($user->photos as $photo){
	//	echo $photo . "<br>";
	//}

	$post = Post::find(8);
	foreach($post->photos as $photo){
		echo $photo->path . "<br>";
	}
});
*/

/*
//Lecture 73 - Finding the owner of the Photo - Inverse Polymorphic Relation
use App\User;
use App\Post;
use App\Photo;
Route::get('/photo/{id}/user', function($id){
	$photo = Photo::find($id);
	return $photo->imageable;
});
*/

/*
//Lecture 74-76 - Polymorphic Relation - Many to Many
use App\Post;
use App\Video;
Route::get('/post/tag/{id}', function($id){
	//Works for Post
	$post = Post::find($id);
	foreach($post->tags as $tag){
		echo $tag->name . "<br>";
	}

	//Works for Video
	//$video = Video::find($id);
	//foreach($video->tags as $tag){
	//	echo $tag->name . "<br>";
	//}
});
*/


//Lecture 77 - Polymorphic Relation - Many to Many - Retrieving Tag Owner
use App\Tag;
Route::get('/tagowner/{id}', function($id){
	$tag = Tag::find($id);
	foreach($tag->posts as $post){
		echo $post->title;
	}

	//Following Code will return Tag's Video Owner
	//$tag = Tag::find($id);
	//foreach($tag->posts as $post){
	//	echo $post->title;
	//}
});