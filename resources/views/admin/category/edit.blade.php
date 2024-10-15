@extends('admin.layout')
@section('content')

<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Tables</h1>
    <p class="mb-4">DataTables is a third party plugin that is used to generate the demo table below.
        For more information about DataTables, please visit the <a target="_blank"
            href="https://datatables.net">official DataTables documentation</a>.</p>

    <!-- DataTales Example -->
    <div class="container">
        <h1>Trang Edit Danh Mục</h1>
        <form action="updatecate" method="post">
            <div class="form-group">
                <label for="productCategory">Danh mục sản phẩm</label>
                <div class="mb-3">
                    <label class="form-label">Name</label>
                    <input type="text" class="form-control" name="name" value="<?=$product['name']?>" >
                </div>
                <input type="hidden" name="id" value="<?=$product['id']?>">
                <button type="submit" class="btn btn-primary" name="update">Submit</button>
                <a href=""></a>
            </div>
        </form>
    </div>

</div>
@endsection