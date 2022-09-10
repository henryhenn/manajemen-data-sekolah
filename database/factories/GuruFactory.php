<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Guru>
 */
class GuruFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'nama' => fake()->name,
            'nip' => fake()->randomNumber(),
            'no_telp' => fake()->phoneNumber,
            'tgl_mulai_mengajar' => fake()->date,
            'alamat' => fake()->address
        ];
    }
}
