<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Jobs\SendEmail;
use App\Models\Orders;
use DB;
use Illuminate\Http\Request;

class FrontendController extends Controller
{

    public function category($slug = "")
    {
        $category = DB::table('category')->whereHrefParam($slug)->first();
        if (!$category) {
            abort(404);
        }
        $productList = DB::table('product')->whereCategoryId($category->id)->whereDeleted(false)->paginate(9);
        $categoryList = DB::table('category')->get();

        return view('frontend.category')->with([
            'mainClass' => 'sub_page',
            'title' => $category->name . '- Ngọc Thành Store',
            'productList' => $productList,
            'categoryList' => $categoryList,
            'cartNum' => $this->getCartNum(),
        ]);
    }
    public function index(Request $request)
    {
        $productList = DB::table('product')
            ->where('category_id', 1)
            ->take(10)
            ->get();
        $productList2 = DB::table('product')
            ->where('category_id', 2)
            ->take(10)
            ->get();
        $productList3 = DB::table('product')
            ->where('category_id', 5)
            ->take(10)
            ->get();
        $productList4 = DB::table('product')
            ->where('category_id', 6)
            ->take(10)
            ->get();
        $productList5 = DB::table('product')
            ->where('category_id', 8)
            ->take(10)
            ->get();
        $productList6 = DB::table('product')
            ->where('category_id', 9)
            ->take(10)
            ->get();
        return view('frontend.home')->with([
            'productList' => $productList,
            'productList2' => $productList2,
            'productList3' => $productList3,
            'productList4' => $productList4,
            'productList5' => $productList5,
            'productList6' => $productList6,
            'mainClass' => 'hero_area',
            'title' => 'Ngọc Thành Store',
            'cartNum' => $this->getCartNum(),
        ]);
    }


    public function showProducts(Request $request)
    {
        $query = DB::table('product')->where('deleted', 0);

        if ($request->has('min_price')) {
            $minPrice = (int) $request->input('min_price');
            $query->where('price', '>=', $minPrice);
        }

        if ($request->has('max_price')) {
            $maxPrice = (int) $request->input('max_price');
            $query->where('price', '<=', $maxPrice);
        }

        $productList = $query->paginate(8);
        $categoryList = DB::table('category')->take(10)->get();

        return view('frontend.category')->with([
            'mainClass' => 'sub_page',
            'title' => 'Sản Phẩm - Ngọc Thành Store',
            'productList' => $productList,
            'categoryList' => $categoryList,
            'cartNum' => $this->getCartNum(),
            'minPrice' => $request->input('min_price'), // Truyền lại min_price cho view
            'maxPrice' => $request->input('max_price'), // Truyền lại max_price cho view
        ]);
    }





    public function showDetail(Request $request, $id, $href_param)
    {
        $detail = DB::table('product')
            ->where('deleted', 0)
            ->where('id', $id)
            ->get();
        if ($detail == null || count($detail) == 0) {
            return view('frontend.error')->with([
                'mainClass' => 'sub_page',
                'title' => 'Không tồn tại - Ngọc Thành Store',
                'cartNum' => $this->getCartNum(),
            ]);
        }

        $productList = DB::table('product')
            ->where('deleted', 0)
            ->paginate(8);
        return view('frontend.detail')->with([
            'mainClass' => 'sub_page',
            'title' => $detail[0]->title,
            'detail' => $detail[0],
            'productList' => $productList,
            'cartNum' => $this->getCartNum(),
        ]);
    }

    public function showNews(Request $request)
    {
        $newsList = DB::table('news')
            ->where('deleted', 0)
            ->paginate(8);

        return view('frontend.news', [
            'mainClass' => 'sub_page',
            'title' => 'Tin Tức - Ngọc Thành Store',
            'newsList' => $newsList,
            'cartNum' => $this->getCartNum(),
        ]);
    }



    public function showPost(Request $request, $id, $href_param) {
        $post = DB::table('news')
            ->where('deleted', 0)
            ->where('id', $id)
            ->first();
        if (!$post) {
            return view('frontend.error')->with([
                'mainClass' => 'sub_page',
                'title' => 'Tin Tức - Ngọc Thành Store',
                'cartNum' => $this->getCartNum()
            ]);
        }

        $previousPost = DB::table('news')
            ->where('deleted', 0)
            ->where('id', '<', $post->id)
            ->orderBy('id', 'desc')
            ->first();

        $nextPost = DB::table('news')
            ->where('deleted', 0)
            ->where('id', '>', $post->id)
            ->orderBy('id', 'asc')
            ->first();

        $newsList = DB::table('news')
            ->where('deleted', 0)
            ->take(3)
            ->get();

        return view('frontend.post')->with([
            'mainClass' => 'sub_page',
            'title' => $post->title,
            'post' => $post,
            'newsList' => $newsList,
            'previousPost' => $previousPost,
            'nextPost' => $nextPost,
            'cartNum' => $this->getCartNum()
        ]);
    }


    public function showContact(Request $request)
    {
        return view('frontend.contact')->with([
            'mainClass' => 'sub_page',
            'title' => 'Liên Hệ - Ngọc Thành Store',
            'cartNum' => $this->getCartNum(),
        ]);
    }

    public function postContact(Request $request)
    {
        DB::table('feedback')->insert([
            'fullname' => $request->fullname,
            'email' => $request->email,
            'phone_number' => $request->phone_number,
            'subject_name' => $request->subject_name,
            'note' => $request->note,
        ]);

        return redirect()->route('frontend.contact');
    }

    public function showCart(Request $request)
    {
        $cartList = [];
        if (isset($_COOKIE['cart'])) {
            $cartList = json_decode($_COOKIE['cart']);
        }
        $idList = [];
        foreach ($cartList as $item) {
            $idList[] = $item->id;
        }

        $cartItems = DB::table('product')
            ->where('deleted', 0)
            ->whereIn('id', $idList)
            ->get();
        for ($i = 0; $i < count($cartItems); $i++) {
            for ($j = 0; $j < count($cartList); $j++) {
                if ($cartItems[$i]->id == $cartList[$j]->id) {
                    $cartItems[$i]->num = $cartList[$j]->num;
                    break;
                }
            }
        }

        return view('frontend.cart')->with([
            'mainClass' => 'sub_page',
            'title' => 'Giỏ Hàng - Ngọc Thành Store',
            'cartItems' => $cartItems,
            'cartNum' => $this->getCartNum(),
        ]);
    }

    public function showCheckout(Request $request)
    {
        $cartList = [];
        if (isset($_COOKIE['cart'])) {
            $cartList = json_decode($_COOKIE['cart']);
        }
        $idList = [];
        foreach ($cartList as $item) {
            $idList[] = $item->id;
        }

        $cartItems = DB::table('product')
            ->where('deleted', 0)
            ->whereIn('id', $idList)
            ->get();
        for ($i = 0; $i < count($cartItems); $i++) {
            for ($j = 0; $j < count($cartList); $j++) {
                if ($cartItems[$i]->id == $cartList[$j]->id) {
                    $cartItems[$i]->num = $cartList[$j]->num;
                    break;
                }
            }
        }

        return view('frontend.checkout')->with([
            'mainClass' => 'sub_page',
            'title' => 'Thanh Toán -Ngọc Thành Store',
            'cartItems' => $cartItems,
            'cartNum' => $this->getCartNum(),
        ]);
    }

    public function completeCheckout(Request $request)
    {
        if (!auth()->check()) {
            return redirect()->back()->withToastError('vui lòng đăng nhập để tiến hành thanh toán!')->withInput();
        }
        $cartList = [];
        if (isset($_COOKIE['cart'])) {
            $cartList = json_decode($_COOKIE['cart']);
        }
        if ($cartList == null || count($cartList) == 0) {
            return redirect()->route('home_index');
        }
        $idList = [];
        foreach ($cartList as $item) {
            $idList[] = $item->id;
        }

        $cartItems = DB::table('product')
            ->where('deleted', 0)
            ->whereIn('id', $idList)
            ->get();
        $totalMoney = 0;
        for ($i = 0; $i < count($cartItems); $i++) {
            for ($j = 0; $j < count($cartList); $j++) {
                if ($cartItems[$i]->id == $cartList[$j]->id) {
                    $cartItems[$i]->num = $cartList[$j]->num;
                    $totalMoney += $cartItems[$i]->num * $cartItems[$i]->discount;
                    break;
                }
            }
        }

        $orderItem = Orders::create([
            'user_id' => null,
            'fullname' => $request->fullname,
            'email' => $request->email,
            'phone_number' => $request->phone_number,
            'address' => $request->address,
            'note' => $request->note,
            'status' => 0,
            'order_date' => date('Y-m-d H:i:s'),
            'total_money' => $totalMoney,
        ]);

        $dataProduct = [];
        foreach ($cartItems as $item) {
            $product = [
                'order_id' => $orderItem->id,
                'product_id' => $item->id,
                'price' => $item->discount,
                'num' => $item->num,
                'total_money' => $item->discount * $item->num,
            ];

            DB::table('order_details')->insert($product);
            $p = DB::table('product')->find($item->id);
            $product['product_name'] = $p->title;
            $product['thumbnail'] = $p->thumbnail;
            $dataProduct[] = $product;
        }

        // gửi mail đến khách hàng
        $orderItem = $orderItem->toArray();
        $products = $dataProduct;
        $data = [
            'email' => $request->email,
            'orderItem' => $orderItem,
            'products' => $dataProduct,
            'customer' => [
                'fullname' => $request->fullname,
                'email' => $request->email,
                'phone_number' => $request->phone_number,
                'address' => $request->address,
                'note' => $request->note,
            ],
        ];
        SendEmail::dispatch($data)->delay(now()->addMinute(1));
        setcookie("cart", '', time(), '/');
        return redirect()->route('home_index')->withToastSuccess('Thanh toán thành công.');
        // return redirect()->route('home_index');
    }

    private function getCartNum()
    {
        $cartList = [];
        if (isset($_COOKIE['cart'])) {
            $cartList = json_decode($_COOKIE['cart']);
            $num = 0;
            foreach ($cartList as $item) {
                $num += $item->num ? (int) $item->num : 0;
            }
            return $num;
        } else {
            return 0;
        }
    }

    public function search(Request $request)
    {
        $s = $request->s;
        $productList = DB::table('product')
            ->where('title', 'LIKE', "%$s%")
            ->where('deleted', 0)
            ->paginate(8);
        $categoryList = DB::table('category')
            ->take(10)
            ->get();

        return view('frontend.category')->with([
            'mainClass' => 'sub_page',
            'title' => 'Sản Phẩm - Ngọc Thành Store',
            'productList' => $productList,
            'categoryList' => $categoryList,
            'cartNum' => $this->getCartNum(),
        ]);
    }
}
