@extends('layouts.app')

@section('title', 'Create')
@section('content')

<div class="container">
    <div class="row">
        <div class="col-12 text-center mt-2">
            <a href="{{ route('repertoire.index') }}" class="btn btn-outline-primary">Retourner</a>

            <h1 class="display-one">
                Modifier l'etudiant
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
                @method('put')
                <div class="card-header">
{{--                    Mon article <strong>{{$article->name}}</strong>--}}
                </div>

                <div class="card-body">


                    <div class="control-group col-12">
                        <label for="titleForumEn">@lang('lang.title_forum') En</label>
                        <input type="text" class="form-control" id="titleForumEn" name="titleForumEn" value="{{$article->title}}"/>
                    </div>
                    <div class="form-group">
                        <label for="titleForumFr">@lang('lang.title_forum') Fr</label>
                        <input type="text" class="form-control" id="titleForumFr" name="titleForumFr" value="{{$article->title_fr}}" />
                    </div>

                    <label for="ArticleForumEn">Article En</label>
                    <textarea id="ArticleForumEn" name="ArticleForumEn" class="form-control summernote" > {{$article->article}} </textarea>

                    <label for="ArticleForumFr">Article Fr</label>
                    <textarea id="ArticleForumFr" name="ArticleForumFr" class="form-control summernote" > {{$article->article_fr}} </textarea>

                    <input type="hidden" class="form-control" name="forum_user_id" value="{{$article->forum_user_id}}" />

                </div>
                <div class="card-footer">
                    <input type="submit" value="@lang('lang.send')" name="saveArticle" id="saveArticle" class="btn btn-success">
                </div>

            </form>
        </div>
    </div>
</div>
@endsection
