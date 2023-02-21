<?php

namespace Database\Factories;

use App\Models\Etudiant;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

class ForumFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'title' => $this->faker->name(),
            'title_fr' => $this->faker->name(),
            'article' => $this->faker->realText(rand(10,20)),
            'article_fr' => $this->faker->realText(rand(10,20)),
            'forum_user_id' => User::factory('user_id'),
            'forum_etudiant_id' => Etudiant::factory('etudiant_id'),
        ];
    }
}
