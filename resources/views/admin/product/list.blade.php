@extends('admin.layout')
@section('content')
    <div class="pb-3">
        <a class="btn btn-primary" href="{{route('admin.product.create')}}">Add</a>
    </div>

    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">DataTables Example</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Title</th>
                            <th>Thumbnail</th>
                            <th>Author</th>
                            <th>Publisher</th>
                            <th>Publication</th>
                            <th>Price</th>
                            <th>Quantity</th>
                            <th>Category_id</th>
                            <th>Delete</th>
                            <th>Update</th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th>ID</th>
                            <th>Title</th>
                            <th>Thumbnail</th>
                            <th>Author</th>
                            <th>Publisher</th>
                            <th>Publication</th>
                            <th>Price</th>
                            <th>Quantity</th>
                            <th>Category_id</th>
                            <th>Delete</th>
                            <th>Update</th>
                        </tr>
                    </tfoot>
                    <?php foreach ($books as $book) { ?>
                    <tr>
                        <td>{{ $book->id }} </td>
                        <td>{{ $book->title }}</td>
                        <td>
                            <img src="{{ $book->thumbnail }}" alt="" width="100px" >
                            <img src="{{ asset('storage').'/'.$book->thumbnail }}" alt="" width="100px" >
                        </td>
                        <td>{{ $book->author }}</td>
                        <td>{{ $book->publisher }}</td>
                        <td>{{ $book->Publication }}</td>
                        <td>{{ $book->Price }}</td>
                        <td>{{ $book->Quantity }}</td>
                        <td>{{ $book->Category_id }}</td>
                        <form action="{{ route('admin.product.destroy',$book->id) }}" method="post">
                            @csrf
                            @method('DELETE')
                            <td><button class="btn btn-danger"
                                onclick="return confirm('Ban co muon xoa khong')"><a
                                    >Delete</a></button>
                        </td>
                            
                        </form>
                        <td><button class="btn btn-warning"><a
                                        href="{{route('admin.product.edit',$book->id)}} ">Update</a></button>
                            </td>
                    </tr>
                    <?php } ?>
                </table>
            </div>
        </div>
    </div>
@endsection
