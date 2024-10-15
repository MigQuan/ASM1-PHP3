@extends('admin.layout')
@section('content')
<div class="container">
    <h1>Trang edit sản phẩm</h1>
    <form action="{{route('admin.product.update',$book->id)}}" method="post" enctype="multipart/form-data">
        @csrf
        @method('PUT')
        <div class="form-group">
            <label for="productCategory">Danh mục sản phẩm</label>
            <select name="Category_id" class="form-control">
                @foreach ($categories as $category)
                    <option value="{{$category->id}}">
                        {{$category->name}}
                    </option>
                @endforeach
            </select>
            <div class="mb-3">
                <label class="form-label">title</label>
                <input type="text" class="form-control" name="title" value="{{$book->title}}">
            </div>
            <div class="mb-3">
                <label class="form-label">thumbnail</label>
                <input type="file" class="form-control" name="thumbnail" >
            </div>
            <div class="mb-3">
                <label class="form-label">author</label>
                <input type="text" class="form-control" name="author" value="{{$book->author}}">
            </div>
            <div class="mb-3">
                <label class="form-label">publisher</label>
                <input type="text" class="form-control" name="publisher" value="{{$book->publisher}}">
            </div>
            <div class="mb-3">
                <label class="form-label">Price</label>
                <input type="text" class="form-control" name="Price" value="{{$book->Price}}">
            </div>
            <div class="mb-3">
                <label class="form-label">Quantity</label>
                <input type="number" class="form-control" name="Quantity" value="{{$book->Quantity}}">
            </div>
            
            <button type="submit" class="btn btn-primary" name="save">Submit</button>
            <a href=""></a>
        </div>
    </form>
</div>
@endsection