@extends('layouts.app')
@section('title', 'Etudiants List')
@section('content')

{{--    <div class="container">--}}
{{--        <div class="row">--}}
{{--            <div class="col-12 text-center pt-5">--}}
{{--                <h1 class="display-one mt-5">{{ config ('app.name')}}</h1>--}}
{{--                <div class="row">--}}
{{--                    <div class="col-7">--}}
{{--                        <h3>Forum</h3>--}}
{{--                    </div>--}}
{{--                    <div class="col-4">--}}
{{--                        <a href="{{ route('etudiant.create')}}" class="btn btn-outline-primary">Ajouter un article</a>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--        </div>--}}


{{--        <div class="row mb-5 justify-content-center">--}}
{{--            <div class="col-8">--}}
{{--                <div class="card">--}}
{{--                    <div class="card-header">Liste des article</div>--}}
{{--                    <div class="card-body">--}}
{{--                        <div class="row mb-5 justify-content-center">--}}
{{--                            <div class="col-6 ">--}}
{{--                                <ul>--}}
{{--                                    @forelse ($etudiants as $etudiant)--}}
{{--                                        <li class="d-grid btn btn-outline-dark">--}}
{{--                                            <a class="text-decoration-none" href="{{ route('etudiant.show', $etudiant->id)}}">{{ $etudiant->name }}</a>--}}
{{--                                        </li>--}}
{{--                                    @empty--}}
{{--                                        <li class="text-danger"> Rien </li>--}}
{{--                                    @endforelse--}}
{{--                                    Les articles sont ici--}}
{{--                                </ul>--}}
{{--                                <div class="justify-content-center">--}}
{{--                                    {{ $etudiants }}--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--        </div>--}}


{{--    </div>--}}





    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-2/css/all.min.css" integrity="sha256-46r060N2LrChLLb5zowXQ72/iKKNiw/lAmygmHExk/o=" crossorigin="anonymous" />
    <link rel="stylesheet" href="{{ asset('css/forum.css')}}">
    <div class="container">
        <div class="main-body p-0">
            <div class="inner-wrapper">
                <!-- Inner sidebar -->
{{--                <div class="inner-sidebar">--}}
                    <!-- Inner sidebar header -->
{{--                    <div class="inner-sidebar-header justify-content-center">--}}
{{--                        <button class="btn btn-primary has-icon btn-block" type="button" data-toggle="modal" data-target="#threadModal">--}}
{{--                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-plus mr-2">--}}
{{--                                <line x1="12" y1="5" x2="12" y2="19"></line>--}}
{{--                                <line x1="5" y1="12" x2="19" y2="12"></line>--}}
{{--                            </svg>--}}
{{--                            NEW DISCUSSION--}}
{{--                        </button>--}}
{{--                    </div>--}}
                    <!-- /Inner sidebar header -->

{{--                    <!-- Inner sidebar body -->--}}
{{--                    <div class="inner-sidebar-body p-0">--}}
{{--                        <div class="p-3 h-100" data-simplebar="init">--}}
{{--                            <div class="simplebar-wrapper" style="margin: -16px;">--}}
{{--                                <div class="simplebar-height-auto-observer-wrapper"><div class="simplebar-height-auto-observer"></div></div>--}}
{{--                                <div class="simplebar-mask">--}}
{{--                                    <div class="simplebar-offset" style="right: 0px; bottom: 0px;">--}}
{{--                                        <div class="simplebar-content-wrapper" style="height: 100%; overflow: hidden scroll;">--}}
{{--                                            <div class="simplebar-content" style="padding: 16px;">--}}
{{--                                                <nav class="nav nav-pills nav-gap-y-1 flex-column">--}}
{{--                                                    <a href="javascript:void(0)" class="nav-link nav-link-faded has-icon active">All Threads</a>--}}
{{--                                                    <a href="javascript:void(0)" class="nav-link nav-link-faded has-icon">Popular this week</a>--}}
{{--                                                    <a href="javascript:void(0)" class="nav-link nav-link-faded has-icon">Popular all time</a>--}}
{{--                                                    <a href="javascript:void(0)" class="nav-link nav-link-faded has-icon">Solved</a>--}}
{{--                                                    <a href="javascript:void(0)" class="nav-link nav-link-faded has-icon">Unsolved</a>--}}
{{--                                                    <a href="javascript:void(0)" class="nav-link nav-link-faded has-icon">No replies yet</a>--}}
{{--                                                </nav>--}}
{{--                                            </div>--}}
{{--                                        </div>--}}
{{--                                    </div>--}}
{{--                                </div>--}}
{{--                                <div class="simplebar-placeholder" style="width: 234px; height: 292px;"></div>--}}
{{--                            </div>--}}
{{--                            <div class="simplebar-track simplebar-horizontal" style="visibility: hidden;"><div class="simplebar-scrollbar" style="width: 0px; display: none;"></div></div>--}}
{{--                            <div class="simplebar-track simplebar-vertical" style="visibility: visible;"><div class="simplebar-scrollbar" style="height: 151px; display: block; transform: translate3d(0px, 0px, 0px);"></div></div>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                    <!-- /Inner sidebar body -->--}}
{{--                </div>--}}
                <!-- /Inner sidebar -->

                <!-- Inner main -->
                <div class="inner-main">
                    <!-- Inner main header -->
{{--                    <div class="inner-main-header">--}}
{{--                        <a class="nav-link nav-icon rounded-circle nav-link-faded mr-3 d-md-none" href="#" data-toggle="inner-sidebar"><i class="material-icons">arrow_forward_ios</i></a>--}}
{{--                        <select class="custom-select custom-select-sm w-auto mr-1">--}}
{{--                            <option selected="">Latest</option>--}}
{{--                            <option value="1">Popular</option>--}}
{{--                            <option value="3">Solved</option>--}}
{{--                            <option value="3">Unsolved</option>--}}
{{--                            <option value="3">No Replies Yet</option>--}}
{{--                        </select>--}}
{{--                        <span class="input-icon input-icon-sm ml-auto w-auto">--}}
{{--                    <input type="text" class="form-control form-control-sm bg-gray-200 border-gray-200 shadow-none mb-4 mt-4" placeholder="Search forum" />--}}
{{--                </span>--}}
{{--                    </div>--}}
                    <!-- /Inner main header -->
                    <!-- New Thread Modal -->
                    <div class="p-2 p-sm-3" id="threadModal" tabindex="-1" role="dialog" aria-labelledby="threadModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-lg" role="document">
                            <div class="modal-content">
                                <form>
                                    <div class="modal-body" style="padding: 20px; ">
                                        <div class="form-group">
                                            <label for="threadTitle">Title</label>
                                            <input type="text" class="form-control" id="threadTitle" placeholder="Enter title" autofocus="" />
                                        </div>

                                        <label for="userArticle">Title</label>
                                        <textarea id="userArticle" class="form-control summernote"  ></textarea>

{{--                                        <div class="custom-file form-control-sm mt-3" style="max-width: 300px;">--}}
{{--                                            <input type="file" class="custom-file-input" id="customFile" multiple="" />--}}
{{--                                            <label class="custom-file-label" for="customFile">Attachment</label>--}}
{{--                                        </div>--}}
                                    </div>
                                    <div class="modal-footer" style="padding: 20px; ">
{{--                                        <button type="button" class="btn btn-light" data-dismiss="modal">Cancel</button>--}}
                                        <button type="button" class="btn btn-primary">Post</button>
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
{{--                                    <a class="text-decoration-none" href="{{ route('etudiant.show', $etudiant->id)}}">{{ $etudiant->name }}</a>--}}
                                    <a href="{{ route('forum.show', $article->id) }}" data-toggle="collapse" data-target=".forum-content"><img src="https://bootdey.com/img/Content/avatar/avatar1.png" class="mr-3 rounded-circle" width="50" alt="User" /></a>
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
