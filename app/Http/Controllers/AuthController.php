<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class AuthController extends Controller
{
    //Login
    public function getLogin(){
        return view('login-logout.login');
    }
    public function postLogin(Request $request){
        $user = $request->only(['email','password']);

        //Xác thực thông tin của user
        if(Auth::attempt($user)){
            // Lưu thông tin user vào session
            session(['user' => Auth::user()]); // Lưu user đang đăng nhập vào session

            if(Auth::user()->role == 'admin'){
                $user = Auth::user();
                $categories = DB::table('categories')->get();

                $books = DB::table('books')->get();
                return view('admin.product.list',compact('user','books','categories'));

            }
            if(Auth::user()->role == 'user'){
                $user = Auth::user();
                $categories = DB::table('categories')->get();

                $books = DB::table('books')->get();
                return view('home',compact('user','books','categories'));
            }
        }else{
            return redirect()->back()->with('message', 'Email hoặc Password không chính xác');
        }
    }

    public function getRegister(){
        return view('login-logout.dk');
    }
    public function postRegister(Request $request){
        $data = $request->validate([
            'username' => ['required','min:3','unique:users'],
            'fullname'=>['required','min:3'],
            'email' => ['required','email'],
            'password' => ['required','min:5'],
            'confirm_password' =>['required','same:password'],
        ]);
        // dd($data);
        User::query()->create($data);

        return redirect()->route('login')->with('message', 'Đăng lý tài khoản thành công');
    }

    public function logout(){
        Auth::logout();
        session()->forget('user');
        return redirect()->route('login');
    }


}