<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class EtudiantFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {

        return [
//            'studentNumber' => $this->faker->randomNumber(10, true)
            // 'studentNumber' => $this->faker->mt_getrandmax()(10, true)
            'etudiant_nr' => $this->faker->numerify('##########')
        ];
    }
}
