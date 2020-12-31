<!DOCTYPE html>

<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>@yield('title')</title>

  <!-- Bootstrap core CSS -->
  <link href="{{ asset ('vendor/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="{{ asset ('css/blog-home.css') }}" rel="stylesheet">

</head>

<body>
  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="{{ url('./homes') }}">Easy</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item ">
            <a class="nav-link" href="{{ url('./homes') }}">Home
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item {{ Route::is('write') ? 'active' : ''}}">
            @can('write-articles')
            <a class="nav-link" href="{{ url('./manage') }}">Write</a>
            @endcan
          </li>
          <li class="nav-item {{ Route::is('manage') ? 'active' : ''}}">
            @can('manage-articles')
            <a class="nav-link" href="{{ url('./adminmanage') }}">Manage</a>
            @endcan
          </li>
          <li class="nav-item {{ Route::is('manage') ? 'active' : ''}}">
            @can('manage-articles')
            <a class="nav-link" href="{{ url('./useradminmanage') }}">User Manage</a>
            @endcan
          </li>
          <li class="nav-item">
            <a class="nav-link" href="{{ url('./about') }}">About</a>
          </li>
          @guest
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                            </li>
                            @if (Route::has('register'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                </li>
                            @endif
                        @else
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }} <span class="caret"></span>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="{{ url('./usermanage') }}">Edit Profile
                                    </a>
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        @endguest
        </ul>
      </div>
    </div>
  </nav>
  
  <!-- Sidebar Widgets Column -->
  <div class="col-md-4">
        <!-- Search Widget -->
        <div class="card my-4">
          <h5 class="card-header">Search</h5>
          <div class="card-body">
            <div class="input-group">
            <form action="/homes/cari" method="GET">
	        <input type="text" name="cari" placeholder="Search for .." value="{{ old('cari') }}">
	        <input type="submit" value="Search">
            </form>
            </div>
          </div>
        </div>

        <!-- Categories Widget -->
        <div class="card my-4">
          <h5 class="card-header">Categories</h5>
          <div class="card-body">
            <div class="row">
              <div class="col-lg-6">
                <ul class="list-unstyled mb-0">
                  <li>
                    <a href="{{ url('./Technology') }}">Technology</a>
                  </li>
                  <li>
                    <a href="{{ url('./Culture') }}">Culture</a>
                  </li>
                  <li>
                    <a href="{{ url('./Health') }}">Health</a>
                  </li>
                </ul>
              </div>
              <div class="col-lg-6">
                <ul class="list-unstyled mb-0">
                  <li>
                    <a href="{{ url('./Industry') }}">Industry</a>
                  </li>
                  <li>
                    <a href="{{ url('./Programming') }}">Programming</a>
                  </li>
                  <li>
                    <a href="{{ url('./Gaming') }}">Gaming</a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>

        <!-- Side Widget -->
        <div class="card my-4">
          <h5 class="card-header">Explore New Perspective</h5>
          <div class="card-body">
          Read and share ideas from independent voices, world-class publications, and experts from around the globe. Everyone's welcome. 
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2020</p>
    </div>
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="{{ asset('vendor/jquery/jquery.min.js') }}"></script>
  <script src="{{ asset('vendor/bootstrap/js/bootstrap.bundle.min.js') }}"></script>

</body>
</html>