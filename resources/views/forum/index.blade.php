@extends('layouts.app')
@section('title', 'Etudiants List')
@section('content')


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
                                            <label for="titleForumEn">@lang('lang.title_forum') En</label>
                                            <input type="text" class="form-control" id="titleForumEn" name="titleForumEn" placeholder="@lang('lang.title_forum_placeholder')" autofocus="" />
                                        </div>

                                        <div class="form-group">
                                            <label for="titleForumFr">@lang('lang.title_forum') Fr</label>
                                            <input type="text" class="form-control" id="titleForumFr" name="titleForumFr" placeholder="@lang('lang.title_forum_placeholder')" autofocus="" />
                                        </div>

                                        <label for="ArticleForumEn">Article En</label>
                                        <textarea id="ArticleForumEn" name="ArticleForumEn" class="form-control summernote"  >@lang('lang.forum_article')</textarea>

                                        <label for="ArticleForumFr">Article Fr</label>
                                        <textarea id="ArticleForumFr" name="ArticleForumFr" class="form-control summernote"  >@lang('lang.forum_article')</textarea>

                                        <div class="card-footer">
                                            <input type="submit" value="Envoye" name="$newArticle" id="saveArticle" class="btn btn-success">
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>

                    <!-- Inner main body -->

                    <!-- Forum List -->
                    <div class="inner-main-body p-2 p-sm-3 collapse forum-content show">
{{--                        "id" => 1--}}
{{--                        "title" => "Natalie Ritchie"--}}
{{--                        "title_fr" => "Alexandrine Littel"--}}
{{--                        "article" => "If they had to."--}}
{{--                        "article_fr" => "Cat. '--so."--}}
{{--                        "forum_user_id" => 1--}}
{{--                        "created_at" => "2023-02-21 16:50:42"--}}
{{--                        "updated_at" => "2023-02-21 16:50:42"--}}
{{--                        "name" => "Buck Halvorson"--}}
{{--                        "email" => "elmore.king@example.net"--}}
{{--                        "email_verified_at" => "2023-02-21 16:50:42"--}}
{{--                        "password" => "$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi"--}}
{{--                        "remember_token" => "KVc6uneUnO"--}}
{{--                        "adresse" => "1886 Schultz Haven"--}}
{{--                        "phone" => "1-866-903-6071"--}}
{{--                        "birthday" => "1991-05-11"--}}
{{--                        "user_ville_id" => 9--}}
{{--                        "user_etudiant_id" => 1--}}
{{--                        "temp_password" => null--}}


                        @foreach($articles as $article)

                        <div class="card mb-2">
                            <div class="card-body p-2 p-sm-3">
                                <div class="media forum-item">
                                    <a href="#" data-toggle="collapse" data-target=".forum-content"><img src="https://bootdey.com/img/Content/avatar/avatar1.png" class="mr-3 rounded-circle" width="50" alt="User" /></a>
                                    @if(Auth::user()->id == $article->forum_user_id)
                                    <a href="{{ route('forum.show', $article->id)}}" class="btn btn-success">Modiffier / Effacer</a>
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
                    <!-- /Forum List -->

{{--                    <!-- Forum Detail -->--}}
{{--                    <div class="inner-main-body p-2 p-sm-3 collapse forum-content">--}}
{{--                        <a href="#" class="btn btn-light btn-sm mb-3 has-icon" data-toggle="collapse" data-target=".forum-content"><i class="fa fa-arrow-left mr-2"></i>Back</a>--}}
{{--                        <div class="card mb-2">--}}
{{--                            <div class="card-body">--}}
{{--                                <div class="media forum-item">--}}
{{--                                    <a href="javascript:void(0)" class="card-link">--}}
{{--                                        <img src="https://bootdey.com/img/Content/avatar/avatar1.png" class="rounded-circle" width="50" alt="User" />--}}
{{--                                        <small class="d-block text-center text-muted">Newbie</small>--}}
{{--                                    </a>--}}
{{--                                    <div class="media-body ml-3">--}}
{{--                                        <a href="javascript:void(0)" class="text-secondary">Mokrani</a>--}}
{{--                                        <small class="text-muted ml-2">1 hour ago</small>--}}
{{--                                        <h5 class="mt-1">Realtime fetching data</h5>--}}
{{--                                        <div class="mt-3 font-size-sm">--}}
{{--                                            <p>Hellooo :)</p>--}}
{{--                                            <p>--}}
{{--                                                I'm newbie with laravel and i want to fetch data from database in realtime for my dashboard anaytics and i found a solution with ajax but it dosen't work if any one have a simple solution it will be--}}
{{--                                                helpful--}}
{{--                                            </p>--}}
{{--                                            <p>Thank</p>--}}
{{--                                        </div>--}}
{{--                                    </div>--}}
{{--                                    <div class="text-muted small text-center">--}}
{{--                                        <span class="d-none d-sm-inline-block"><i class="far fa-eye"></i> 19</span>--}}
{{--                                        <span><i class="far fa-comment ml-2"></i> 3</span>--}}
{{--                                    </div>--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                        <div class="card mb-2">--}}
{{--                            <div class="card-body">--}}
{{--                                <div class="media forum-item">--}}
{{--                                    <a href="javascript:void(0)" class="card-link">--}}
{{--                                        <img src="https://bootdey.com/img/Content/avatar/avatar2.png" class="rounded-circle" width="50" alt="User" />--}}
{{--                                        <small class="d-block text-center text-muted">Pro</small>--}}
{{--                                    </a>--}}
{{--                                    <div class="media-body ml-3">--}}
{{--                                        <a href="javascript:void(0)" class="text-secondary">drewdan</a>--}}
{{--                                        <small class="text-muted ml-2">1 hour ago</small>--}}
{{--                                        <div class="mt-3 font-size-sm">--}}
{{--                                            <p>What exactly doesn't work with your ajax calls?</p>--}}
{{--                                            <p>Also, WebSockets are a great solution for realtime data on a dashboard. Laravel offers this out of the box using broadcasting</p>--}}
{{--                                        </div>--}}
{{--                                        <button class="btn btn-xs text-muted has-icon"><i class="fa fa-heart" aria-hidden="true"></i>1</button>--}}
{{--                                        <a href="javascript:void(0)" class="text-muted small">Reply</a>--}}
{{--                                    </div>--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                    <!-- /Forum Detail -->--}}

                    <!-- /Inner main body -->
                </div>
                <!-- /Inner main -->
            </div>


{{--            <!-- New Thread Modal -->--}}
{{--            <div class="modal fade" id="threadModal" tabindex="-1" role="dialog" aria-labelledby="threadModalLabel" aria-hidden="true">--}}
{{--                <div class="modal-dialog modal-lg" role="document">--}}
{{--                    <div class="modal-content">--}}
{{--                        <form>--}}
{{--                            <div class="modal-header d-flex align-items-center bg-primary text-white">--}}
{{--                                <h6 class="modal-title mb-0" id="threadModalLabel">New Discussion</h6>--}}
{{--                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">--}}
{{--                                    <span aria-hidden="true">×</span>--}}
{{--                                </button>--}}
{{--                            </div>--}}
{{--                            <div class="modal-body">--}}
{{--                                <div class="form-group">--}}
{{--                                    <label for="threadTitle">Title</label>--}}
{{--                                    <input type="text" class="form-control" id="threadTitle" placeholder="Enter title" autofocus="" />--}}
{{--                                </div>--}}
{{--                                <textarea class="form-control summernote" style="display: none;"></textarea>--}}

{{--                                <div class="custom-file form-control-sm mt-3" style="max-width: 300px;">--}}
{{--                                    <input type="file" class="custom-file-input" id="customFile" multiple="" />--}}
{{--                                    <label class="custom-file-label" for="customFile">Attachment</label>--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                            <div class="modal-footer">--}}
{{--                                <button type="button" class="btn btn-light" data-dismiss="modal">Cancel</button>--}}
{{--                                <button type="button" class="btn btn-primary">Post</button>--}}
{{--                            </div>--}}
{{--                        </form>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--            </div>--}}
        </div>
    </div>

@endsection
