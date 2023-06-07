@php
$title = "Thêm/Sửa Thông Tin Sản Phẩm";
@endphp
@extends('layouts.master-admin')

@section('css')
<style>
    #container {
        margin: 20px auto;
    }
    .ck-editor__editable[role="textbox"] {
        /* editing area */
        min-height: 360px;
    }
    .ck-content .image {
        /* block images */
        max-width: 80%;
        margin: 20px auto;
    }
</style>
@stop

@section('content')
<form action="{{ route('product.add') }}" method="post" id="MyForm">
<div class="row">
    <div class="col-md-8">
        {{ csrf_field() }}
        <div class="form-group">
            <label>Tiêu đề: </label>
            <input type="text" name="id" hidden value="{{ ($product != null)?$product->id:'' }}">
            <input type="text" name="title" class="form-control" required value="{{ ($product != null)?$product->title:'' }}">
        </div>
        <div class="form-group mb-3">
            <textarea name="description" id="description" class="form-control" rows="10">{{ ($product != null)?$product->description:'' }}</textarea>
        </div>
        <div class="form-group" style="margin-top: 30px">
            <button class="btn btn-success">Lưu sản phẩm</button>
            <a href="{{ route('product.index') }}">Trở về</a>
        </div>
    </div>
    <div class="col-md-4">
        <div class="form-group">
            <label>Ảnh: </label>
            <button type="button" class="btn btn-warning" onclick="$('#upload_file').click()">Thêm ảnh</button>
            <input type="file" id="upload_file" hidden>
            <input type="text" name="thumbnail" id="thumbnail" class="form-control" required value="{{ ($product != null)?$product->thumbnail:'' }}">
            <img src="{{ ($product != null)?$product->thumbnail:'' }}" style="max-height: 220px;" id="thumbnail_img">
        </div>
        <div class="form-group">
            <label>Giá gốc: </label>
            <input required type="number" name="price" class="form-control" value="{{ ($product != null)?$product->price:'' }}">
        </div>
        <div class="form-group">
            <label>Giá khuyến mãi: </label>
            <input required type="number" name="discount" class="form-control" value="{{ ($product != null)?$product->discount:'' }}">
        </div>
        <div class="form-group">
            <label>Loại sản phẩm: </label>
            <select class="form-control" required name="category_id">
                <option value="">-- Chọn loại sản phẩm --</option>
                @foreach($categoryList as $item)
                    @if($product != null && $product->category_id == $item->id)
                        <option selected value="{{ $item->id }}">{{ $item->name }}</option>
                    @else
                        <option value="{{ $item->id }}">{{ $item->name }}</option>
                    @endif
                @endforeach
            </select>
        </div>
    </div>
</div>
</form>
@endsection

@section('js')
<script type="text/javascript">
    $(function() {
        CKEDITOR.replace('description');

        $('[name=thumbnail]').change(function() {
            $('#thumbnail_img').attr('src', $(this).val())
        })

        $('#upload_file').change(function(e) {
            uploadFile(e, 'thumbnail')
        })
    })
</script>
@stop
