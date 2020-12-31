@extends('master')
@section('title', 'User Manage')
<div class="container">

<div class="row">

  <div class="col-lg-8">
  <hr>
  <h3>Edit Profile</h3>
    <table class="table table-bordered table-striped">
<thead>
    <tr>
        <th>Profile</th>
        <th>E-mail</th>
        <th>Name</th>
        <th>Edit Profile</th>
    </tr>
 </thead>
 <tbody>
    @foreach($users as $u)
    <tr>
        <td><img width="150px" src="{{'storage/'.$u->profile}}" ></td>
        <td>{{$u->email}}</td>
        <td>{{$u->name}}</td>
        <td>@can('write-articles')<a href="useredit/{{ $u->id }}" class="badge badgewarning">Edit</a>@endcan
        @can('manage-articles')<a href="adminuseredit/{{ $u->id }}" class="badge badgewarning">Edit</a>@endcan
        @can('manage-articles')<a href="adminuserdelete/{{ $u->id}}" class="badge badgewarning">Delete</a>@endcan</td>
    </tr>
    @endforeach
</tbody>
</table>
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
