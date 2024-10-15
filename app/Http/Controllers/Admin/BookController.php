<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\book;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class BookController extends Controller
{
    public function List(){
        //danh sách bài viết phân trang
        $books = book::query()->orderBy('id','desc')->get();
        // $books = $books->paginate(10);
        return view('admin.product.list', compact('books'));
    }

    public function showPost(book $book ){
        //hiển thị bài viết
        return view('admin.product.list', compact('books'));
    }

    public function createPost(){
        //hiển thị trang tạo mới bài viết
        return view('admin.product.add');
    }

    public function storePost(Request $request){
        $data = $request->except('thumbnail');
        $path = '';
        //khi có hình ảnh
        if($request->hasFile('thumbnail')){
            $path = $request->file('thumbnail')->store('thumbnails');

        }
        
        //Đưa đường dẫn hình vào data
        $data['thumbnail'] = $path;

        // dd($data);
        //Insert data
        book::query()->create($data);

        return redirect()->route('admin.product.index')->with('message', 'Bài viết đã được tạo thành công!');

    }
    public function editPost(book $book){
        //hiển thị trang sửa bài viết
        return view('admin.product.edit', compact('book'));
    }
    public function updatePost(Request $request, book $book){
       

        $data = $request->except('thumbnail');

        //xóa hình ảnh cũ
        if($request->hasFile('thumbnail') && $book->thumbnail){
            Storage::delete($book->thumbnail);
        }

        //khi chưa có hình ảnh
        $path = $book->thumbnail;
        //khi có hình ảnh
        if($request->hasFile('thumbnail')){
            $path = $request->file('thumbnail')->store('thumbnails');
        }
        //Đưa đường dẫn hình vào data
        $data['thumbnail'] = $path;

        //Cập nhật data
        $book->update($data);

        return redirect()->route('admin.product.index')->with('message', 'Bài viết đã được cập nhật thành công!');
    }
    public function destroyPost(book $book){
        //xóa hình ảnh cũ
        if($book->thumbnail){
            Storage::delete($book->thumbnail);
        }
        //xóa bài viết
        $book->delete();

        return redirect()->route('admin.product.index')->with('message', 'Bài viết đã được xóa thành công!');
    }





    public function toggleStatus(Request $request, book $post)
{
    // dd($request->status);
    // Cập nhật trạng thái của người dùng
    $post->status = $request->status;
    $post->save();

    return redirect()->back()->with('message', 'Trạng thái bài viết đã được cập nhật!');
}
}
