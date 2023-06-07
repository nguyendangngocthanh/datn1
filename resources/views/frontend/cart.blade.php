@extends('layouts.master')

@section('main-content')
<!-- inner page section -->
<section class="breadcrumb-option">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb__text">
                    <h4>Giỏ hàng</h4>
                    <div class="breadcrumb__links">
                        <a href="./index.html">Trang chủ</a>
                        <a href="./shop.html">Cửa hàng</a>
                        <span>Giỏ hàng của bạn</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Shopping Cart Section Begin -->
<section class="shopping-cart spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="shopping__cart__table">
                    <table>
                        <thead>
                            <tr>
                                <th>Sản phẩm</th>
                                <th>Số lượng</th>
                                <th>Tổng</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            @php
                                $total = 0;
                            @endphp
                                @foreach($cartItems as $item)
                                    @php
                                        $num = $item->num ? (int)$item->num : 0;
                                        $subtotal = $item->discount * $num;
                                        $total += $subtotal;
                                    @endphp
                                    <tr>
                                        <td class="product__cart__item">
                                            <div class="product__cart__item__pic">
                                                <img src="{{ $item->thumbnail }}" alt="">
                                            </div>
                                            <div class="product__cart__item__text">
                                                <h6>{{ $item->title }}</h6>
                                                <h5>{{ number_format($item->discount, 0) }}</h5>
                                            </div>
                                        </td>
                                        <td class="quantity__item">
                                            <div class="quantity">
                                                <div class="">
                                                    <input type="number" min="1" value="{{ $num }}" onchange="updateCart({{ $item->id }}, this.value)">
                                                </div>
                                            </div>
                                        </td>
                                        <td class="cart__price">{{number_format($subtotal, 0) }}</td>
                                        <td class="cart__close"><i class="fa fa-close" onclick="updateCart({{ $item->id }}, 0)"></i></td>
                                    </tr>
                                @endforeach
                        </tbody>
                    </table>
                </div>
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="continue__btn">
                            <a href="http://127.0.0.1:8000/san-pham">Tiếp tục mua sắm</a>
                        </div>
                    </div>
                    {{-- <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="continue__btn update__btn">
                            <a href="#"><i class="fa fa-spinner"></i> Update cart</a>
                        </div>
                    </div> --}}
                </div>
            </div>
            <div class="col-lg-4">
                <div class="cart__discount">
                    <h6>Mã giảm giá</h6>
                    <form action="#">
                        <input type="text" id="coupon-code" placeholder="Coupon code">
                        <button type="button" onclick="applyCoupon()">Áp dụng</button>
                    </form>
                    </div>
                    <div class="cart__total">
                    <h6>Tổng giá trị</h6>
                    <ul>
                        <li>Tổng dự kiến <span id="cart-subtotal">{{ number_format($total, 0) }} VND</span></li>
                        <li>Tổng <span id="cart-total">{{ number_format($total, 0) }} VND</span></li>
                    </ul>
                    <a href="{{ route('frontend.checkout') }}" onclick="event.preventDefault(); redirectToCheckout();" class="primary-btn">Đi đến trang thanh toán</a>
                    <script type="text/javascript">
                        function redirectToCheckout() {
                            window.location.href = "{{ route('frontend.checkout') }}";
                        }
                    </script>
                    </div>
                    </div>
                    </div>
                    </div>
                    </section>
                    <!-- Shopping Cart Section End -->
                    @stop
                    @section('js')

                    <script type="text/javascript">
                        function updateCart(id, num) {
                            cartList = getCookie('cart')
                            if (cartList != null && cartList != '') {
                                cartList = JSON.parse(cartList)
                            } else {
                                cartList = []
                            }

                            isFind = false
                            for (var i = 0; i < cartList.length; i++) {
                                if (cartList[i].id == id) {
                                    if (num <= 0) {
                                        cartList.splice(i, 1)
                                    } else {
                                        cartList[i].num = parseInt(num)
                                    }

                                    isFind = true
                                    break
                                }
                            }
                            cartList = JSON.stringify(cartList)
                            document.cookie = `cart=${cartList}` + getLifecycle()
                            location.reload()
                        }
                        function getLifecycle() {
                            var now = new Date();
                            var time = now.getTime();
                            var expireTime = time + 30 * 1000 * 86400;
                            now.setTime(expireTime);
                            return ';expires=' + now.toUTCString() + ';path=/';
                        }
                        function getCookie(name) {
                            function escape(s) { return s.replace(/([.*+?\^$(){}|\[\]\/\\])/g, '\\$1'); }
                            var match = document.cookie.match(RegExp('(?:^|;\\s*)' + escape(name) + '=([^;]*)'));
                            return match ? match[1] : null;
                        }
                        function applyCoupon() {
                            var couponCode = document.getElementById('coupon-code').value;
                            if (couponCode === 'ngocthanhstore') {
                                var cartTotal = parseFloat(document.getElementById('cart-subtotal').textContent);
                                var discount = cartTotal * 0.1; // Giảm 10% tổng giá trị đơn hàng
                                var totalPrice = cartTotal - discount;

                                document.getElementById('cart-total').innerHTML = totalPrice.toFixed(2);

                                // Truyền dữ liệu giá và mã giảm giá sang trang thanh toán
                                var checkoutLink = document.getElementById('checkout-link');
                                checkoutLink.href = "{{ route('frontend.checkout') }}?totalPrice=" + totalPrice.toFixed(2) + "&couponCode=" + couponCode;
                            }
}
                    </script>
                    @stop
