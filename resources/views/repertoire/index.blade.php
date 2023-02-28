@extends('layouts.app')
@section('title', 'repertoire')
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
                    <div class="container d-flex  justify-content-center">

                    <div class="" role="document">
                        <h2> @lang('lang.directory_nav') </h2>
                            <a href="{{ route('repertoire.create') }}" class="btn btn-outline-primary"> @lang('lang.add_file') </a>
                        </div>
                    </div>
                </div>

                <!-- Inner main body -->

                    <!-- Forum List -->
                    <div class="inner-main-body p-2 p-sm-3 collapse forum-content show">

                        @foreach($files as $file)
{{--                        https://bbbootstrap.com/snippets/bootstrap-folder-list-checkbox-and-transform-effect-16091735--}}
                            <div class="container d-flex  justify-content-center">
                                <ul class="list-group text-white">
                                    <li class="list-group-item d-flex flex-column justify-content-between align-content-center">
                                        <div class="directory">
                                            <img src="https://img.icons8.com/color/100/000000/folder-invoices.png" width="60" height="60"/>
                                            <h6>{{ $file->name }}</h6>
{{--                                            <p>{{ $file->path}}</p>--}}
                                            <div class="ml-2">
                                                <h6 class="mr-8">{{$file->title}}</h6>
                                                <div class="about">
                                                    <span>{{$file->created_at}}</span>
                                                </div>
                                            </div>
                                            {{--BUTTONS--}}
                                            <div class="btnDirectory">
                                                <a href="{{ route('repertoire.download', $file)}}" class="btn btn-success mb-3"> @lang('lang.download_btn')  </a>
                                                @if(Auth::user()->id == $file->repertoires_user_id)
{{--                                                    <a href="{{ route('repertoire.edit', $file->id)}}" class="btn btn-success"> @lang('lang.modify_btn') / @lang('lang.delete_btn')</a>--}}

                                                    <!-- Button trigger modal -->
{{--                                                    <p>Le button fonction pas</p>--}}
{{--                                                    <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal">@lang('lang.delete_btn')</button>--}}
{{--                                                    <a href="{{ route('repertoire.destroy', $file->id)}}" class="btn btn-success"> @lang('lang.delete_btn')</a>--}}
                                                @endif
                                            </div>
                                            {{--END BUTTONS--}}
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        @endforeach

                    </div>
                </div>
                <!-- /Inner main -->
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

                    <form action="{{ route('repertoire.edit', $file->id) }}" method="POST">
                        @csrf
                        @method('delete')
                        <input type="submit" value="@lang('lang.article_del_y_conf')" class="btn btn-danger">
                    </form>

                </div>
            </div>
        </div>
    </div>

{{--    Offlane Student--}}
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
