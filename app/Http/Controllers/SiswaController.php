<?php
namespace App\Http\Controllers;

use App\Http\Requests\SiswaRequest;
use App\Http\Resources\SiswaResource;
use App\Models\Kelas;
use App\Models\Siswa;

class SiswaController extends Controller
{
    public function index()
    {
        $siswa = SiswaResource::collection(Siswa::latest()->get());

        return inertia('Siswa/Siswa', compact('siswa'));
    }

    public function show(Siswa $siswa)
    {
        return inertia('Siswa/SingleSiswa', compact('siswa'));
    }

    public function destroy(Siswa $siswa)
    {
        $siswa->delete();

        return redirect()->back()->with('message', 'Data Siswa Berhasil Dihapus!');
    }

    public function edit(Siswa $siswa)
    {
        $kelas = Kelas::all();
        $data = new SiswaResource($siswa);

        return inertia('Edit', compact(['data', 'kelas']));
    }

    public function update(SiswaRequest $request, Siswa $siswa)
    {
        $siswa->update($request->validated());

        return redirect()->route('siswa.index')->with('message', 'Data Siswa Berhasil Diupdate!');
    }

    public function create()
    {
        $kelas = Kelas::all();

        return inertia('CreateForm', compact('kelas'));
    }

    public function store(SiswaRequest $request)
    {
        Siswa::create($request->validated());

        return redirect()->route('siswa.index')->with('message', 'Data Siswa Berhasil Ditambahkan!');
    }
}
