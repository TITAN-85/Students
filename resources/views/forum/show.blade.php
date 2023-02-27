@extends('layouts.app')
@section('title', 'etudiant')
@section('content')

    <div class="container">
        <div class="main-body p-0">
            <div class="inner-wrapper">

<!-- Forum Detail -->
                <div class="inner-main-body p-2 p-sm-3  forum-content">
                    <a href="{{ route('forum.index')}}" class="btn btn-light btn-sm mb-3 has-icon" data-toggle="collapse" data-target=".forum-content"><i class="fa fa-arrow-left mr-2"></i>Back</a>
                    <div class="card mb-2">
                        <div class="card-body">
                            <div class="media forum-item">
                                <a href="javascript:void(0)" class="card-link">
                                    <img src="https://bootdey.com/img/Content/avatar/avatar1.png" class="rounded-circle" width="50" alt="User" />
                                    <small class="d-block text-center text-muted"> {{$article->title}}</small>
                                </a>
                                <div class="media-body ml-3">
                                    <small class="text-muted ml-2">Article created: {{ $article->created_at}}</small>
                                    <h5 class="mt-1">{{$article->title}}</h5>
                                    <div class="mt-3 font-size-sm">
{{--                                        <p>Hellooo :)</p>--}}
                                        <p>
                                            {{$article->article}}
                                        </p>
                                    </div>
                                </div>


                                <div>
                                    <div class="row text-center ma-2">
                                        <div class="col-12">
                                            <!-- Button trigger modal -->
                                            <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal">@lang('lang.delete_btn')</button>
                                            <a href="{{ route('forum.edit', $article->id)}}" class="btn btn-success">@lang('lang.update_btn')</a>
                                        </div>
                                        <div class="col-6">
                                        </div>
                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="exampleModalLabel"> @lang('lang.article_del_y') </h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>

                    <div class="modal-body">@lang('lang.article_del_q')</div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">@lang('lang.article_del_n')</button>
{{--                        <button type="button" class="btn btn-primary">Save changes</button>--}}

                        <form action="{{ route('forum.edit', $article->id) }}" method="POST">
                            @csrf
                            @method('delete')
                            <input type="submit" value="@lang('lang.article_del_y_conf')" class="btn btn-danger">
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
<!-- /Forum Detail -->


