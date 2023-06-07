@php
$title = "Đăng Nhập";
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
                <h2 class="heading-section">Đăng nhập - Ngọc Thành Store</h2>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-md-6 col-lg-4">
                <div class="login-wrap p-0">
                    <h3 class="mb-4 text-center">Bạn đã có tài khoản?</h3>
                    <form method="POST" action="{{ route('login') }}" class="signin-form">
                        @csrf
                        <div class="form-group">
                            <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" placeholder="Email" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>
                            @error('email')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                            @enderror
                        </div>
                        <div class="form-group">
                            <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" placeholder="Mật khẩu" name="password" required autocomplete="current-password">
                            @error('password')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                            @enderror
                        </div>
                        <div class="form-group">
                            <button type="submit" class="form-control btn btn-primary submit px-3">Đăng nhập</button>
                        </div>
                        <div class="form-group d-md-flex">
                            <div class="w-50">
                                <label class="checkbox-wrap checkbox-primary">Ghi nhớ đăng nhập
                                    <input type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                            <div class="w-50 text-md-right">
                                @if (Route::has('password.request'))
                                <a href="{{ route('password.request') }}" style="color: #fff">Quên mật khẩu</a>
                                @endif
                            </div>
                        </div>
                    </form>
                    <p class="w-100 text-center">&mdash; Hoặc đăng nhập với &mdash;</p>
                    <div class="social d-flex text-center">
                        <a href="#" class="px-2 py-2 mr-md-1 rounded"><span class="ion-logo-google mr-2"></span> Google</a>

                    </div>
                    <p class="w-100 text-center mt-4">Chưa có tài khoản? <a href="{{ route('register') }}" style="color: #fff">Đăng ký ngay</a></p>
                </div>
            </div>
        </div>
    </div>
</section>

@endsection
