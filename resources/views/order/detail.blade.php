@php
$title = "Chi Tiết Đơn Hàng";
@endphp
@extends('layouts.master-admin')

@section('content')
<div class="row">
    <div class="col-md-4">
        <table class="table table-bordered">
            <tr>
                <th>Họ và tên</th>
                <td>{{ $orderItem->fullname }}</td>
            </tr>
            <tr>
                <th>Email</th>
                <td>{{ $orderItem->email }}</td>
            </tr>
            <tr>
                <th>Phone Number</th>
                <td>{{ $orderItem->phone_number }}</td>
            </tr>
            <tr>
                <th>Address</th>
                <td>{{ $orderItem->address }}</td>
            </tr>
            <tr>
                <th>Note</th>
                <td>{{ $orderItem->note }}</td>
            </tr>
        </table>
        <p>
            <a href="{{ route('order.index') }}">Trở về</a>
        </p>
        <p>
            <a href="{{ route('order.invoice', ['id' => $orderItem->id]) }}" target="_blank" class="btn btn-primary">In hóa đơn</a>
        </p>
    </div>
    <div class="col-md-8">
        <table class="table mb-0 table-hover align-middle text-nowrap">
            <thead>
                <tr>
                    <th class="border-top-0">Số thự tự</th>
                    <th class="border-top-0">Tiêu đề</th>
                    <th class="border-top-0">Ảnh</th>
                    <th class="border-top-0">Giá</th>
                    <th class="border-top-0">Số lượng</th>
                    <th class="border-top-0">Tổng tiền</th>
                </tr>
            </thead>
            <tbody>
                @foreach($itemList as $item)
                    <tr>
                        <td>{{ ++$index }}</td>
                        <td>{{ $item->title }}</td>
                        <td><img src="{{ $item->thumbnail }}" style="width: 180px;"></td>
                        <td>{{ number_format($item->price, 0) }}</td>
                        <td>{{ number_format($item->num) }}</td>
                        <td>{{ number_format($item->price * $item->num, 0) }}</td>
                    </tr>
                @endforeach
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>Tổng tiền</td>
                    <td>{{ number_format($orderItem->total_money) }}</td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
@endsection
