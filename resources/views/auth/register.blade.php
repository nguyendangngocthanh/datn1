@php
$title = "Đăng ký tài khoản mới";
@endphp

@extends('layouts.master-auth')

@section('css')
<style type="text/css">

</style>
@stop

@section('content')
<section class="ftco-section">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6 text-center mb-5">
                <h2 class="heading-section">Đăng ký - Ngọc Thành Store</h2>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-md-6 col-lg-4">
                <div class="login-wrap p-0">
                    <h3 class="mb-4 text-center">Nhập các thông tin dưới để bắt đầu</h3>
                    <form method="POST" action="{{ route('register') }}" class="signin-form" onsubmit="return validateForm()">
                        @csrf
                        <div class="form-group">
                            <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" placeholder="Họ và tên" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus>
                            @error('name')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>

                        <div class="form-group">
                            <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" placeholder="Email của bạn" name="email" value="{{ old('email') }}" required autocomplete="email">
                            @error('email')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>

                        <div class="form-group">
                            <input id="phone_number" type="phone_number" class="form-control @error('phone_number') is-invalid @enderror" name="phone_number" value="{{ old('phone_number') }}" required autocomplete="phone_number">

                            @error('phone_number')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>

                        <div class="form-group">
                            <input id="address" type="address" class="form-control @error('address') is-invalid @enderror" name="address" value="{{ old('address') }}" required autocomplete="address">

                            @error('address')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>





                        <div class="form-group">
                            <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" placeholder="Mật khẩu" name="password" required autocomplete="new-password">
                            @error('password')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>

                        <div class="form-group">
                            <input id="password-confirm" type="password" class="form-control" placeholder="Xác nhận mật khẩu" name="password_confirmation" required autocomplete="new-password">
                        </div>

                        <div class="form-group">
                            <input id="address" type="text" class="form-control @error('address') is-invalid @enderror" placeholder="Địa chỉ" name="address" value="{{ old('address') }}" required autocomplete="address" autofocus>
                            @error('address')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>

                        <div class="form-group">
                            <input id="phone_number" type="text" class="form-control @error('phone_number') is-invalid @enderror" placeholder="Số điện thoại" name="phone_number" value="{{ old('phone_number') }}" required autocomplete="phone_number" autofocus>
                            @error('phone_number')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>



                        <div class="form-group">
                            <label class="checkbox-container">
                                <input type="checkbox" id="terms-checkbox" name="terms" required>
                                <span class="checkmark"></span>
                                Vui lòng chấp nhận điều khoản cửa hàng của chúng tôi
                            </label>
                            <div id="terms-error" class="invalid-feedback" style="display: none;">
                                Vui lòng chấp nhận điều khoản cửa hàng của chúng tôi!
                            </div>
                        </div>
                        <div class="form-group">
                            <button type="submit" class="form-control btn btn-primary submit px-3">Đăng ký</button>
                        </div>

                    </form>

                    <p class="w-100 text-center mt-4">Bạn đã có tài khoản? <a href="{{ route('login') }}" style="color: #fff">Đăng nhập ngay</a></p>
                </div>
            </div>
        </div>
    </div>
</section>

<script>
    function validateForm() {
        var checkbox = document.getElementById("terms-checkbox");
        var termsError = document.getElementById("terms-error");
        if (!checkbox.checked) {
            termsError.style.display = "block";
            return false;
        }
        return true;
    }
</script>

@endsection
