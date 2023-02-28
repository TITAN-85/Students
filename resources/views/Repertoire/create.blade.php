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
                                <h2>@lang('lang.directory_nav') </h2>
                                <div class="modal-content">
                                    <div class="col-4">
                                        <a href="{{ route('repertoire.index') }}" class="btn btn-outline-primary">@lang('lang.back')</a>
                                    </div>
{{--FORM--}}
                                    <form action="{{ route('repertoire.store')}}" enctype="multipart/form-data" method="post" >
                                        @csrf
                                        @if ($message = Session::get('success'))
                                            <div class="alert alert-success">
                                                <strong>{{ $message }}</strong>
                                            </div>
                                        @endif

                                        @if (count($errors) > 0)
                                            <div class="alert alert-danger">
                                                <ul>
                                                    @foreach ($errors->all() as $error)
                                                        <li>{{ $error }}</li>
                                                    @endforeach
                                                </ul>
                                            </div>
                                        @endif
{{--FORM DATA--}}
                                        <div class="modal-body" style="padding: 20px; ">
                                            <div class="form-group">

                                                <label for="title">@lang('lang.title_forum') En </label>
                                                <input type="text" class="form-control" id="titleFileEn" name="title" placeholder="@lang('lang.title_forum_placeholder')" autofocus="" />
                                            </div>

                                            <div class="form-group">
                                                <label for="title_fr">@lang('lang.title_forum') Fr</label>
                                                <input type="text" class="form-control" id="titleFileFr" name="title_fr" placeholder="@lang('lang.title_forum_placeholder')" autofocus="" />
                                            </div>

                                            <h3 class=""> @lang('lang.download_btn') </h3>
                                            <label class="form-label" for="file">
                                                <input id="file" class="form-control form-control-sm" type="file" name="file">
                                                <p>doc - xlx - rtf - xls - jpg - jpeg - pdf - zip</p>
                                            </label>

                                            <div class="card-footer">
                                                <input type="submit" value="@lang('lang.send')" name=submit id="saveFile" class="btn btn-primary btn-block mt-4">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Inner main body -->

                <!-- Forum List -->
                <div class="inner-main-body p-2 p-sm-3 collapse forum-content show">

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
