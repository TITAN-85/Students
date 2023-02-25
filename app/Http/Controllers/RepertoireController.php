<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class RepertoireController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('repertoire.index');
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
//        dd($request);

        $pathFile = $request->path;
//        $nameFile = $request->userfile;
        $nameFile = $pathFile->getClientOriginalName();
        dd($nameFile);
        $pathStore = "public/files/";
        $pathFile->move($pathFile, $nameFile);
        $pathFile->storeAs($pathStore, $nameFile);

//        $nom_fichier = $_FILES['userfile']['name'];
//
//        $fichier = $_FILES['userfile']['tmp_name'];
//        move_uploaded_file($fichier, "assets/jpeg/timbres/" . $nom_fichier);
//
//        // echo "<pre>" . print_r($derniereEnchereId, onntrue) . "<pre>"; exit;
//        $retour = $this->oRequetesSQL->ajouterImage([
//            'image_url'         => $nom_fichier,
//            'image_timbre_id'   => $retour
//        ]);

//StoreAs()

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
    public function download(User $user)
    {
//    use Illuminate\Support\Facades\Storage;
//
//        $url = Storage::url('file.jpg');
    }
}
