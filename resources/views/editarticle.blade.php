@extends('master')
@section('title', 'Edit Article')
<div class="container">

<div class="row">

  <div class="col-lg-8">
    <hr>
    <h3>Edit Article</h2>
    <form action="/articleupdate/{{$articles->id}}" method="post" enctype="multipart/form-data">
    @csrf
 <input type="hidden" name="id" value="{{$articles->id}}"></br>
 <div class="form-group">
 <label for="title">Judul</label>
 <input type="text" class="form-control" 
required="required" name="title" value="{{$articles->title}}"></br>
 </div>
 <div class="form-group">
 <label for="content">Content</label>
 <input type="text" class="form-control" 
required="required" name="content" value="{{$articles->content}}"></br>
 </div>
 <div class="form-group">
 <label for="category">Category</label>
 <input type="text" class="form-control" 
required="required" name="category" value="{{$articles->category}}"></br>
 </div>
 <div class="form-group">
 <label for="image">Featured Image</label>
 <input type="file" class="form-control" 
required="required" name="image" value="{{$articles->featured_image}}"></br>
<img width="150px" src="{{asset('storage/'.$articles->featured_image)}}">
 </div>
 <button type="submit" name="edit" class="btn btn￾primary float-right">Update Data </button>
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