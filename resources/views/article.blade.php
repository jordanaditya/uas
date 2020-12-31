@extends('master')
@section('title', 'Article')
 <!-- Page Content -->
 <div class="container">

<div class="row">

  <!-- Post Content Column -->
  <div class="col-lg-8">
    <!-- Title -->
    <h1 class="mt-4">{{$articles -> title}}</h1>

    <!-- Author -->
    <p class="lead">
      By
      <a>{{$articles -> author_name}}</a>
      <a>| Category : <a href="{{ $articles->category}}">  {{$articles -> category}}</a>
    </p>

    <!-- Category 
    <p class="lead">
      by
      <a href="#">Start Bootstrap</a>
    </p>-->

    <hr>

    <!-- Date/Time -->
    <p>Posted on {{$articles -> created_at}}</p>

    <hr>

    <!-- Preview Image -->
    <img class="img-fluid rounded" src="{{asset('storage/'.$articles->featured_image)}}" alt="">

    <hr>

    <!-- Post Content -->
    <p class="lead"></p>
    <p>{{$articles -> content}}</p>
    
    <hr>

    <div id="fb-root"></div>
    <script async defer crossorigin="anonymous" src="https://connect.facebook.net/id_ID/sdk.js#xfbml=1&version=v9.0" nonce="dFcM3aLV"></script>

    <div class="fb-comments" data-href="https://developers.facebook.com/docs/plugins/comments#configurator" data-width="" data-numposts="5"></div>
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