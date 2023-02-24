<?php

namespace App\Http\Controllers;

use App\Models\Etudiant;
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

//        $users = User::all();
//        select * from forums inner JOIN users on forums.forum_user_id = users.id;

//          select * from forums
//          left JOIN  users on
//          forums.forum_user_id = users.id
//          left JOIN  etudiants on
//          etudiants.id = users.user_etudiant_id

;
//        $articles = Forum::select()
//                 ->leftjoin("users", "forum_user_id", "=", "users.id")
//                 ->rightjoin("etudiants", "etudiants.id", "=", "users.user_etudiant_id")
//                 ->rightjoin("forums",  "forum_user_id", "=", "users.id")
//                 ->get();
//        $forumId = Forum::select('id')->get();
//        $articles = $forumId;
//        dd($articles);
//        $articles = User::select()
//            ->leftjoin("forums", "users.id", "=",  "forum_user_id")
//            ->join("etudiants", "users.id", "=", "user_etudiant_id")
//            ->get();

//        dd($etudiant);

//        $articles = User::select()
//            ->rightjoin("forums", "forum_user_id", "=", "users.id")
//            ->get();

//        dd($usersForum);
//        return $articles;
//        dd($articles);
//        $user = User::select('id')->get();
//        dd($user);


        $articles = Forum::all();
        $etudiant = Etudiant::all();
        $userConnected = Auth::user()->id;
//        dd($etudiant);
        return view('forum.index', [
                                        'articles' => $articles,
                                        'userConnected' => $userConnected,
                                        'etudiant' => $etudiant
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

        $user = User::select()->where("id", "=", $forum->id )->get();
//        dd($forum);
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
//        dd($forum);
        return view('forum.edit', [
            'article' => $forum
        ]);
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
        $forum->update([
            "title"             =>  $request->titleForumEn,
            "title_fr"          =>  $request->titleForumFr,
            "article"           =>  $request->ArticleForumEn,
            "article_fr"        =>  $request->ArticleForumFr,
            "forum_user_id"     =>  $request->forum_user_id
        ]);
        return redirect(route('forum.show', $forum->id));
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
