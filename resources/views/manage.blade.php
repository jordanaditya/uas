@extends('master')
@section('title', 'Manage')
<div class="container">

<div class="row">

  <div class="col-lg-8">
  <hr>
  <h3>Manage Article</h3>
    <table class="table table-bordered table-striped">
<thead>
    <tr>
        <th>No</th> 
        <th>Image</th>
        <th>Title</th>
        <th>Category</th>
        <th>Author</th>
        <th>Created</th>
        <th>Manage</th>
    </tr>
 </thead>
 <tbody>
    @php $i=1 @endphp
    @foreach($articles as $a)
    <tr>
        <td>{{$i++}}</td>
        <td><img width="150px" src="{{'storage/'.$a->featured_image}}" ></td>
        <td><a href="{{ 'article/'.$a -> id}}">{{$a->title}}</td></a>
        <td>{{$a->category}}</td>
        <td>{{$a->author_name}}</td>
        <td>{{$a->updated_at}}</td>
        <td>@can('write-articles')<a href="articleedit/{{ $a->id }}" class="badge badgewarning {{ Route::is('write') ? 'active' : ''}}">Edit</a>@endcan
        @can('write-articles')<a href="articledelete/{{ $a->id }}" class="badge badgedanger">Hapus</a>@endcan
        @can('manage-articles')<a href="articledeleteadmin/{{ $a->id }}" class="badge badgedanger">Hapus</a>@endcan</td>
    </tr>
    @endforeach
</tbody>
</table>
@can('write-articles')<a href="{{ url('./articleadd') }}" class="btn btn-primary {{ Route::is('write') ? 'active' : ''}}">Add Data </a>
<a href="{{ url('./articlecetak_pdf') }}" class="btn btn-primary" target="_blank"> Cetak PDF</a>@endcan
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