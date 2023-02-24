<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Etudiant extends Model
{
    use HasFactory;

    protected $fillable = [
        "number",
    ];

//    public function etudiantHasCity() {
//        return $this->hasOne('App\Models\Ville', 'id', 'user_ville_id');
//    }
//    public function studentHasNumber() {
//        return $this->hasOne('App\Models\Etudiant', 'id', 'user_ville_id');
//    }

    // public function selectUser() {
    //     return $this->select(DB::raw('concat(firstname, " ", lastName) as name'))
    //     ->join("users", "user.id", "=", "user_id")
    //     ->get();
    // }
}
