<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Inventaris>
 */
class InventarisFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'nama' => fake()->sentence,
            'jumlah' => fake()->numberBetween(1,200),
            'harga_satuan' => fake()->randomNumber(5, true),
            'tgl_pembelian' => fake()->date,
            'status' => 'Layak Pakai'
        ];
    }
}
