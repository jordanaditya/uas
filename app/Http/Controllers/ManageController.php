<?php

namespace App\Http\Controllers;
use Auth;
use App\Article;
use App\Komentar;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Gate;

class ManageController extends Controller
{
    public function __construct() {
        $this->middleware('auth');
    }
    public function index() {
        $articles = Article::where('author_name', Auth::user()->name )
        ->orderBy('created_at', 'desc')
        ->get();
        return view('manage', ['articles' => $articles]);
    }
    public function admin() {
        $articles = Article::orderBy('created_at', 'desc')->get();
        return view('manage', ['articles' => $articles]);
    }
    public function articledeleteadmin($id) {
        $articles = Article::find($id);
        $articles ->delete();
        return redirect('/adminmanage');
    }
    public function add() {
        return view('addarticle');
    }
    public function create(Request $request) {
        if($request->file('image')) {
            $image_name = $request->file('image')->store('images', 'public');
        }
        Article::create([
            'title' => $request->title,
            'content' => $request->content,
            'category' => $request->category,
            'featured_image' => $image_name,
            'author_name' => Auth::user()->name 
        ]);
        return redirect('/manage');
    }
    public function komen(Request $request) {
        Komentar::create([
            'nama' => Auth::user()->name, 
            'komen' => $request->komen,
            'article_id' => Article::find($id)->article_id
        ]);
        return redirect('/article/{id}');
    }
    public function edit($id) {
        $articles = Article::find($id);
        return view('editarticle', ['articles' => $articles]);
    }
    public function update($id, Request $request) {
        $articles = Article::find($id);
        $articles ->title = $request->title;
        $articles ->content = $request->content;
        $articles ->category = $request->category;
        if($articles->featured_image && file_exists(storage_path('app/public/' . $articles->featured_image))) {
            \Storage::delete('public/' .$articles->featured_image);
        }
        $image_name = $request->file('image')->store('images', 'public');
        $articles ->featured_image = $image_name;
        $articles ->save();
        return redirect('/manage');
    }
    public function delete($id) {
        $articles = Article::find($id);
        $articles ->delete();
        return redirect('/manage');
    }
}
