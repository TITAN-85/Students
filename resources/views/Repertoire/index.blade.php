@extends('layouts.app')
@section('title', 'Repertoire')
@section('content')

{{--if--}}
{{--etudiant--}}
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
                            <h2>@lang('lang.directory') </h2>
                                <div class="modal-content">
                                    <div class="col-4">
                                        <a href="{{ route('repertoire.create') }}" class="btn btn-outline-primary"> @lang('lang.add_file') </a>
                                    </div>
{{--                                <form action="{{ route('forum.store', ['userConnected' =>$userConnected])}}" method="post">--}}
{{--                                <form action="{{ route('forum.store', Auth::user()->user_etudiant_id)}}" method="post">--}}
{{--                                    <form action="{{ route('repertoire.store')}}"  method="post" >--}}
{{--                                    @csrf--}}

{{--                                        <div class="modal-body" style="padding: 20px; ">--}}
{{--                                            <div class="form-group">--}}

{{--                                                <label for="titleFileEn">@lang('lang.title_forum') En </label>--}}
{{--                                                <input type="text" class="form-control" id="titleFileEn" name="titleFileEn" placeholder="@lang('lang.title_forum_placeholder')" autofocus="" />--}}
{{--                                                </div>--}}

{{--                                                <div class="form-group">--}}
{{--                                                    <label for="titleFileFr">@lang('lang.title_forum') Fr</label>--}}
{{--                                                    <input type="text" class="form-control" id="titleFileFr" name="titleFileFr" placeholder="@lang('lang.title_forum_placeholder')" autofocus="" />--}}
{{--                                                </div>--}}

{{--                                                <h3 class=""> PDF, Zip et Doc </h3>--}}
{{--                                                <label class="form-label" for="tFile">--}}
{{--                                                    <input id="tFile" class="form-control form-control-sm" type="file" name="userfile">--}}
{{--                                                </label>--}}

{{--                                                <div class="card-footer">--}}
{{--                                                    <input type="submit" value="Envoye" name="$newFile" id="saveFile" class="btn btn-success">--}}
{{--                                                </div>--}}
{{--                                             </div>--}}
{{--                                            </form>--}}
                                        </div>
                                    </div>
                            </div>
                        </div>
                    </div>

                    <!-- Inner main body -->

                    <!-- Forum List -->
                    <div class="inner-main-body p-2 p-sm-3 collapse forum-content show">


{{--                        @foreach($articles as $article)--}}

{{--                        <div class="card mb-2">--}}
{{--                            <div class="card-body p-2 p-sm-3">--}}
{{--                                <div class="media forum-item">--}}
{{--                                    <a href="#" data-toggle="collapse" data-target=".forum-content"><img src="https://bootdey.com/img/Content/avatar/avatar1.png" class="mr-3 rounded-circle" width="50" alt="User" /></a>--}}
{{--                                    @if(Auth::user()->id == $article->forum_user_id)--}}
{{--                                    <a href="{{ route('forum.show', $article->id)}}" class="btn btn-success">Modiffier / Effacer</a>--}}
{{--                                    @endif--}}
{{--                                    <div class="media-body">--}}
{{--                                        <h6><a href="#" data-toggle="collapse" data-target=".forum-content" class="text-body">{{$article->title}}</a></h6>--}}
{{--                                        <p class="text-secondary">--}}
{{--                                            {{$article->article}}--}}
{{--                                        </p>--}}
{{--                                        <p class="text-muted"><a href="javascript:void(0)">{{$article->name}}</a> replied <span class="text-secondary font-weight-bold">{{$article->updated_at}}</span></p>--}}
{{--                                    </div>--}}
{{--                                    <div class="text-muted small text-center align-self-center">--}}
{{--                                        <span class="d-none d-sm-inline-block"><i class="far fa-eye"></i> 19</span>--}}
{{--                                        <span><i class="far fa-comment ml-2"></i> 3</span>--}}
{{--                                    </div>--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                        @endforeach--}}


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
                                        @lang('lang.closed_forum')
                                    </h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endif
@endsection
