<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class BooksController extends Controller
{
    public function index(){
        // Lấy danh sách danh mục
        $categories = DB::table('categories')->get();
    
        // Lấy danh sách bài viết và phân trang tự động
        $books = DB::table('books')
        ->limit(20)
        ->get();
    
        return view('home', compact('categories', 'books'));
    }
    public function list($id){
        $books = DB::table('books')
            ->where('Category_id',$id)
            ->get();
        $categoryname = DB::table('categories')
            ->where('id',$id)
            ->first();


            $bookPerPage = 9; // Số bài viết hiển thị trên mỗi trang
            $books = DB::table('books')->paginate($bookPerPage);
        return view('book_list',compact('books','categoryname'));
    }
public function detail($id){
        $book = DB::table('books')
            ->where('id',$id)
            ->first();

            return view('book_detail',compact('book'));
    }
    
}

