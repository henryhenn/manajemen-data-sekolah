<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class SiswaResource extends JsonResource
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
            'kelas' => new KelasResource($this->whenLoaded('kelas')),
            'nisn' => $this->nisn,
            'no_telp' => $this->no_telp,
            'asal_sekolah' => $this->asal_sekolah,
            'alamat' => $this->alamat,
        ];
    }
}
