<?php

namespace Database\Factories;

use App\Models\Etudiant;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;
use App\Models\Ville;


class UserFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $villesId = Ville::pluck('id')->toArray();
//        $etudiantId = Etudiant::pluck('id')->toArray();
//        TODO task: user(etudiant) magration
        return [
            'name' => $this->faker->name(),
            'email' => $this->faker->unique()->safeEmail(),
            'email_verified_at' => now(),
            'password' => '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', // password
            'remember_token' => Str::random(10),
            'adresse' => $this->faker->streetAddress,
            'phone' => $this->faker->tollFreePhoneNumber,
            'dateDeNaissance' => $this->faker->dateTimeThisCentury->format('Y-m-d'),
            'villeId' => $this->faker->randomElement($villesId),
            'etudiantId' => $this->faker->Etudiant::class()
        ];
    }

    /**
     * Indicate that the model's email address should be unverified.
     *
     * @return \Illuminate\Database\Eloquent\Factories\Factory
     */
    public function unverified()
    {
        return $this->state(function (array $attributes) {
            return [
                'email_verified_at' => null,
            ];
        });
    }
}
