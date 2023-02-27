@extends('layouts.app')
@section('title', 'Repertoire')
@section('content')

{{-- if etudiant --}}
@if(Auth::user())
@if(Auth::user()->user_etudiant_id)

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-2/css/all.min.css" integrity="sha256-46r060N2LrChLLb5zowXQ72/iKKNiw/lAmygmHExk/o=" crossorigin="anonymous" />
    <link rel="stylesheet" href="{{ asset('css/forum.css')}}">
    <link rel="stylesheet" href="{{ asset('css/repertoire.css')}}">

    <div class="container">
        <div class="main-body p-0">
            <div class="inner-wrapper">

                <!-- Inner main -->
                <div class="">
                    <!-- New Thread Modal -->
                    <div class="" role="document">
                        <h2>@lang('lang.directory') </h2>
                            <a href="{{ route('repertoire.create') }}" class="btn btn-outline-primary"> @lang('lang.add_file') </a>
                        </div>
                    </div>

                    <!-- Inner main body -->

                    <!-- Forum List -->

                    <div class="inner-main-body p-2 p-sm-3 collapse forum-content show">

                        @foreach($files as $file)
{{--                        https://bbbootstrap.com/snippets/bootstrap-folder-list-checkbox-and-transform-effect-16091735--}}
                            <div class="container d-flex  justify-content-center">
                                <ul class="list-group mt-5 text-white">
                                    <li class="list-group-item d-flex flex-column justify-content-between align-content-center">
                                        <div class="directory">
                                            <img src="https://img.icons8.com/color/100/000000/folder-invoices.png" width="60" height="60"/>
                                            <div class="ml-2">
                                                <h6 class="mr-8">{{$file->title}}</h6>
                                                <div class="about">
                                                    <span>{{$file->created_at}}</span>
                                                </div>
                                            </div>
                                            {{--BUTTONS--}}
                                            <div class="btnDirectory">
                                                <a href="{{ route('repertoire.edit', $file->id)}}" class="btn btn-success mb-3 ">Modiffier / Effacer</a>
                                                <a href="{{ route('repertoire.download', $file)}}" class="btn btn-success "> Download </a>
                                            </div>
                                            {{--END BUTTONS--}}
{{--                                            <div class="check">--}}
{{--                                                <input type="checkbox" name="a">--}}
{{--                                            </div>--}}
                                        </div>

                                    </li>

{{--                                    <div class="card mb-2">--}}
{{--                                        <div class="card-body p-2 p-sm-3">--}}
{{--                                            <div class="media forum-item">--}}


{{--                                                <div class="media-body">--}}
{{--                                                    <h6><a href="#" data-toggle="collapse" data-target=".forum-content" class="text-body">{{$file->title}}</a></h6>--}}
{{--                                                    <p class="text-secondary"></p>--}}
{{--                                                </div>--}}


{{--                                                <div class="text-muted small text-center align-self-center">--}}
{{--                                                    <span class="d-none d-sm-inline-block"><i class="far fa-eye"></i> 19</span>--}}
{{--                                                    <span><i class="far fa-comment ml-2"></i> 3</span>--}}
{{--                                                </div>--}}

{{--BUTTONS--}}
{{--                                                <div>--}}
{{--                                                    <div class="row text-center ma-2">--}}
{{--                                                        <div class="col-12">--}}
{{--                                                            <a href="{{ route('repertoire.edit', $file->id)}}" class="btn btn-success">Modiffier / Effacer</a>--}}
{{--                                                            <a href="{{ route('repertoire.download', $file )}}" class="btn btn-success"> Download</a>--}}
{{--                                                        </div>--}}
{{--                                                        <div class="col-6"></div>--}}
{{--                                                    </div>--}}
{{--                                                </div>--}}
{{--END BUTTONS--}}

{{--                                            </div>--}}
{{--                                        </div>--}}
{{--                                    </div>--}}

                                </ul>
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
                                        @lang('lang.students_directory_only')
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
