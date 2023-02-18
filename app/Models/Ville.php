<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Ville extends Model
{
    use HasFactory;



    // public function etudiantHasVille()
    // {
    //     return $this->all('App\Models\Ville', 'id', 'nom');
    // }

    // public function selectUser() {
    //     return $this->select(DB::raw('concat(firstname, " ", lastName) as name'))
    //     ->join("users", "user.id", "=", "user_id")
    //     ->get();
    // }
}
