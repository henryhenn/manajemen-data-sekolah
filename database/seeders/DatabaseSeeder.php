<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\Guru;
use App\Models\Sarpras;
use App\Models\Siswa;
use App\Models\User;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        Siswa::factory(100)->create();
        Guru::factory(100)->create();
        Sarpras::factory(50)->create();
        $this->call(KelasSeeder::class);

        User::create([
            'name' => 'Henry Salim',
            'email' => 'henry@email.tes',
            'password' => bcrypt('password')
        ]);
    }
}
