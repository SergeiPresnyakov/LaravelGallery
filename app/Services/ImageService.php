<?php

namespace App\Services;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class ImageService
{   
    /**
     * Get all images from DB
     * @return Collection - all images
     */
    public function all()
    {
        $images = DB::table('images')->select('id', 'image')->get();

        return $images->all();
    }

    /**
     * Upload new image to 'uploads'
     * Add new record to DB
     * @param Illuminate\Http\UploadedFile $id
     */
    public function add($file)
    {
        DB::table('images')->insert(['image' => $file->store('uploads')]);
    }

    /**
     * Get one image by ID
     * @param int $id - image ID
     * @return Collection - uploaded image
     */
    public function getOne($id)
    {
        $image = DB::table('images')
            ->select('id', 'image')
            ->where('id', $id)
            ->first();
        
        return $image;
    }

    /**
     * Update image
     * ------------
     * delete old file
     * upload new file
     * update record in DB
     * 
     * @param Illuminate\Http\UploadedFile $id
     */
    public function update($image, $id)
    {
        $fileToDelete = $this->getOne($id);
    
        Storage::delete($fileToDelete->image);
    
        $newPath = $image->store('uploads');
    
        DB::table('images')
            ->where('id', $id)
            ->update(['image' => $newPath]);
    }

    /**
     * Delete file by ID
     * -----------------
     * delete old file from 'uploads'
     * delete record from DB
     * 
     * @param int $id - image ID
     */
    public function delete($id)
    {
        $fileToDelete = $this->getOne($id);
    
        Storage::delete($fileToDelete->image);
    
        DB::table('images')
            ->where('id', $id)
            ->delete();
    }
}