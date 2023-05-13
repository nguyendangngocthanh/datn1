@php
$title = "Quản Lý Role";
@endphp
@extends('layouts.master-admin')

@section('content')
<div class="row">
    <div class="col-md-6">
        <form method="post" action="{{ route('role.add') }}">
            {{ csrf_field() }}
            <div class="form-group">
                <label>Role Name: </label>
                <input type="number" name="id" hidden value="{{ $id }}">
                <input type="text" name="name" class="form-control" placeholder="Enter name" value="{{ $name }}">
            </div>
            <div class="form-group">
                <button class="btn btn-success">Save Data</button>
            </div>
        </form>
    </div>
    <div class="col-md-6">
        <table class="table mb-0 table-hover align-middle text-nowrap">
            <thead>
                <tr>
                    <th class="border-top-0">No</th>
                    <th class="border-top-0">Role Name</th>
                    <th class="border-top-0" style="width: 100px"></th>
                </tr>
            </thead>
            <tbody>
                {{-- Duyệt từng phẩn từ "$item" của mảng "$dataList"  --}}
                @foreach($dataList as $item)
                    <tr>
                        <td>{{ ++$index }}</td>
                        <td>{{ $item->name }}</td>
                        <td>
                            {{-- //Nút "Edit" sử dụng route('role.index') để tạo một URL đến trang chỉnh sửa vai trò và truyền tham số id với giá trị của id của $item --}}
                            <a href="{{ route('role.index') }}?id={{ $item->id }}"><button class="btn btn-warning">Edit</button></a>
                            {{-- //Nút "Delete" sử dụng JavaScript để gọi hàm deleteItem() và truyền tham số id với giá trị của id của $item. --}}
                            <button class="btn btn-danger" onclick="deleteItem({{ $item->id }})">Delete</button>
                            {{-- //khi người dùng nhấn vào nút "Delete", hàm deleteItem()
                             sẽ được gọi và giá trị của id của $item sẽ được truyền vào như một tham số.
                              Hàm deleteItem() sẽ được sử dụng để xóa phần tử tương ứng trên trang web. --}}
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
@endsection

@section('js')
<script type="text/javascript">
    function deleteItem(id) {
        //Hàm deleteItem() sử dụng hộp thoại xác nhận (confirm) để hỏi người dùng xem có muốn xóa mục này hay không.
        var option = confirm('Are you sure to delete this item')
        if(!option) return
        //Nếu người dùng chọn "OK", hàm deleteItem() sẽ sử dụng phương thức $.post() để gửi yêu cầu xóa dữ liệu tới máy chủ.
        //Đối số đầu tiên của phương thức $.post() là đường dẫn đến tài nguyên cần xóa (trong đoạn mã này là {{ route('role.delete') }}),
        // đối số thứ hai là một đối tượng chứa các thông tin cần thiết để xóa dữ liệu (trong đoạn mã này là _token và id), và đối số thứ
        //ba là một hàm được gọi khi yêu cầu được hoàn thành (trong đoạn mã này là hàm trả về location.reload() để tải lại trang web sau khi dữ liệu đã bị xóa).
        $.post('{{ route('role.delete') }}', {
            //Đoạn mã '{{ csrf_token() }}' là mã token chống giả mạo thông tin được Laravel tạo ra
            '_token': '{{ csrf_token() }}',
            'id': id
        }, function(data) {
            location.reload()
        })
    }
</script>
@stop
