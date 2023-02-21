<?php

namespace App\Http\Controllers;

use App\Models\Etudiant;
use App\Models\Ville;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\User;

class EtudiantController extends Controller
{
        /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index() {
        // $etudiants = Etudiant::all();
        // return view('etudiant.index', ['etudiants' => $etudiants]);

        $etudiants = User::select()->paginate(15);
        dd($etudiants);
        return view('etudiant.index', ['etudiants' => $etudiants]);
    }


   /**
     * Display the specified resource.
     *
     * @param  \App\Models\Etudiant  $etudiant
     * @return \Illuminate\Http\Response
     */
    public function show(Etudiant $etudiant)
    {

        return view("etudiant.show", ["etudiant" => $etudiant]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Etudiant  $etudiant
     * @return \Illuminate\Http\Response
     */
    public function edit(Etudiant $etudiant) {

        $villes = Ville::all();

        return view('etudiant.edit', [
            'etudiant' => $etudiant,
            'villes' => $villes
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Etudiant  $etudiant
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Etudiant $etudiant)
    {
        $etudiant->update([
            "nom"             =>  $request->etudiantNom,
            "adresse"         =>  $request->etudiantAdresse,
            "phone"           =>  $request->etudiantPhone,
            "email"           =>  $request->etudiantEmail,
            "dateDeNaissance" =>  $request->etudiantDateDeNaissance,
            "villeId"         =>  $request->etudiantVille
        ]);
        return redirect(route('etudiant.show', $etudiant->id));
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Etudiant  $etudiant
     * @return \Illuminate\Http\Response
     */
    public function destroy(Etudiant $etudiant)
    {
        $etudiant->delete();
        return redirect(route('etudiant.index'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $villes = Ville::all();

        return view("etudiant.create", [
            'villes' => $villes
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $newEtudiant = Etudiant::create([
            "nom"             =>  $request->etudiantNom,
            "adresse"         =>  $request->etudiantAdresse,
            "phone"           =>  $request->etudiantPhone,
            "email"           =>  $request->etudiantEmail,
            "dateDeNaissance" =>  $request->etudiantDateDeNaissance,
            "villeId"         =>  $request->etudiantVille
        ]);
        return redirect(route('etudiant.show', $newEtudiant->id));
    }




}
