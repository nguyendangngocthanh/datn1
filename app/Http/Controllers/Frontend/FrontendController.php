<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use App\Models\Orders;
use RealRashid\SweetAlert\Facades\Alert;
use App\Jobs\SendEmail;

class FrontendController extends Controller{
    public function index(Request $request){
        $productList = DB::table('product')
        ->where('deleted',0)
        ->take(12)
        ->get();

        return view('frontend.home')->with(
            [
                'productList' => $productList,
                'mainClass'  => 'hero_area',
                'title' => "Trang chủ - Ngọc Thành Shop"
            ]
            );

    }
    public function showProducts(Request $request)
    {
        $productList = DB::table('product')
        ->where('deleted',0)
        ->paginate(8);
        return view('frontend.category')->with([
            'mainClass' => 'sub_page',
            'title' => "Sản phẩm - Ngọc Thành Shop",
            'productList'=>$productList
        ]);
    }
}
