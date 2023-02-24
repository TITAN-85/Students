<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Forum extends Model
{
    use HasFactory;

    protected $fillable = [
        "title",
        "title_fr",
        "article",
        "article_fr",
        "forum_user_id",
    ];

    public function studentHasNumber() {
        return $this->hasOne('App\Models\Etudiant', 'id', 'user_etudiant_id');
//        return $this->belongsTo(Etudiant::class);
    }
}
