<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ config('app.name')}} : @yield('title')</title>
    <link rel="stylesheet" href="{{ asset('css/bootstrap.css')}}">
</head>

<body>
    <header>


        <!-- Background image -->
        <div class="p-5 text-center bg-image" style="
      background-image: url('https://mdbcdn.b-cdn.net/img/new/slides/041.webp');
      height: 400px;
    ">
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
        <nav class="navbar navbar-expand-lg navbar-light bg-white">
            <div class="container-fluid">
                <button class="navbar-toggler" type="button" data-mdb-toggle="collapse" data-mdb-target="#navbarExample01" aria-controls="navbarExample01" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarExample01">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item active">
                            <a class="nav-link" aria-current="page" href="{{ route('etudiant.index') }}">Accueil</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('etudiant.create')}}">Ajouter un etudiant</a>
                        </li>
                        <!-- <li class="nav-item">
                            <a class="nav-link" href="#">Nous Joindre</a>
                        </li> -->
                        <!-- <li class="nav-item">
                            <a class="nav-link" href="#">A propos de nous</a>
                        </li> -->
                    </ul>
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

</html>