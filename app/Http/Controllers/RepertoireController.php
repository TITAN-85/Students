<?php

namespace App\Http\Controllers;

use App\Models\User;
use Faker\Core\File;
//use http\Env\Response;
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

        $user_id = Auth::user()->id;
        $request->validate([
//            'file' => 'required|mimes:csv,txt,xlx,xls,pdf|max:2048'
            'title' => 'required',
            'title_fr' => 'required',
            'file' => 'required|mimes:csv,doc,xlx,rtf,xls,jpg,jpeg,pdf,zip|max:2048'
        ]);
        $fileModel = new Repertoire;
        if($request->file) {
            /* save to storage/app */
            $fileName = time().'_'.$request->file->getClientOriginalName();
            $filePath = $request->file('file')->storeAs('/files/uploads', $fileName);
//            $fileModel->title = time().'_'.$request->file->getClientOriginalName();
//            $fileModel->title_fr = time().'_'.$request->file->getClientOriginalName();
            $fileModel->title = $request->title;
            $fileModel->title_fr = $request->title_fr;
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
    public function download(Repertoire $repertoire)
    {
//    dd($repertoire);
        $filePath = $repertoire->path;
        $title = $repertoire->title;

//        $filePath = public_path('files/example.pdf');
//        $filename = $repertoire->id;
        $filePath = storage_path('app/' . $filePath);
//        dd($filename);
//        dd($filePath);
        $headers = [
            'Content-Type' => 'application/pdf',
        ];
//        dd($filePath);
        return Response::download($filePath, $title, $headers);

//        $file = File::find($id);
//        $link = json_decode($file->link);

//    use Illuminate\Support\Facades\Storage;
//
//        $url = Storage::url('file.jpg');

//        Route::get('/documemt', function () {
//            return Storage::download('tutorial.pdf');
//        });
    }
}
