@extends('layout')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <h1>Add image</h1>
                <form action="/store" enctype="multipart/form-data" class="form-control" method="post">
                    {{ csrf_field() }}
                    <div class="mb-3">
                        <label for="formFile" class="form-label">Select the image</label>
                        <input class="form-control" type="file" id="formFile" name="image">
                      </div>
                     <button type="submit" class="btn btn-success">Submit</button>
                </form>
            </div>
        </div>
    </div>
@endsection