<?php

namespace App\Http\Controllers;
use\App\Article;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Cache;

class HomesController extends Controller
{
    public function Homes() {
        $articles = Cache::remember('articles', 10, function() {
            return Article::orderBy('created_at', 'desc')->get();
        });
        $articles = Cache::get('articles');
        return view ('homes')->with(compact('articles'));
    }

    public function Cari(Request $request) {
        $cari = $request->cari;

        $articles = Article::where('content', 'like',"%".$cari."%")
        ->orWhere('title', 'like',"%".$cari."%")
        ->orWhere('category', 'like',"%".$cari."%")
        ->orderBy('created_at', 'desc')
        ->get();

        return view('homes', ['articles' => $articles]);
    }
}
