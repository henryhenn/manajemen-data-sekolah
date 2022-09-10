<?php

namespace Database\Seeders;

use App\Models\Kelas;
use Illuminate\Database\Seeder;

class KelasSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Kelas::create([
            'kelas' => 'X MPLB'
        ]);
        Kelas::create([
            'kelas' => 'X AKL'
        ]);
        Kelas::create([
            'kelas' => 'X PPLG 1'
        ]);
        Kelas::create([
            'kelas' => 'X PPLG 2'
        ]);
        Kelas::create([
            'kelas' => 'XI AKL'
        ]);
        Kelas::create([
            'kelas' => 'XI OTKP'
        ]);
        Kelas::create([
            'kelas' => 'XI RPL 1'
        ]);
        Kelas::create([
            'kelas' => 'XI RPL 2'
        ]);
        Kelas::create([
            'kelas' => 'XII AKL'
        ]);
        Kelas::create([
            'kelas' => 'XII OTKP'
        ]);
        Kelas::create([
            'kelas' => 'XII RPL 1'
        ]);
        Kelas::create([
            'kelas' => 'XII RPL 2'
        ]);
    }
}
