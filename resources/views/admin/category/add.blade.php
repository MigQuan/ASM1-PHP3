@extends('admin.layout')
@section('content')
<div class="container">
    <h1>Trang thêm sản Danh mục sản phẩm</h1>
    <form action="add-cate" method="post">
        <div class="form-group">
            <div class="mb-3">
                <label class="form-label">Name</label>
                <input type="text" class="form-control" name="name">
            </div>
            </div>
            <button type="submit" class="btn btn-primary" name="save">Submit</button>
            <a href=""></a>
        </div>
    </form>
</div>
@endsection