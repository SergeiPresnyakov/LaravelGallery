<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Services\ImageService;

class ImagesController extends Controller
{   
    /**
     * @var ImageService
     */
    private $images;

    public function __construct(ImageService $imageService)
    {
        $this->images = $imageService;
    }

    /**
     * index page
     */
    public function index() 
    {
        return view('welcome', ['images' => $this->images->all()]);
    }

    /**
     * create form
     */
    public function create() 
    {
        return view('create');
    }

    /**
     * save new image to 'uploads' and add record to DB
     * @param Request
     */
    public function store(Request $request) 
    {
        $newImage = $request->file('image');
        $this->images->add($newImage);
    
        return redirect('/');
    }

    /**
     * show image in full size
     * @param int $id - image ID
     */
    public function show($id)
    {
        $imageToShow = $this->images->getOne($id);

        return view('show', ['imageInView' => $imageToShow->image]);
    }

    /**
     * change image form
     * @param int $id - image ID
     */
    public function edit($id) 
    {
        return view('edit', ['imageInView' => $this->images->getOne($id)]);
    }

    /**
     * update image
     * @param Request
     * @param int $id - image ID
     */
    public function update(Request $request, $id) 
    {   
        $this->images->update($request->image, $id);
    
        return redirect('/');
    }

    /**
     * delete image
     * @param int $id - image ID
     */
    public function delete($id) 
    {
        $this->images->delete($id);
    
        return redirect('/');
    }
}
