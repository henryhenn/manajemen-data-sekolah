<?php

namespace App\Http\Controllers;

use App\Http\Requests\InventarisRequest;
use App\Http\Resources\SarprasResource;
use App\Models\Sarpras;

class SarprasController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $inventaris = Sarpras::latest()->get();

        return inertia('Sarpras/Sarpras', compact('inventaris'));
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
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(InventarisRequest $request)
    {
        Sarpras::create($request->validated());

        return redirect()->route('sarpras.index')->with('message', 'Data Sarpras Berhasil Ditambahkan!');
    }

    /**
     * Display the specified resource.
     *
     * @param \App\Models\Sarpras $inventari
     * @return \Illuminate\Http\Response
     */
    public function show(Sarpras $inventari)
    {
        $data = new SarprasResource($inventari);

        return inertia('Sarpras/SingleSarpras', compact('data'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param \App\Models\Sarpras $inventari
     * @return \Illuminate\Http\Response
     */
    public function edit(Sarpras $inventari)
    {
        $sarpras = new SarprasResource($inventari);

        return inertia('Edit', compact('sarpras'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param \App\Models\Sarpras $inventari
     * @return \Illuminate\Http\Response
     */
    public function update(InventarisRequest $request, Sarpras $inventari)
    {
        $inventari->update($request->validated());

        return redirect()->route('sarpras.index')->with('message', 'Data Sarpras Berhasil Diupdate!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \App\Models\Sarpras $inventari
     * @return \Illuminate\Http\Response
     */
    public function destroy(Sarpras $inventari)
    {
        $inventari->delete();

        return redirect()->back()->with('message', 'Data Sarpras Berhasil Dihapus!');
    }
}
