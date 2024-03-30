<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Artwork extends Model
{
     /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['title','artist_id','artwork_thumbnail','place','published_date','medium','dimensions','description'];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = [];
}
