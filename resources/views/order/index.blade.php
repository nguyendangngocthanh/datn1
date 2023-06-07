@php
    $title = "Quản Lý Đơn Hàng";
@endphp

@extends('layouts.master-admin')

@section('content')
    <div class="row">
        <div class="col-md-6">
            <h3>Thống kê doanh thu theo tuần</h3>
            <form action="{{ route('order.index') }}" method="GET">
                <div class="form-group">
                    <label for="week">Chọn tuần:</label>
                    <select name="week" id="week" class="form-control">
                        <option value="">Tất cả</option>
                        @for ($i = 1; $i <= 52; $i++)
                            <option value="{{ $i }}" {{ $selectedWeek == $i ? 'selected' : '' }}>Tuần {{ $i }}</option>
                        @endfor
                    </select>
                </div>
                <button type="submit" class="btn btn-primary">Xem</button>
            </form>
            <br>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Tuần</th>
                        <th>Khoảng thời gian</th>
                        <th>Doanh thu</th>
                    </tr>
                </thead>
                <tbody>
                    @if ($selectedWeek)
                        @php
                            $revenueWeek = $revenuesByWeek->firstWhere('week', $selectedWeek);
                        @endphp
                        @if ($revenueWeek)
                            <tr>
                                <td>{{ $revenueWeek->week }}</td>
                                <td>{{ $revenueWeek->start_date }} - {{ $revenueWeek->end_date }}</td>
                                <td>{{ $revenueWeek->total }}</td>
                            </tr>
                        @else
                            <tr>
                                <td colspan="3">Tuần {{ $selectedWeek }} không có doanh thu</td>
                            </tr>
                        @endif
                    @else
                        @foreach ($revenuesByWeek as $revenue)
                            <tr>
                                <td>{{ $revenue->week }}</td>
                                <td>{{ $revenue->start_date }} - {{ $revenue->end_date }}</td>
                                <td>{{ $revenue->total }}</td>
                            </tr>
                        @endforeach
                    @endif
                </tbody>
            </table>
        </div>
        <div class="col-md-6">
            <h3>Thống kê doanh thu theo tháng</h3>
            <form action="{{ route('order.index') }}" method="GET">
                <div class="form-group">
                    <label for="month">Chọn tháng:</label>
                    <select name="month" id="month" class="form-control">
                        <option value="">Tất cả</option>
                        @for ($i = 1; $i <= 12; $i++)
                            <option value="{{ $i }}" {{ $selectedMonth == $i ? 'selected' : '' }}>Tháng {{ $i }}</option>
                        @endfor
                    </select>
                </div>
                <button type="submit" class="btn btn-primary">Xem</button>
            </form>
            <br>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Tháng</th>
                        <th>Khoảng thời gian</th>
                        <th>Doanh thu</th>
                    </tr>
                </thead>
                <tbody>
                    @if ($selectedMonth)
                        @php
                            $revenueMonth = $revenuesByMonth->firstWhere('month', $selectedMonth);
                        @endphp
                        @if ($revenueMonth)
                            <tr>
                                <td>{{ $revenueMonth->month }}</td>
                                <td>{{ $revenueMonth->start_date }} - {{ $revenueMonth->end_date }}</td>
                                <td>{{ $revenueMonth->total }}</td>
                            </tr>
                        @else
                            <tr>
                                <td colspan="3">Tháng {{ $selectedMonth }} không có doanh thu</td>
                            </tr>
                        @endif
                    @else
                        @foreach ($revenuesByMonth as $revenue)
                            <tr>
                                <td>{{ $revenue->month }}</td>
                                <td>{{ $revenue->start_date }} - {{ $revenue->end_date }}</td>
                                <td>{{ $revenue->total }}</td>
                            </tr>
                        @endforeach
                    @endif
                </tbody>
            </table>
        </div>
    </div>
    <hr>
    <h3>Danh sách đơn hàng</h3>
    <table class="table mb-0 table-hover align-middle text-nowrap">
        <thead>
            <tr>
                <th class="border-top-0">Số thự tự</th>
                <th class="border-top-0">Họ và tên</th>
                <th class="border-top-0">Email</th>
                <th class="border-top-0">Số điện thoại</th>
                <th class="border-top-0">Địa chỉ</th>
                <th class="border-top-0">Chú thích</th>
                <th class="border-top-0">Ngày đặt hàng</th>
                <th class="border-top-0">Trạng thái</th>
                <th class="border-top-0">Tổng tiền</th>
                <th class="border-top-0" style="width: 100px"></th>
            </tr>
        </thead>
        <tbody>
            @foreach($dataList as $item)
                <tr>
                    <td>{{ ++$index }}</td>
                    <td>{{ $item->fullname }}</td>
                    <td>{{ $item->email }}</td>
                    <td>{{ $item->phone_number }}</td>
                    <td>{{ $item->address }}</td>
                    <td>{{ $item->note }}</td>
                    <td>{{ getTimeFormat($item->order_date) }}</td>
                    <td>
                        @if($item->status == 0)
                            <label class="label label-warning">Chưa xử lý</label>
                        @elseif($item->status == 1)
                            <label class="label label-success">Đã chấp nhận</label>
                        @else
                            <label class="label label-danger">Hủy</label>
                        @endif
                    </td>
                    <td>{{ number_format($item->total_money, 0) }}</td>
                    <td>
                        @if($item->status == 0)
                            <button class="btn btn-success" onclick="updateItem({{ $item->id }}, 1)">Chấp nhận</button>
                            <button class="btn btn-danger" onclick="updateItem({{ $item->id }}, 2)">Hủy</button>
                        @else
                            <button class="btn btn-secondary" disabled>Chấp nhận</button>
                            <button class="btn btn-secondary" disabled>Hủy</button>
                        @endif
                        <a href="{{ route('order.detail') }}?id={{ $item->id }}"><button class="btn btn-info">Chi tiết</button></a>
                        <button class="btn btn-danger" onclick="deleteItem({{ $item->id }})">Xóa</button>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
    {!! $dataList->links() !!}
@endsection

@section('js')
    <script type="text/javascript">
        function updateItem(id, status) {
            var confirmMessage = status == 1 ? 'Are you sure to update order\'s status "Approved"?' : 'Are you sure to update order\'s status "Cancel"?';
            var option = confirm(confirmMessage);
            if (!option) return;

            $.post('{{ route('order.update') }}', {
                '_token': '{{ csrf_token() }}',
                'id': id,
                'status': status
            }, function (data) {
                location.reload();
            });
        }

        function deleteItem(id) {
            var option = confirm('Are you sure to delete this item?');
            if (!option) return;

            $.post('{{ route('order.delete') }}', {
                '_token': '{{ csrf_token() }}',
                'id': id
            }, function(data) {
                location.reload();
            });
        }
    </script>
@endsection
