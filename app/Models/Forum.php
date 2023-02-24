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
}
