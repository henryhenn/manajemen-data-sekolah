<?php

namespace App\Http\Controllers;

use App\Http\Requests\GuruRequest;
use App\Http\Resources\GuruResource;
use App\Models\Guru;

class GuruController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $guru = Guru::latest()->get();

        return inertia('Guru/Guru', compact('guru'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return inertia('CreateForm');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(GuruRequest $request)
    {
        Guru::create($request->validated());

        return redirect()->route('guru.index')->with('message', 'Data Guru Berhasil Ditambahkan!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $guru = new GuruResource(Guru::findOrFail($id));

        return inertia('Guru/SingleGuru', compact('guru'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $guru = new GuruResource(Guru::findOrFail($id));

        return inertia('Edit', compact('guru'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(GuruRequest $request, $id)
    {
        $data = $request->validated();
        Guru::where('id', $id)->update($data);

        return redirect()->route('guru.index')->with('message', 'Data Guru Berhasil Diupdate!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Guru::findOrFail($id)->delete();

        return redirect()->back()->with('message', 'Data Guru Berhasil Dihapus!');
    }
}
