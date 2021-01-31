@extends('layout')

@section('content')
<div class="container">
    <h1 align="center">My Gallery</h1>

    <div class="row">

        @foreach($images as $image)
        <div class="col-md-4 gallery-item">
            <div>
                <img src="/{{$image->image}}" alt="keyboard logitech" class="img-thumbnail">
            </div>
            <a href="/show/{{$image->id}}" class="btn btn-info">View image</a>
            <a href="/edit/{{$image->id}}" class="btn btn-warning">Change image</a>
            <a href="/delete/{{ $image->id }}" onclick="return confirm('Delete this image?')" class="btn btn-danger">Delete image</a>
        </div>
        @endforeach

    </div>

</div>
@endsection

