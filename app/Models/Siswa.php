<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Siswa extends Model
{
    use HasFactory;

    protected $table = 'siswa';

    protected $with = 'kelas';

    protected $guarded = [
        'id',
        'created_at',
        'updated_at',
    ];

    public function kelas():BelongsTo
    {
        return $this->belongsTo(Kelas::class);
    }
}
