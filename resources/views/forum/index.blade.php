@extends('layouts.app')
@section('title', 'Etudiants List')
@section('content')

{{--if--}}
{{--etudiant--}}
@if(Auth::user())
@if(Auth::user()->user_etudiant_id)

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-2/css/all.min.css" integrity="sha256-46r060N2LrChLLb5zowXQ72/iKKNiw/lAmygmHExk/o=" crossorigin="anonymous" />
    <link rel="stylesheet" href="{{ asset('css/forum.css')}}">
    <div class="container">
        <div class="main-body p-0">
            <div class="inner-wrapper">

                <!-- Inner main -->
                <div class="inner-main">
                    <!-- New Thread Modal -->
                    <div class="p-2 p-sm-3" id="threadModal" tabindex="-1" role="dialog" aria-labelledby="threadModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-lg" role="document">
                            <div class="modal-content">
                                <form action="{{ route('forum.store', ['userConnected' =>$userConnected])}}" method="post">
                                    @csrf

                                    <div class="modal-body" style="padding: 20px; ">
                                        <div class="form-group">

                                            <div>
{{--                                            Test: {{ $articles->studentHasNumber->number }}--}}
                                            </div>

                                            <label for="titleForumEn">@lang('lang.title_forum') En </label>
                                            <input type="text" class="form-control" id="titleForumEn" name="titleForumEn" placeholder="@lang('lang.title_forum_placeholder')" autofocus="" />
                                        </div>

                                        <div class="form-group">
                                            <label for="titleForumFr">@lang('lang.title_forum') Fr</label>
                                            <input type="text" class="form-control" id="titleForumFr" name="titleForumFr" placeholder="@lang('lang.title_forum_placeholder')" autofocus="" />
                                        </div>

                                        <label for="ArticleForumEn">Article En</label>
                                        <textarea id="ArticleForumEn" name="ArticleForumEn" class="form-control summernote" placeholder="@lang('lang.forum_article')" ></textarea>

                                        <label for="ArticleForumFr">Article Fr</label>
                                        <textarea id="ArticleForumFr" name="ArticleForumFr" class="form-control summernote"  placeholder="@lang('lang.forum_article')"></textarea>

                                        <div class="card-footer">
                                            <input type="submit" value="@lang('lang.send_btn')" name="$newArticle" id="saveArticle" class="btn btn-success">
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>

                    <!-- Inner main body -->

                    <!-- Forum List -->
                    <div class="inner-main-body p-2 p-sm-3 collapse forum-content show">

                        @foreach($articles as $article)

                        <div class="card mb-2">
                            <div class="card-body p-2 p-sm-3">
                                <div class="media forum-item">
                                    <a href="#" data-toggle="collapse" data-target=".forum-content"><img src="https://bootdey.com/img/Content/avatar/avatar1.png" class="mr-3 rounded-circle" width="50" alt="User" /></a>
                                    @if(Auth::user()->id == $article->forum_user_id)
                                    <a href="{{ route('forum.show', $article->id)}}" class="btn btn-success"> @lang('lang.modify_btn') / @lang('lang.delete_btn')</a>
                                    @endif
                                    <div class="media-body">
                                        <h6><a href="#" data-toggle="collapse" data-target=".forum-content" class="text-body">{{$article->title}}</a></h6>
                                        <p class="text-secondary">
                                            {{$article->article}}
                                        </p>
                                        <p class="text-muted"><a href="javascript:void(0)">{{$article->name}}</a> replied <span class="text-secondary font-weight-bold">{{$article->updated_at}}</span></p>
                                    </div>
                                    <div class="text-muted small text-center align-self-center">
                                        <span class="d-none d-sm-inline-block"><i class="far fa-eye"></i> 19</span>
                                        <span><i class="far fa-comment ml-2"></i> 3</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        @endforeach

                        <ul class="pagination pagination-sm pagination-circle justify-content-center mb-0">
                            <li class="page-item disabled">
                                <span class="page-link has-icon"><i class="material-icons">chevron_left</i></span>
                            </li>
                            <li class="page-item"><a class="page-link" href="javascript:void(0)">1</a></li>
                            <li class="page-item active"><span class="page-link">2</span></li>
                            <li class="page-item"><a class="page-link" href="javascript:void(0)">3</a></li>
                            <li class="page-item">
                                <a class="page-link has-icon" href="javascript:void(0)"><i class="material-icons">chevron_right</i></a>
                            </li>
                        </ul>


                    </div>

                </div>
                <!-- /Inner main -->
            </div>


        </div>
    </div>
@else
    <div class="container">
        <div class="main-body p-0">
            <div class="inner-wrapper">
                <!-- Inner main -->
                <div class="inner-main">
                    <!-- New Thread Modal -->
                    <div class="p-2 p-sm-3" id="threadModal" tabindex="-1" role="dialog" aria-labelledby="threadModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-lg" role="document">
                            <div class="modal-content">
                                <div>
                                    <h2>
                                        @lang('lang.students_forum_only')
                                    </h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endif
@endif
@endsection
