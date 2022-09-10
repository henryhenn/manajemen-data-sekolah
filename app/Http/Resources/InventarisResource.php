<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class InventarisResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'nama' => $this->nama,
            'image' => $this->image,
            'jumlah' => $this->jumlah,
            'harga_satuan' => $this->harga_satuan,
            'tgl_pembelian' => $this->tgl_pembelian,
            'status' => $this->status,
        ];
    }
}
