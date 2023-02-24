@extends('layouts.app')
@section('title', 'Create')
@section('content')

<div class="container">
    <div class="row">
        <div class="col-12 text-center mt-2">
            <a href="{{ route('etudiant.index') }}" class="btn btn-outline-primary">Retourner</a>

            <h1 class="display-one">
                Ajouter un etudiant
            </h1>
        </div>
    </div>
</div>
<hr>
<div class="row justify-content-center">
    <div class="col-6">
        <div class="card">

            <form method="POST">
                @csrf
                @method('post')
                <div class="card-header">
                    Formulaire
                </div>

                <div class="card-body">

                    <div class="control-group col-12">
                        <label for="etudiantNom">Name</label>
                        <input type="text" value="" name="etudiantNom" id="etudiantNom" class="form-control">
                    </div>

                    <div class="control-group col-12">
                        <label for="etudiantAdresse">Adress</label>
                        <input type="text" value="" name="etudiantAdresse" id="etudiantAdresse" class="form-control">
                    </div>

                    <div class="control-group col-12">
                        <label for="etudiantPhone">Phone number</label>
                        <input type="text" value="" name="etudiantPhone" id="etudiantPhone" class="form-control">
                    </div>

                    <div class="control-group col-12">
                        <label for="etudiantEmail">email</label>
                        <input type="text" value="" name="etudiantEmail" id="etudiantEmail" class="form-control">
                    </div>

                    <div class="control-group col-12">
                        <label for="etudiantDateDeNaissance">Birthday</label>
                        <input type="text" value="" name="etudiantDateDeNaissance" id="etudiantDateDeNaissance" class="form-control">
                    </div>

                    <select name="etudiantVille" id="" class="control-group col-12">
                        @foreach ($villes as $ville)
                        <option value="{{$ville->id}}">{{$ville->nom}}</option>
                        @endforeach
                    </select>

                </div>

                <div class="card-footer">
                    <input type="submit" value="Envoye" name="saveArticle" id="saveArticle" class="btn btn-success">
                </div>

            </form>
        </div>
    </div>
</div>
@endsection
