@extends('layouts.app')
@section('title', 'etudiant')
@section('content')

<div class="container">

    <div class="row justify-content-center">
        <div class="col-3 pt-2">
            <a href="{{ route('etudiant.index') }}" class="btn btn-outline-primary col-12 pt-2">Retourner</a>
{{--            <h4 class="display-one mt-2">{{$etudiant->title}}</h4>--}}
            <hr>
            <p><strong>Name:</strong> {{ $etudiant->name }}</p>
            <p><strong>Adress:</strong> {{ $etudiant->adresse }}</p>
            <p><strong>Phone number:</strong> {{ $etudiant->phone }}</p>
            <p><strong>Email:</strong> {{ $etudiant->email }}</p>
            <p><strong>Birthday:</strong> {{ $etudiant->birthday }}</p>

{{--            <p><strong>City:</strong> {{ $etudiant->etudiantHasCity->nom }}</p>--}}

            <hr>
            <p>{{$etudiant->created_at}}</p>
            <p>{{$etudiant->updated_at}}</p>
            <hr>
        </div>
    </div>


    <div>
        <div class="row text-center ma-2">
            <div class="col-12">


                <!-- Button trigger modal -->
                <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal">
                    Effacer l'etudiant
                </button>

                <a href="{{ route('etudiant.edit', $etudiant->id)}}" class="btn btn-success">Mettre a jour</a>
            </div>
            <div class="col-6">
            </div>
        </div>
    </div>


    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Oui. Effacer un post</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    Vous etes sur?
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Non. Retourner</button>

                    <form action="{{ route('etudiant.edit', $etudiant->id) }}" method="POST">
                        @csrf
                        @method('delete')
                        <input type="submit" value="Oui. Effacer" class="btn btn-danger">
                    </form>

                </div>
            </div>
        </div>
    </div>

</div>

@endsection
