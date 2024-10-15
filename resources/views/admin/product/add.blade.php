@extends('admin.layout')
@section('content')
<div class="container">
    <h1>Trang thêm sản phẩm</h1>
    <form action="{{route('admin.product.store')}}" method="post" enctype="multipart/form-data">
        @csrf
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
                <input type="text" class="form-control" name="title">
            </div>
            <div class="mb-3">
                <label class="form-label">thumbnail</label>
                <input type="file" class="form-control" name="thumbnail">
            </div>
            <div class="mb-3">
                <label class="form-label">author</label>
                <input type="text" class="form-control" name="author">
            </div>
            <div class="mb-3">
                <label class="form-label">publisher</label>
                <input type="text" class="form-control" name="publisher">
            </div>
            <div class="mb-3">
                <label class="form-label">Price</label>
                <input type="text" class="form-control" name="Price">
            </div>
            <div class="mb-3">
                <label class="form-label">Quantity</label>
                <input type="number" class="form-control" name="Quantity" >
            </div>
            
            <button type="submit" class="btn btn-primary" name="save">Submit</button>
            <a href=""></a>
        </div>
    </form>
</div>
@endsection