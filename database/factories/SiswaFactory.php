<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Siswa>
 */
class SiswaFactory extends Factory
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
            'kelas_id' => mt_rand(1, 12),
            'nisn' => fake()->randomNumber(),
            'no_telp' => fake()->phoneNumber(),
            'asal_sekolah' => 'SMP Cinta Kasih Tzu Chi',
            'alamat' => fake()->address,
        ];
    }
}
