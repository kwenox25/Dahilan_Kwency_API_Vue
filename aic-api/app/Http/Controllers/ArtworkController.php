<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Artwork;


class ArtworkController extends Controller {
    /**
     * Create a new controller instance.
     *
     * @return void
     */

     public function getAll() {
         $artworks = Artwork::all();
         return response()->json($artworks);
     }

     public function getOne($id) {
         $artwork = Artwork::find($id);
         return response()->json($artwork);
     }

     public function save(Request $request) {
        $this->validate($request, [
            'title' => 'required',
            'artist_id' => 'required',
            'artwork_thumbnail' => 'required',
            'place' => 'required',
            'published_date' => 'required',
            'medium' => 'required',
            'dimensions' => 'required',
            'description' => 'required'
        ]);
        $artwork = Artwork::create($request->all());
        return response()->json($artworks, 201);
    }
    
    
    
    public function update(Request $request, $id) {
        $artwork = Artwork::findOrFail($id);
    
        $this->validate($request, [
            'title' => 'required',
            'artist_id' => 'required',
            'artwork_thumbnail' => 'required',
            'place' => 'required',
            'published_date' => 'required',
            'medium' => 'required',
            'dimensions' => 'required',
            'description' => 'required'
        ]);
        $artwork->update($request->all());
        return response()->json($artwork);
    }
    
    
    public function delete($id) {
        $artwork = Artwork::findOrFail($id);
        $artwork->delete();
        return response()->json(null, 204);
    }
    
    
 

}
