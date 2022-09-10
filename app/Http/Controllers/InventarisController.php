<?php

namespace App\Http\Controllers;

use App\Http\Requests\InventarisRequest;
use App\Http\Resources\InventarisResource;
use App\Models\Inventaris;

class InventarisController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $inventaris = Inventaris::latest()->get();

        return inertia('Inventaris/Inventaris', compact('inventaris'));
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
        Inventaris::create($request->validated());

        return redirect()->route('inventaris.index')->with('message', 'Data Inventaris Berhasil Ditambahkan!');
    }

    /**
     * Display the specified resource.
     *
     * @param \App\Models\Inventaris $inventari
     * @return \Illuminate\Http\Response
     */
    public function show(Inventaris $inventari)
    {
        $data = new InventarisResource($inventari);

        return inertia('Inventaris/SingleInventaris', compact('data'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param \App\Models\Inventaris $inventari
     * @return \Illuminate\Http\Response
     */
    public function edit(Inventaris $inventari)
    {
        $inventaris = new InventarisResource($inventari);

        return inertia('Edit', compact('inventaris'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param \App\Models\Inventaris $inventari
     * @return \Illuminate\Http\Response
     */
    public function update(InventarisRequest $request, Inventaris $inventari)
    {
        $inventari->update($request->validated());

        return redirect()->route('inventaris.index')->with('message', 'Data Inventaris Berhasil Diupdate!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \App\Models\Inventaris $inventari
     * @return \Illuminate\Http\Response
     */
    public function destroy(Inventaris $inventari)
    {
        $inventari->delete();

        return redirect()->back()->with('message', 'Data Inventaris Berhasil Dihapus!');
    }
}
