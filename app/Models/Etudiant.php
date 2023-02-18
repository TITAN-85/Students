<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Etudiant extends Model
{
    use HasFactory;

    protected $fillable = [
        "studentNumber",
    ];

    public function etudiantHasCity() {
        return $this->hasOne('App\Models\Ville', 'id', 'villeId');
    }

 
    // public function selectUser() {
    //     return $this->select(DB::raw('concat(firstname, " ", lastName) as name'))
    //     ->join("users", "user.id", "=", "user_id")
    //     ->get();
    // }
}
