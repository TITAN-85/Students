<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Repertoire extends Model
{
    use HasFactory;

    protected $fillable = [
        "title",
        "title_fr",
        "path",
        'repertoires_user_id',
    ];
}
