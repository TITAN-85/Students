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
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Inner main body -->

                    <!-- Forum List -->
                    <div class="inner-main-body p-2 p-sm-3 collapse forum-content show">


                        @foreach($files as $file)

                        <div class="card mb-2">
                            <div class="card-body p-2 p-sm-3">
                                <div class="media forum-item">
                                    <a href="#" data-toggle="collapse" data-target=".forum-content"><img src="https://bootdey.com/img/Content/avatar/avatar1.png" class="mr-3 rounded-circle" width="50" alt="User" /></a>


{{--                                    @if(Auth::user()->id)--}}
{{--                                        <a href="{{ route('repertoire.edit', $file->id)}}" class="btn btn-success">Modiffier / Effacer</a>--}}
{{--                                    @endif--}}

{{--                                    <form action="{{ route('repertoire.store')}}" enctype="multipart/form-data" method="post" >--}}
{{--                                        @csrf--}}
{{--                                        @method('post')--}}
{{--                                        <a href="{{ route('repertoire.download', $file )}}" class="btn btn-success"> Download</a>--}}
{{--                                        <input type="submit" placeholder="Sauvgarder" class="btn btn-warning btn-block">--}}
{{--                                    </form>--}}
                                    


                                    <div class="media-body">
                                        <h6><a href="#" data-toggle="collapse" data-target=".forum-content" class="text-body">{{$file->title}}</a></h6>
                                        <p class="text-secondary">
                                            here is the file icon
                                        </p>
                                    </div>


                                    <div class="text-muted small text-center align-self-center">
                                        <span class="d-none d-sm-inline-block"><i class="far fa-eye"></i> 19</span>
                                        <span><i class="far fa-comment ml-2"></i> 3</span>
                                    </div>


                                    <div>
                                        <div class="row text-center ma-2">
                                            <div class="col-12">

                                                <a href="{{ route('repertoire.edit', $file->id)}}" class="btn btn-success">Modiffier / Effacer</a>
                                                <a href="{{ route('repertoire.download', $file )}}" class="btn btn-success"> Download</a>

                                                {{--                                                <form action="{{ route('repertoire.store')}}" enctype="multipart/form-data" method="post" >--}}
{{--                                                    @csrf--}}
{{--                                                    @method('post')--}}
{{--                                                    <a href="{{ route('repertoire.download', $file )}}" class="btn btn-success"> Download</a>--}}
{{--                                                    <input type="submit" placeholder="Sauvgarder" class="btn btn-warning btn-block">--}}
{{--                                                </form>--}}

{{--                                                <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal">Effacer article</button>--}}
{{--                                                <a href="" class="btn btn-success">Mettre a jour article</a>--}}

                                            </div>
                                            <div class="col-6"></div>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>

                        @endforeach


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
