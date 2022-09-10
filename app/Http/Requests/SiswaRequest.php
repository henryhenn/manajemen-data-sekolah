<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class SiswaRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
            'nama' => 'required|max:100|string',
            'kelas_id' => 'required',
            'nisn' => 'required',
            'no_telp' => 'required',
            'asal_sekolah' => 'required|max:100',
            'alamat' => 'required|max:255',
        ];
    }
}
