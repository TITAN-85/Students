@extends('layouts.app')
@section('title', 'Etudiants List')
@section('content')

    <div class="container">
        <div class="row">
            <div class="col-12 text-center pt-5">
                <h1 class="display-one mt-5">{{ config ('app.name')}}</h1>
                <div class="row">
                    <div class="col-7">
                        <p>Etudiants du colege Maisonneuve.</p>
                    </div>
                    <div class="col-4">
{{--                        <a href="{{ route('etudiant.create')}}" class="btn btn-outline-primary">Ajouter un article</a>--}}
                    </div>
                </div>
            </div>
        </div>


        <div class="row mb-5 justify-content-center">
            <div class="col-8">
                <div class="card">
                    <div class="card-header">Liste des etudiants</div>
                    <div class="card-body">
                        <div class="row mb-5 justify-content-center">
                            <div class="col-6 ">
                                <ul>
{{--                                    @forelse ($etudiants as $etudiant)--}}
{{--                                        <li class="d-grid btn btn-outline-dark">--}}
{{--                                            <a class="text-decoration-none" href="{{ route('etudiant.show', $etudiant->id)}}">{{ $etudiant->name }}</a>--}}
{{--                                        </li>--}}
{{--                                    @empty--}}
{{--                                        <li class="text-danger"> Rien </li>--}}
{{--                                    @endforelse--}}
                                    Les articles sont ici
                                </ul>
                                <div class="justify-content-center">
                                    {{ $etudiants }}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </div>


@endsection
