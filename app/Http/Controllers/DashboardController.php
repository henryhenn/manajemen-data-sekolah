<?php

namespace App\Http\Controllers;

use App\Http\Resources\GuruResource;
use App\Http\Resources\InventarisResource;
use App\Http\Resources\KaryawanResource;
use App\Http\Resources\SiswaResource;
use App\Models\Guru;
use App\Models\Inventaris;
use App\Models\Karyawan;
use App\Models\Siswa;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index()
    {
        return inertia('Dashboard', [
            'siswa' => SiswaResource::collection(Siswa::latest()->take(10)->get()),
            'guru' =>GuruResource::collection(Guru::latest()->take(10)->get()),
            'karyawan' => KaryawanResource::collection(Karyawan::latest()->take(10)->get()),
            'inventaris' => InventarisResource::collection(Inventaris::latest()->take(10)->get()),
        ]);
    }
}
