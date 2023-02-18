@extends('layouts.app')
@section('title', 'Accueil')
@section('content')

<div class="container">
    <div class="row">
        <div class="col-12 text-center pt-5">
            <h1 class="display-one mt-5">{{ config ('app.name')}}</h1>
            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Facere quidem nihil eligendi cum praesentium, velit excepturi eos impedit aperiam! Rerum eum sunt quidem in debitis mollitia voluptates laudantium accusamus exercitationem?</p>
            <!-- <a class="btn btn-outline-primary" href="/etudiant">Afficher Etudiant</a> -->
            <a class="btn btn-outline-primary" href="{{ route('etudiant.index') }}">Afficher les etudiants</a>
        </div>

    </div>
</div>

@endsection