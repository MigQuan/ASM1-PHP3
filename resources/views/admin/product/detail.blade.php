@extends('admin.layout')
@section('content')
<div class="container mt-5">
    <h2>Form Chi Tiết Sản Phẩm</h2>
    <form action="/path/to/your/submit" method="POST">
        <div class="form-group">
            <label for="productName">Tên Sản Phẩm: {{$product['name_products']}}</label>
        </div>

        <div class="form-group">
            <label for="productPrice">Giá: {{$product['price']}}</label>
        </div>

       
        <div class="form-group">
            <label for="productPrice">Tên Danh Mục: {{$product['name']}}</label>
        </div>

    </form>
</div>
@endsection