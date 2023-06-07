@extends('layouts.master')

@section('main-content')

<section class="breadcrumb-option">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb__text">
                    <h4>Cửa hàng</h4>
                    <div class="breadcrumb__links">
                        <a href="./">Trang chủ</a>
                        <span>Shop</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="shop spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="shop__sidebar">
                    <div class="shop__sidebar__search">

                    </div>
                    <div class="shop__sidebar__accordion">
                        <div class="accordion" id="accordionExample">
                            <div class="card">
                                <div class="card-heading">
                                    <a data-toggle="collapse" data-target="#collapseOne">Danh mục sản phẩm</a>
                                </div>
                                <div id="collapseOne" class="collapse show" data-parent="#accordionExample">
                                    <div class="card-body">
                                        <div class="shop__sidebar__categories">
                                            <ul class="nice-scroll">
                                                @foreach ($categoryList as $category)
                                                    <li><a href="{{ route('frontend.category', $category->href_param) }}">{{ $category->name }}</a></li>
                                                @endforeach
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <!-- Rest of the code for other sections -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="shop__product__option">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="shop__product__option__left">
                                <p>Hiển thị {{ $productList->firstItem() }}–{{ $productList->lastItem() }} của {{ $productList->total() }} kết quả</p>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="shop__product__option__right">
                                <p>Xếp theo giá:</p>
                                <!-- Thay đổi select element -->
                                <select id="price-filter">
                                    <option value="" @if(!request()->has('min_price') && !request()->has('max_price')) selected @endif>Tất cả</option>
                                    <option value="0-150000" @if(request()->has('min_price') && request()->get('min_price') === '0' && request()->get('max_price') === '150000') selected @endif>0 - 150.000 VNĐ</option>
                                    <option value="150001" @if(request()->has('min_price') && request()->get('min_price') === '150001' && !request()->has('max_price')) selected @endif>150.000 VNĐ trở lên</option>
                                </select>

                            </div>
                        </div>

                    </div>
                </div>
                <div class="row">
                    <style>
                        .product__item {
                            margin: 0 15px 30px 15px;
                        }
                    </style>
                    @foreach ($productList as $item)

                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="product__item sale">
                            <div class="product__item__pic set-bg" data-setbg="{{ $item->thumbnail }}" style="background-image: url(&quot;{{ $item->thumbnail }};);">
                                <ul class="product__hover">
                                    <li><a href="#"><img src="../themes/frontend1/img/icon/heart.png" alt=""></a></li>
                                    <li><a href="#"><img src="../themes/frontend1/img/icon/compare.png" alt=""> <span>Compare</span></a></li>
                                    <li><a href="{{ route('frontend.detail',['id'=>$item->id, 'href_param'=>$item->slug]) }}"><img src="../themes/frontend1/img/icon/search.png" alt=""></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6>{{ $item->title }}</h6>
                                <a href="{{ route('frontend.detail',['id'=>$item->id,'href_param'=>$item->slug]) }}" class="add-cart">+ Thêm giỏ hàng</a>
                                
                                <h5 style="color: red; text-decoration: line-through; font-size: smaller;">{{ number_format($item->price, 0)}} VNĐ</h5>
                                <h5 style="font-size: larger;">{{ number_format($item->discount, 0)}} VNĐ</h5>
                                <div class="product__color__select">
                                    <label for="pc-7">
                                        <input type="radio" id="pc-7">
                                    </label>
                                    <label class="active black" for="pc-8">
                                        <input type="radio" id="pc-8">
                                    </label>
                                    <label class="grey" for="pc-9">
                                        <input type="radio" id="pc-9">
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>

                <nav>
                    <ul class="pagination justify-content-center">
                      @if ($productList->currentPage() > 1)
                        <li class="page-item">
                          <a class="page-link" href="{{ $productList->previousPageUrl() }}" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                          </a>
                        </li>
                      @endif

                      @for ($i = 1; $i <= $productList->lastPage(); $i++)
                        <li class="page-item{{ ($productList->currentPage() === $i) ? ' active' : '' }}">
                          <a class="page-link" href="{{ $productList->url($i) }}">{{ $i }}</a>
                        </li>
                      @endfor

                      @if ($productList->hasMorePages())
                        <li class="page-item">
                          <a class="page-link" href="{{ $productList->nextPageUrl() }}" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                          </a>
                        </li>
                      @endif
                    </ul>
                  </nav>
            </div>
        </div>
    </div>
</section>
<script>
    document.getElementById('price-filter').addEventListener('change', function () {
        var selectedValue = this.value;
        var currentUrl = new URL(window.location.href);

        if (selectedValue === '0-150000') {
            currentUrl.searchParams.set('min_price', '0');
            currentUrl.searchParams.set('max_price', '150000');
        } else if (selectedValue === '150001') {
            currentUrl.searchParams.set('min_price', '150001');
            currentUrl.searchParams.delete('max_price');
        } else {
            currentUrl.searchParams.delete('min_price');
            currentUrl.searchParams.delete('max_price');
        }

        window.location.href = currentUrl.toString();
    });
</script>

@stop
