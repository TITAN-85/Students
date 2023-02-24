<?php

namespace App\Http\Controllers;

use App\Models\Forum;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Auth;


class ForumController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
//        $articles = Forum::select();
//        $articles = Forum::all();
//        $users = User::all();
//        select * from forums inner JOIN users on forums.forum_user_id = users.id;
        $articles = Forum::select()
                 ->join("users", "forum_user_id", "=", "users.id")
                 ->get();
//        return $articles;
//        dd($articles);
//        $user = User::select('id')->get();
//        dd($user);
            $userConnected = Auth::user()->id;
//            dd($userConnected);

//        dd($articles);
//        var_dump($articles);
        return view('forum.index', [
                                        'articles' => $articles,
                                        'userConnected' => $userConnected
                                        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
//        return view('forum.create');
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
//        return $request;
        $newArticle = Forum::create([
            "title"             =>  $request->titleForumEn,
            "title_fr"          =>  $request->titleForumFr,
            "article"           =>  $request->ArticleForumEn,
            "article_fr"        =>  $request->ArticleForumFr,
            "forum_user_id"     =>  $request->userConnected
        ]);
        return redirect(route('forum.index'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Forum  $forum
     * @return \Illuminate\Http\Response
     */
    public function show(Forum $forum)
    {
        return $forum;
//        $articles = Forum::select()
//            ->join("users", "forum_user_id", "=", "users.id")
//            ->get();
//        dd($forum);

//        "id" => 3
//        "title" => "Antoinette D'Amore"
//        "title_fr" => "Savanna Robel DDS"
//        "article" => "Was kindly."
//        "article_fr" => "Majesty,' said."
//        "forum_user_id" => 3
//        "created_at" => "2023-02-21 16:52:15"
//        "updated_at" => "2023-02-21 16:52:15"

        $user = User::select()->where("id", "=", $forum->id )->get();
//        "id" => 5
//        "name" => "Raoul Dibbert"
//        "email" => "jared.klein@example.net"
//        "email_verified_at" => "2023-02-21 16:50:42"
//        "password" => "$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi"
//        "remember_token" => "vq7C98wbn5"
//        "adresse" => "268 Satterfield Field Suite 889"
//        "phone" => "844.603.0155"
//        "birthday" => "1982-02-15"
//        "user_ville_id" => 9
//        "user_etudiant_id" => 5
//        "created_at" => "2023-02-21 16:50:42"
//        "updated_at" => "2023-02-21 16:50:42"
//        "temp_password" => null
        dd($forum);
        return view( 'forum.show', ['article' => $forum, 'user' => $user]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Forum  $forum
     * @return \Illuminate\Http\Response
     */
    public function edit(Forum $forum)
    {
//        return view('etudiant.edit', [
//            'etudiant' => $etudiant,
//            'villes'   => $villes
//        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Forum  $forum
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Forum $forum)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Forum  $forum
     * @return \Illuminate\Http\Response
     */
    public function destroy(Forum $forum)
    {
        $forum->delete();
        return redirect(route('forum.index'));
    }
}
