@extends('layouts.master')

@section('main-content')
<!-- Shop Details Section Begin -->
<section class="shop-details">
    <div class="product__details__pic">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="product__details__breadcrumb">
                        <a href="/">Trang chủ</a>
                        <a href="./shop.html">Shop</a>
                        <span>Product Details</span>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-md-3">

                </div>
                <div class="col-lg-6 col-md-9">
                    <div class="tab-content">
                        <div class="tab-pane active" id="tabs-1" role="tabpanel">
                            <div class="product__details__pic__item">
                                <img src="{{ $detail->thumbnail }}" alt=""style="min-width: 100%; max-width: 100%;">
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="product__details__content">
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="col-lg-8">
                    <div class="product__details__text">
                        <h4>{{ $detail->title }}</h4>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o"></i>
                        </div>
                        <h3>{{ number_format($detail->discount) }} VND <span>{{ number_format($detail->price) }} VND</span></h3>
                        <p>Sản phẩm chất lượng, mẫu mã đẹp, giao hàng nhanh</p>
                        <div class="product__details__option">
                            {{-- <div class="product__details__option__size">
                                <span>Size:</span>
                                <label for="xxl">xxl
                                    <input type="radio" id="xxl">
                                </label>
                                <label class="active" for="xl">xl
                                    <input type="radio" id="xl">
                                </label>
                                <label for="l">l
                                    <input type="radio" id="l">
                                </label>
                                <label for="sm">s
                                    <input type="radio" id="sm">
                                </label>
                            </div>
                            <div class="product__details__option__color">
                                <span>Màu sắc:</span>
                                <label class="c-1" for="sp-1">
                                    <input type="radio" id="sp-1">
                                </label>
                                <label class="c-2" for="sp-2">
                                    <input type="radio" id="sp-2">
                                </label>
                                <label class="c-3" for="sp-3">
                                    <input type="radio" id="sp-3">
                                </label>
                                <label class="c-4" for="sp-4">
                                    <input type="radio" id="sp-4">
                                </label>
                                <label class="c-9" for="sp-9">
                                    <input type="radio" id="sp-9">
                                </label>
                            </div> --}}
                        </div>
                        <div class="product__details__cart__option">
                            <div class="quantity">
                                <div class="pro-qty">
                                    <input type="number" name="num" value="1">
                                </div>
                            </div>
                            <a href="#" class="primary-btn" onclick="addCart({{ $detail->id }}, $('[name=num]').val())">Thêm giỏ hàng</a>
                        </div>


                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="product__details__tab">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#tabs-5"
                                role="tab">Thông tin sản phẩm</a>
                            </li>

                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tabs-5" role="tabpanel">
                                <div class="product__details__tab__content">

                                        <p>{!! $detail->description !!}</p>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Shop Details Section End -->

<!-- Related Section Begin -->
<section class="related spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h3 class="related-title">Sản phẩm liên quan</h3>
            </div>
        </div>
        <div class="row">
            @php
                $count = 0;
            @endphp
            @foreach($productList as $item)
            @if($count < 3)
            <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="{{ $item->thumbnail }}">
                        <ul class="product__hover">
                            <li><a href="#"><img src="../themes/frontend1/img/icon/heart.png" alt=""></a></li>
                            <li><a href="#"><img src="../themes/frontend1/img/icon/compare.png" alt=""> <span>Compare</span></a></li>
                            <li><a href="{{ route('frontend.detail',['id'=>$item->id, 'href_param'=>$item->slug]) }}"><img src="../themes/frontend1/img/icon/search.png" alt=""></a></li>
                        </ul>
                    </div>
                    <div class="product__item__text">
                        <h6>{{ $item->title }}</h6>
                        <a href="{{ route('frontend.detail',['id'=>$item->id,'href_param'=>$item->slug]) }}" class="add-cart">+ Thêm giỏ hàng</a>
                        <div class="rating">
                            <i class="fa fa-star-o"></i>
                            <i class="fa fa-star-o"></i>
                            <i class="fa fa-star-o"></i>
                            <i class="fa fa-star-o"></i>
                            <i class="fa fa-star-o"></i>
                        </div>
                        <h5>{{ number_format($item->discount, 0)}} VNĐ</h5>
                        <div class="product__color__select">
                            <label for="pc-4">
                                <input type="radio" id="pc-4">
                            </label>
                            <label class="active black" for="pc-5">
                                <input type="radio" id="pc-5">
                            </label>
                            <label class="grey" for="pc-6">
                                <input type="radio" id="pc-6">
                            </label>
                        </div>
                    </div>
                </div>
            </div>
            @php
                $count++;
            @endphp
            @endif
            @endforeach
        </div>
    </div>
</section>

<!-- Related Section End -->
@stop

@section('js')
<script type="text/javascript">
    function addCart(id, num) {
       cartList = getCookie('cart')
       if(cartList != null && cartList != '') {
          cartList = JSON.parse(cartList)
       } else {
          cartList = []
       }

       isFind = false
       for (var i = 0; i < cartList.length; i++) {
          if(cartList[i].id == id) {
             cartList[i].num = parseInt(cartList[i].num) + parseInt(num)
             isFind = true
             break
          }
       }

       if(!isFind) {
          cartList.push({
             'id': id,
             'num': num
          })
       }

       cartList = JSON.stringify(cartList)
       document.cookie = `cart=${cartList}` + getLifecycle()

       location.reload()
    }


    function getLifecycle() {
     var now = new Date();
     var time = now.getTime();
     var expireTime = time + 30*1000*86400;
     now.setTime(expireTime);
     return ';expires='+now.toUTCString()+';path=/';
   }

    function getCookie(name) {
        function escape(s) { return s.replace(/([.*+?\^$(){}|\[\]\/\\])/g, '\\$1'); }
        var match = document.cookie.match(RegExp('(?:^|;\\s*)' + escape(name) + '=([^;]*)'));
        return match ? match[1] : null;
    }
 </script>
@stop
