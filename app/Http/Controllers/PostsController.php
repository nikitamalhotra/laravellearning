<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PostsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
    	return "It's Working.";
    }

	public function contact(){
    	$people = ['ashman', 'malhotra', 'raj', 'kuldeep', 'sharma'];
		return view('pages.contact', compact('people'));
	}

	public function show_post($id, $fname, $lname){
		//return view('post')->with('id', $id);
		//return view('post', compact('id'));
		return view('post', compact('id', 'fname', 'lname'));
	}

    public function create()
    {
        return "Create Method.";
    }

    public function store(Request $request)
    {
        
        return "Welcome to the store method.";
    }

    public function show($id)
    {
	    return "Welcome to the show method.";
    }

    public function edit($id)
    {
	    return "Welcome to the edit method.";
    }

    public function update(Request $request, $id)
    {
	    return "Welcome to the update method.";
    }

    public function destroy($id)
    {
	    return "Welcome to the destroy method.";
    }
}
