<?php

namespace App\Http\Controllers;

use App\Http\Resources\GuruResource;
use App\Http\Resources\SarprasResource;
use App\Http\Resources\KaryawanResource;
use App\Http\Resources\SiswaResource;
use App\Models\Guru;
use App\Models\Sarpras;
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
            'inventaris' => SarprasResource::collection(Sarpras::latest()->take(10)->get()),
        ]);
    }
}
