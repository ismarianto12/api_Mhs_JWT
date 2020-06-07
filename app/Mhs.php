<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Mhs extends Model
{
    protected $fillable = [
        'nama',
        'email',
        'jk',
        'jurusan_id',
    ];
}
