@extends('admin.layout')
@section('content')
<div class="pb-3">
    <a class="btn btn-primary" href="addcate">Add</a>
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
                        <th>Name</th>
                        <th>Xóa</th>
                        <th>Sủa</th>
                      

                    </tr>
                </thead>
                <tfoot>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Xóa</th>
                        <th>Sủa</th>
                    </tr>
                </tfoot>
                <?php foreach ($cate as $key => $value) { ?>
                    <tr>
                        <td><?= $value['id'] ?></td>
                        <td><?= $value['name'] ?></td>
                        <td><button class="btn btn-danger"
                                onclick="return confirm('Ban co muon xoa khong')"><a
                                    href="delcate&id=<?= $value['id'] ?>">Delete</a></button>
                        </td>
                        <td><button class=" btn btn-warning"><a
                                    href="updatecate&id=<?= $value['id'] ?> ">Update</a></button>
                        </td>
                        
                    </tr>
                <?php } ?>
            </table>
        </div>
    </div>
</div>
@endsection