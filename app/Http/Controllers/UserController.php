<?php

namespace App\Http\Controllers;
use App\User;
use Auth;
use Illuminate\Support\Facades\Gate;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;

class UserController extends Controller
{
    public function __construct() {
        $this->middleware('auth');
    }
    public function index() {
        $users = User::where('id', Auth::user()->id )->get();
        return view('usermanage',['users' => $users]);
    }
    public function adminindex() {
        $users = User::all();
        return view('usermanage',['users' => $users]);
    }
    public function adminedit ($id) {
        $users = User::find($id);
        return view('useredit', ['users' => $users]);
    }
    public function adminupdate($id, Request $request) {
        $users = User::find($id);
        $users->name   = $request['name'];
        $users->email = $request['email'];
        $users->password = Hash::make($request['password']);

        if($users->profile && file_exists(storage_path('app/public/' . $users->profile))) {
            \Storage::delete('public/' .$users->profile);
        }
        $profile_name = $request->file('image')->store('images', 'public');
        $users->profile = $profile_name;
        $users->save();
        return redirect ('/useradminmanage');
    }
    public function admindelete ($id) {
        $articles = User::find($id);
        $articles ->delete();
        return redirect('/useradminmanage');
    }

    public function edit ($id) {
        $users = User::find($id);
        return view('useredit', ['users' => $users]);
    }

    public function update($id, Request $request) {
        $users = User::find($id);
        $users->name   = $request['name'];
        $users->email = $request['email'];
        $users->password = Hash::make($request['password']);

        if($users->profile && file_exists(storage_path('app/public/' . $users->profile))) {
            \Storage::delete('public/' .$users->profile);
        }
        $profile_name = $request->file('image')->store('images', 'public');
        $users->profile = $profile_name;
        $users->save();
        return redirect ('/usermanage');
    }
}
