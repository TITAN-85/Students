<?php

namespace App\Http\Controllers;

use App\Models\User;
use Faker\Core\File;
use Illuminate\Http\Request;
use App\Models\Repertoire;
use Illuminate\Support\Facades\Auth;


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
//        dd($files);
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
////        dd($request);
//        $pathFile = $request->path;
////        $nameFile = $request->userfile;
//        $nameFile = $pathFile->getClientOriginalName();
//        dd($nameFile);
//        $pathStore = "public/files/";
//        $pathFile->move($pathFile, $nameFile);
//        $pathFile->storeAs($pathStore, $nameFile);
        $user_id = Auth::user()->id;
//        dd(Auth::user());
        $request->validate([
//            'file' => 'required|mimes:csv,txt,xlx,xls,pdf|max:2048'
            'title' => 'required',
            'title_fr' => 'required',
            'file' => 'required|mimes:csv,doc,xlx,rtf,xls,jpg,jpeg,pdf,zip|max:2048'
        ]);
//        dd($request->title);
        $fileModel = new Repertoire;
        if($request->file) {
            $fileName = time().'_'.$request->file->getClientOriginalName();
            // storageAs save files in storage/app/...
            $filePath = $request->file('file')->storeAs('public/files/uploads/', $fileName);
//            $fileModel->title = time().'_'.$request->file->getClientOriginalName();
//            $fileModel->title_fr = time().'_'.$request->file->getClientOriginalName();
            $fileModel->title = $request->title;
            $fileModel->title_fr = $request->title_fr;
//            $fileModel->path = 'files/' . $filePath;
            $fileModel->path = $filePath;
            $fileModel->repertoires_user_id = $user_id;
            // To delete...
            $file = $request->file('file');
            $file->move(public_path('files/uploads'), $fileName);

//            dd($fileModel);
            $fileModel->save();
            return back()
                ->with('success','File has been uploaded.')
                ->with('file', $fileName);
        }



    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function show(User $user)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function edit(User $user)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, User $user)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $user)
    {
        //
    }    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function download(Request $request)
    {

        return $request;

        $file = File::find($id);
        $link = json_decode($file->link);

//    use Illuminate\Support\Facades\Storage;
//
//        $url = Storage::url('file.jpg');

//        Route::get('/documemt', function () {
//            return Storage::download('tutorial.pdf');
//        });
    }
}
