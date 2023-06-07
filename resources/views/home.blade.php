@php
    $title = 'Trang Quản Trị';
@endphp
@extends('layouts.master-admin')

@section('content')



<div class="row">
    <div class="col-lg-6">
        <div>
            <canvas id="countChart"></canvas>
        </div>
    </div>
    <div class="col-lg-6">
        <div>
            <canvas id="revenueChart"></canvas>
        </div>

    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
    document.addEventListener("DOMContentLoaded", function() {
        // Lấy dữ liệu từ các biến PHP
        var countData = {
            labels: ['Sản phẩm', 'Tin tức', 'Đơn hàng', 'Người dùng'],
            datasets: [{
                label: 'Số lượng',
                data: [
                    {{ $productCount }},
                    {{ $newsCount }},
                    {{ $ordersCount }},
                    {{ $usersCount }}
                ],
                backgroundColor: ['rgba(75, 192, 192, 0.5)', 'rgba(54, 162, 235, 0.5)', 'rgba(255, 99, 132, 0.5)', 'rgba(255, 205, 86, 0.5)'],
                borderColor: ['rgba(75, 192, 192, 1)', 'rgba(54, 162, 235, 1)', 'rgba(255, 99, 132, 1)', 'rgba(255, 205, 86, 1)'],
                borderWidth: 1
            }]
        };

        var countOptions = {
            scales: {
                y: {
                    beginAtZero: true,
                    precision: 0
                }
            }
        };

        var countChart = new Chart(document.getElementById('countChart'), {
            type: 'bar',
            data: countData,
            options: countOptions
        });

        var revenueData = {
            labels: ['Mới', 'Hoàn thành', 'Đã hủy'],
            datasets: [{
                label: 'Đơn hàng',
                data: [
                    {{ $countOrderByStatus['new'] }},
                    {{ $countOrderByStatus['completed'] }},
                    {{ $countOrderByStatus['cancelled'] }}
                ],
                backgroundColor: ['rgba(255, 99, 132, 0.5)', 'rgba(54, 162, 235, 0.5)', 'rgba(255, 205, 86, 0.5)'],
                borderColor: ['rgba(255, 99, 132, 1)', 'rgba(54, 162, 235, 1)', 'rgba(255, 205, 86, 1)'],
                borderWidth: 1
            }]
        };

        var revenueOptions = {
            scales: {
                y: {
                    beginAtZero: true,
                    precision: 0
                }
            }
        };

        var revenueChart = new Chart(document.getElementById('revenueChart'), {
            type: 'bar',
            data: revenueData,
            options: revenueOptions
        });
    });
</script>

    <div class="">
        <label>5 đơn hàng mới</label>
    </div>
    <table class="table mb-0 table-hover align-middle text-nowrap">
        <thead>
            <tr>
                <th class="border-top-0">#</th>
                <th class="border-top-0">Tên</th>
                <th class="border-top-0">Email</th>
                <th class="border-top-0">Số điện thoại</th>
                <th class="border-top-0">Địa chỉ</th>
                <th class="border-top-0">Ghi chú</th>
                <th class="border-top-0">Tổng tiền</th>
                <th class="border-top-0">Ngày đặt</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($newOrders as $key => $order)
                <tr>
                    <td>{{ $key + 1 }}</td>
                    <td>{{ $order->fullname }}</td>
                    <td>{{ $order->email }}</td>
                    <td>{{ $order->phone_number }}</td>
                    <td>{{ $order->address }}</td>
                    <td>{{ $order->note }}</td>
                    <td>{{ number_format($order->total_money, 0, ',', '.') }}</td>
                    <td>{{ \Carbon\Carbon::parse($order->order_date)->format('H:i d/m/Y') }}đ</td>
                </tr>
            @endforeach
        </tbody>
    </table>
   @endsection
