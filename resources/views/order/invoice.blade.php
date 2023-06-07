<!DOCTYPE html>
<html>
<head>
    <title>Hóa đơn</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        .invoice-container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .invoice-header {
            text-align: center;
            margin-bottom: 20px;
        }

        .invoice-header h1 {
            font-size: 24px;
        }

        .invoice-details {
            margin-bottom: 30px;
        }

        .invoice-details p {
            margin: 5px 0;
        }

        .invoice-table {
            width: 100%;
            border-collapse: collapse;
        }

        .invoice-table th,
        .invoice-table td {
            border: 1px solid #ccc;
            padding: 8px;
        }

        .invoice-total {
            text-align: right;
            margin-top: 20px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="invoice-container">
        <div class="invoice-header">
            <h1>Hóa đơn</h1>
        </div>

        <div class="invoice-details">
            <p>Mã đơn hàng: {{ $orderItem->id }}</p>
            <p>Họ và tên: {{ $orderItem->fullname }}</p>
            <p>Email: {{ $orderItem->email }}</p>
            <p>Số điện thoại: {{ $orderItem->phone_number }}</p>
            <p>Địa chỉ: {{ $orderItem->address }}</p>
            <p>Chú thích: {{ $orderItem->note }}</p>
            <p>Ngày đặt hàng: {{ getTimeFormat($orderItem->order_date) }}</p>
        </div>

        <!-- ... -->
<table class="invoice-table">
    <thead>
        <tr>
            <th>STT</th>
            <th>Sản phẩm</th>
            <th>Ảnh</th>
            <th>Đơn giá</th>
            <th>Số lượng</th>
            <th>Tổng tiền</th>
        </tr>
    </thead>
    <tbody>
        @if ($orderItem->order_details && $orderItem->order_details->count() > 0)
            @foreach ($orderItem->order_details as $index => $detail)
                <tr>
                    <td>{{ $index + 1 }}</td>
                    <td>{{ $detail->product->title }}</td>
                    <td><img src="{{ $detail->product->thumbnail }}" style="width: 100px;"></td>
                    <td>{{ number_format($detail->product->price, 0) }}</td>
                    <td>{{ $detail->quantity }}</td>
                    <td>{{ number_format($detail->product->price * $detail->quantity, 0) }}</td>
                </tr>
            @endforeach
        @endif
    </tbody>
</table>
<!-- ... -->


        <div class="invoice-total">
            <p>Tổng tiền: {{ number_format($orderItem->total_money, 0) }}</p>
        </div>
    </div>

    <script>
        // Tự động in khi trang được tải
        window.onload = function() {
            window.print();
        };
    </script>
</body>
</html>
