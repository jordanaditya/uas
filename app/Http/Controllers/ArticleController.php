<?php

namespace App\Http\Controllers;
use App\Article;
use Auth;
use App\User;
use PDF;
use Illuminate\Http\Request;

class ArticleController extends Controller
{
    public function Article($id) {
        $articles = Article::find($id);
        return view ('article', ['articles' => $articles]);
    }

    public function cetak_pdf() {
        $articles = Article::where('author_name', Auth::user()->name)->get();
        $pdf = PDF::loadview('article_pdf', ['articles'=>$articles]);
        return $pdf->stream();
    }

    public function Technology() {
        $category = Article::where('category', 'Technology')
        ->orderBy('created_at', 'desc')
        ->get();
        return view ('technology', ['category' => $category]);
    }
    public function Culture() {
        $category = Article::where('category', 'Culture')
        ->orderBy('created_at', 'desc')
        ->get();
        return view ('culture', ['category' => $category]);
    }
    public function Health() {
        $category = Article::where('category', 'Health')
        ->orderBy('created_at', 'desc')
        ->get();
        return view ('health', ['category' => $category]);
    }
    public function Industry() {
        $category = Article::where('category', 'Industry')
        ->orderBy('created_at', 'desc')
        ->get();
        return view ('industry', ['category' => $category]);
    }
    public function Programming() {
        $category = Article::where('category', 'Programming')
        ->orderBy('created_at', 'desc')
        ->get();
        return view ('programming', ['category' => $category]);
    }
    public function Gaming() {
        $category = Article::where('category', 'Gaming')
        ->orderBy('created_at', 'desc')
        ->get();
        return view ('gaming', ['category' => $category]);
    }
}