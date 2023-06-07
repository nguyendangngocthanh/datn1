<?php

namespace App\Http\Controllers\Order;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use App\Models\Orders;

class OrderController extends Controller {
    /**
     * Create a new controller instance.
     *
     * @return void
     */

    public function __construct()
    {
        $this->middleware('auth');
        $this->middleware('checkPermission');
    }

    public function index(Request $request) {
        $dataList = DB::table('orders')
            ->orderBy('status', 'asc')
            ->orderBy('order_date', 'desc')
            ->paginate(10);

        $selectedWeek = $request->input('week');
        $selectedMonth = $request->input('month');

        $revenuesByWeek = Orders::select(DB::raw('WEEK(order_date) as week,
            MIN(order_date) as start_date,
            MAX(order_date) as end_date,
            SUM(total_money) as total'))
            ->groupBy('week')
            ->where('status', 1)

            ->get();

        $revenuesByMonth = Orders::select(DB::raw('MONTH(order_date) as month,
            MIN(order_date) as start_date,
            MAX(order_date) as end_date,
            SUM(total_money) as total'))
            ->groupBy('month')
            ->where('status', 1)

            ->get();

        return view('order.index')->with([
            'index' => 0,
            'dataList' => $dataList,
            'revenuesByWeek' => $revenuesByWeek,
            'revenuesByMonth' => $revenuesByMonth,
            'selectedWeek' => $selectedWeek,
            'selectedMonth' => $selectedMonth,
        ]);
    }



    public function detail(Request $request) {
        $id = $request->id;

        $dataList = DB::table('orders')
            ->where('id', $id)
            ->get();
        if($dataList != null && count($dataList) > 0) {
            $item = $dataList[0];
            $itemList = DB::table('order_details')
                ->leftJoin('product', 'product.id', '=', 'order_details.product_id')
                ->where('order_details.order_id', $id)
                ->select('order_details.*', 'product.title', 'product.thumbnail')
                ->get();

            return view('order.detail')->with([
                'index' => 0,
                'orderItem' => $item,
                'itemList' => $itemList
            ]);
        }

        return redirect();
    }

    public function update(Request $request) {
        $id = $request->id;

        DB::table('orders')
            ->where('id', $id)
            ->update([
                'status' => $request->status
            ]);
    }

    public function delete(Request $request) {
        $id = $request->id;

        DB::table('orders')
            ->where('id', $id)
            ->delete();
    }

    public function search(Request $request) {
        $s = $request->s;
        $order = DB::table('orders')
            ->orWhere('fullname','LIKE',"%$s%")
            ->orWhere('email','LIKE',"%$s%")
            ->orderBy('status', 'asc')
            ->orderBy('order_date', 'desc')
            ->paginate(10);
            return view('order.index')->with([
                'index' => 0,
                'dataList' => $order
            ]);
    }
    public function invoice($id)
{
    $orderItem = Orders::find($id);

    if (!$orderItem) {
        abort(404);
    }

    $itemList = DB::table('order_details')
        ->leftJoin('product', 'product.id', '=', 'order_details.product_id')
        ->where('order_details.order_id', $id)
        ->select('order_details.*', 'product.title', 'product.thumbnail')
        ->get();

    // Trả về view hiển thị hóa đơn
    return view('order.invoice', compact('orderItem', 'itemList'));
}


}
