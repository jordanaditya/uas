@extends('master')
@section('title', 'Edit Profile')
<div class="container">
<div class="row">
<div class="col-lg-8">
    <hr>
    <h3>Edit Profile</h2>
    @can('write-articles')<form action="/userupdate/{{$users->id}}" method="post" enctype="multipart/form-data">@endcan
    @can('manage-articles')<form action="/adminuserupdate/{{$users->id}}" method="post" enctype="multipart/form-data">@endcan
    {{csrf_field()}}

<!--Input-->
 <div class="form-group">
 <label for="email">E-mail</label>
 <input type="text" class="form-control" 
required="required" name="email" value="{{$users->email}}"></br>
 </div>

 <div class="form-group">
 <label for="name">Name</label>
 <input type="text" class="form-control" 
required="required" name="name" value="{{$users->name}}"></br>
 </div>
 <div class="form-group">
    <label for="password">Password</label>
    <div class="col-md-6">
    <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">
    @error('password')
        <span class="invalid-feedback" role="alert">
            <strong>{{ $message }}</strong>
        </span>
        @enderror
        </div>
    </div>
    <div class="form-group">
        <label for="password-confirm">Confirm Password</label>
        <div class="col-md-6">
            <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password">
            </div>
        </div>
 <div class="form-group">
 <label for="profile">Profile</label>
 <input type="file" class="form-control" 
required="required" name="image" value="{{$users->profile}}"></br>
<img width="150px" src="{{asset('storage/'.$users->profile)}}">
 </div>

 <!--Submit-->
 <button type="submit" name="edit" class="btn btn￾primary float-right">Update Data</button>

<!--Style-->
 </form>
    <hr>
    <div class="media mb-4">
      <div class="media-body">
      </div>
    </div>
    <div class="media mb-4">
      <div class="media-body">
        <div class="media mt-4">
          <div class="media-body">
          </div>
        </div>
        <div class="media mt-4">
          <div class="media-body">
          </div>
        </div>
      </div>
    </div>
  </div>