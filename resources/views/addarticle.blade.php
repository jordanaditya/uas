@extends('master')
@section('title', 'Add Article')
<div class="container">

<div class="row">

  <div class="col-lg-8">
  <hr>
  <h3> Add Article</h3>
  <form action="/articlecreate" method="post" enctype="multipart/form-data">
 @csrf
 <div class="form-group">
 <label for="title">Title</label>
 <input type="text" class="form-control" 
required="required" name="title"></br>
 </div>
 <div class="form-group">
 <label for="content">Content</label>
 <input type="text" class="form-control" 
required="required" name="content"></br>
 </div>
 <div class="form-group">
 <label for="category">Category:</label>
 <input type="text" class="form-control" 
required="required" name="category"></br>
 </div>
 <div class="form-group">
 <label for="image">Featured Image</label>
 <input type="file" class="form-control" 
required="required" name="image"></br>
 </div>
 
 <button type="submit" name="add" class="btn btnprimary float-right">Add Data</button>
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