@extends('master')
@section('title', 'Technology')
<!-- Page Content -->
<div class="container">

<div class="row">

  <!-- Blog Entries Column -->
  <div class="col-md-8">
    <h3 class="my-4">Easy</h3>
    <h3>Category : Technology</h3>
    @foreach($category as $a)
    <!-- Blog Post -->
    <div class="card mb-4">
      <img class="card-img-top" src="{{asset('storage/'.$a->featured_image)}}" alt="Card image cap">
      <div class="card-body">
        <h2 class="card-title">{{$a -> title}}</h2>
        <p class="card-text" >{{ substr ($a -> content, 0, 150) }}...</p>
        <a href="{{ 'article/'.$a -> id}}" class="btn btn-primary">Read More &rarr;</a>
      </div>
      <div class="card-footer text-muted">
        Posted on {{$a->created_at}} By
        <a>{{$a->author_name}}</a>
        <a>| Category : <a href="{{ $a->category}}">  {{$a->category}}</a>
      </div>
    </div>
    @endforeach
  </div>