<?php

namespace App\Http\Controllers;

use App\Models\User;
use Faker\Core\File;
use Illuminate\Http\Request;
use App\Models\Repertoire;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Response;



class RepertoireController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $files = Repertoire::all();
        return view('repertoire.index', ['files' => $files]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('repertoire.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $user_id = Auth::user()->id;
        $request->validate([
            'title' => 'required',
            'title_fr' => 'required',
            'file' => 'required|mimes:doc,xlx,rtf,xls,jpg,jpeg,pdf,zip|max:2048'
        ]);
        $fileModel = new Repertoire;
        if($request->file) {
            /* save to storage/app */
            $fileName = time().'_'.$request->file->getClientOriginalName();
            $filePath = $request->file('file')->storeAs('/files/uploads', $fileName);
            $fileModel->title = $request->title;
            $fileModel->title_fr = $request->title_fr;
            $fileModel->path = $filePath;
            $fileModel->repertoires_user_id = $user_id;
            $fileModel->save();
            return back()
                ->with('success','File has been uploaded.')
                ->with('file', $fileName);
        }



    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Repertoire  $repertoire
     * @return \Illuminate\Http\Response
     */
    public function show(Repertoire $repertoire)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Repertoire  $repertoire
     * @return \Illuminate\Http\Response
     */
    public function edit(Repertoire $repertoire)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Repertoire  $repertoire
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Repertoire $repertoire)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Repertoire  $repertoire
     * @return \Illuminate\Http\Response
     */
    public function destroy(Repertoire $repertoire)
    {
        $repertoire->delete();

        return redirect(route('repertoire.index'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Repertoire  $repertoire
     * @return \Illuminate\Http\Response
     */
    public function download(Repertoire $repertoire)
    {
        $filePath = $repertoire->path;
        $title = $repertoire->title;
        $filePath = storage_path('app/' . $filePath);
        $headers = [
            'Content-Type' => 'application/pdf',
        ];
        $ext = pathinfo(storage_path().$filePath, PATHINFO_EXTENSION);
        $dot = ".";
        $ext = $dot.$ext;

        return Response::download($filePath, $title.$ext, $headers);

    }
}
