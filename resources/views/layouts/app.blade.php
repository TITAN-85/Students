<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ config('app.name')}} : @yield('title')</title>
    <link rel="stylesheet" href="{{ asset('css/bootstrap.css')}}">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.0.0/mdb.min.css" rel="stylesheet">

</head>

<body>
    <header>

        <!-- Background image -->
        <div class="p-5 text-center bg-image" style="background-image: url('https://mdbcdn.b-cdn.net/img/new/slides/041.webp');
                height: 400px;">
            <div class="mask" style="background-color: rgba(0, 0, 0, 0.5); min-height: 185px;">
                <div class="d-flex justify-content-center align-items-center h-100">
                    <div class="text-white">
                        <h1 class="mb-3">Les etudiants du college Maisonneuve.</h1>
                        <h4 class="mb-3">Bienvenue Marcos</h4>
                        <a class="btn btn-outline-light btn-lg" href="{{ route('etudiant.index') }}" role="button">Acceder a la liste d'etudiants</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Background image -->

        <!-- Navbar -->
        @php $locale = session()->get('locale'); @endphp
        <nav class="navbar navbar-expand-lg bg-light">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Hello @if(Auth::check()) {{Auth::user()->name }} @else Guest @endif</a>

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                    <div class="navbar-nav">
                        @guest
                            <a class="nav-link" href="{{route('user.create')}}">Registration</a>
                            <a class="nav-link" href="{{route('login')}}">Login</a>
                        @else
                            <a class="nav-link" href="{{route('etudiant.index')}}">Students</a>
                            <a class="nav-link" href="{{route('forum.index')}}">Forum</a>
                            <a class="nav-link" href="{{route('repertoire.index')}}">@lang('lang.directory')</a>
                            <a class="nav-link" href="{{route('logout')}}">Logout</a>
                        @endguest
                        <a class="nav-link @if($locale == 'en')  bg-secondary  @endif" href="{{route('lang', 'en')}}">En<i class="flag flag-united-states"></i></a>
                        <a class="nav-link @if($locale == 'fr')  bg-secondary  @endif" href="{{route('lang', 'fr')}}" href="{{route('lang', 'fr')}}">Fr<i class="flag flag-france"></i></a>

                    </div>
                </div>
            </div>
        </nav>
        <!-- Navbar -->
    </header>

    @yield('content')
</body>

<footer class="bg-light text-center text-lg-start">
    <div class="container p-4">
        <div class="row">
            <div class="col-lg-6 col-md-12 mb-4 mb-md-0">
                <h5 class="text-uppercase">Maisonneuve Sherbrook</h5>

                <p>
                    Elle représente notre idéal, notre aspiration, notre objectif ultime. Elle décrit comment la communauté du Collège vise à être perçue, ce qu’elle est déterminée à devenir ou à demeurer :
                </p>
            </div>
            <div class="col-lg-6 col-md-12 mb-4 mb-md-0">
                <h5 class="text-uppercase">Maisonneuve Campus</h5>

                <p>
                    Maisonneuve
                    …un collège reconnu pour la qualité de sa formation et constamment en marche vers la réussite éducative de ses étudiants
                </p>
            </div>
        </div>
    </div>
    <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
        © 2020 Copyright: Maisonneuve
        <a class="text-dark" href="https://www.cmaisonneuve.qc.ca/" target="_blank">cmaisonneuve.qc.ca</a>
    </div>
</footer>
<script src="{{ asset('js/bootstrap.min.js')}}"></script>
<script src="{{ asset('js/modal.js')}}"></script>

</html>
