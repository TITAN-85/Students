@extends('layouts.app')
@section('title', 'Etudiants List')
@section('content')

<div class="container">

    @if(Auth::check())
        @if(Auth::user()->user_etudiant_id)
{{--            todo--}}
{{--            admin numbers--}}
            {{--49866058108--}}
            {{--610573041096--}}
            <div class="row">
                <div class="col-12 text-center pt-5">
{{--                    <h1 class="display-one mt-5">{{ config ('app.name')}}</h1>--}}
                    <h1 class="display-one mt-5"> @lang('lang.students')</h1>
                    <div class="row">
                        <div class="col-7">
                            <p> @lang('lang.title_header1')</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row mb-5 justify-content-center">
                <div class="col-8">
                    <div class="card">
                        <div class="card-header">@lang('lang.students_nav')</div>
                        <div class="card-body">
                            <div class="row mb-5 justify-content-center">
                                <div class="col-6 ">
                                    <ul>
                                        @forelse ($etudiants as $etudiant)
                                        <li class="d-grid btn btn-outline-dark">
                                            <a class="text-decoration-none" href="{{ route('etudiant.show', $etudiant->id)}}">{{ $etudiant->name }}</a>
                                        </li>
                                        @empty
                                        <li class="text-danger"> Rien </li>
                                        @endforelse
                                    </ul>
                                    <div class="justify-content-center">
                                        {{ $etudiants }}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        @endif
    @endif
</div>

@endsection
