<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Male_Fashion Template">
    <meta name="keywords" content="Male_Fashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>{{ $title }}</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="../themes/frontend1/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="../themes/frontend1/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="../themes/frontend1/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="../themes/frontend1/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="../themes/frontend1/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="../themes/frontend1/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="../themes/frontend1/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="../themes/frontend1/css/style.css" type="text/css">
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Offcanvas Menu Begin -->
    <div class="offcanvas-menu-overlay"></div>
    <div class="offcanvas-menu-wrapper">
        <div class="offcanvas__option">
            <div class="offcanvas__links">
                <a href="#">Sign in</a>
                <a href="#">FAQs</a>
            </div>
            <div class="offcanvas__top__hover">
                <span>Usd <i class="arrow_carrot-down"></i></span>
                <ul>
                    <li>USD</li>
                    <li>EUR</li>
                    <li>USD</li>
                </ul>
            </div>
        </div>
        <div class="offcanvas__nav__option">
            <a href="#" class="search-switch"><img src="../themes/frontend1/img/icon/search.png" alt=""></a>
            <a href="#"><img src="../themes/frontend1/img/icon/heart.png" alt=""></a>
            <a href="#"><img src="../themes/frontend1/img/icon/cart.png" alt=""> <span>0</span></a>
            <div class="price">$0.00</div>
        </div>
        <div id="mobile-menu-wrap"></div>
        <div class="offcanvas__text">
            <p>Free shipping, 30-day return or refund guarantee.</p>
        </div>
    </div>
    <!-- Offcanvas Menu End -->

    <!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-7">
                        <div class="header__top__left">
                            <p>Free shipping, 30-day return or refund guarantee.</p>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-5">
                        <div class="header__top__right">
                            <div class="header__top__links">
                                <a href="#">Sign in</a>
                                <a href="#">FAQs</a>
                            </div>
                            <div class="header__top__hover">
                                <span>Usd <i class="arrow_carrot-down"></i></span>
                                <ul>
                                    <li>USD</li>
                                    <li>EUR</li>
                                    <li>USD</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3">
                    <div class="header__logo">
                        <a href="./index.html"><img src="../themes/frontend1/img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <nav class="header__menu mobile-menu">
                        <ul>
                            <li class="active"><a href="{{ route('home_index') }}">Trang chủ</a></li>
                            <li><a href="{{ route('frontend.products') }}">Sản phẩm</a></li>
                            <li><a href="#">Blog</a></li>

                            <li><a href="#">Pages</a>
                                <ul class="dropdown">
                                    <li><a href="./about.html">About Us</a></li>
                                    <li><a href="./shop-details.html">Shop Details</a></li>
                                    <li><a href="./shopping-cart.html">Shopping Cart</a></li>
                                    <li><a href="./checkout.html">Check Out</a></li>
                                    <li><a href="./blog-details.html">Blog Details</a></li>
                                </ul>
                            </li>
                            <li><a href="{{ route('frontend.news') }}">Tin tức</a></li>
                            <li><a href="{{ route('frontend.contact') }}">Liên hệ</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3 col-md-3">
                    <div class="header__nav__option">
                        <a href="#" class="search-switch"><img src="../themes/frontend1/img/icon/search.png" alt=""></a>
                        <a href="#"><img src="../themes/frontend1/img/icon/heart.png" alt=""></a>
                        <a href="{{ route('frontend.cart') }}"><img src="../themes/frontend1/img/icon/cart.png" alt=""> <span>0</span></a>
                        <div class="price">$0.00</div>
                    </div>
                </div>
            </div>
            <div class="canvas__open"><i class="fa fa-bars"></i></div>
        </div>
    </header>
    <!-- Header Section End -->

    @yield('slider')

    @yield('main-content')

    <!-- Latest Blog Section Begin -->
    <section class="latest spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <span>Latest News</span>
                        <h2>Fashion New Trends</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic set-bg" data-setbg="../themes/frontend1/img/blog/blog-1.jpg" style="../themes/frontend1/background-image: url(&quot;../themes/frontend1/img/blog/blog-1.jpg&quot;);"></div>
                        <div class="blog__item__text">
                            <span><img src="../themes/frontend1/img/icon/calendar.png" alt=""> 16 February 2020</span>
                            <h5>What Curling Irons Are The Best Ones</h5>
                            <a href="#">Read More</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic set-bg" data-setbg="../themes/frontend1/img/blog/blog-2.jpg" style="background-image: url(&quot;../themes/frontend1/img/blog/blog-2.jpg&quot;);"></div>
                        <div class="blog__item__text">
                            <span><img src="../themes/frontend1/img/icon/calendar.png" alt=""> 16 February 2020</span>
                            <h5>What Curling Irons Are The Best Ones</h5>
                            <a href="#">Read More</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic set-bg" data-setbg="../themes/frontend1/img/blog/blog-3.jpg" style="background-image: url(&quot;../themes/frontend1/img/blog/blog-3.jpg&quot;);"></div>
                        <div class="blog__item__text">
                            <span><img src="../themes/frontend1/img/icon/calendar.png" alt=""> 16 February 2020</span>
                            <h5>What Curling Irons Are The Best Ones</h5>
                            <a href="#">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Latest Blog Section End -->

    <!-- Footer Section Begin -->
    <footer class="footer">
        <div class="container">
                    <div class="row">

                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__logo">
                            <a href="#"><img src="../themes/frontend1/img/footer-logo.png" alt=""></a>
                        </div>
                        <p>The customer is at the heart of our unique business model, which includes design.</p>
                        <a href="#"><img src="../themes/frontend1/img/payment.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-2 offset-lg-1 col-md-3 col-sm-6">
                    <div class="footer__widget">
                        <h6>Our Product</h6>
                        <ul>
                            <li><a href="{{ route('home_index') }}">Home</a></li>
                            <li><a href="{{ route('frontend.products') }}">Products</a></li>
                            <li><a href="{{ route('frontend.news') }}">News</a></li>
                            <li><a href="{{ route('frontend.contact') }}">Contact</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-6">
                    <div class="footer__widget">
                        <h6>Latest News</h6>
                        <ul>
                            <li><a href="#">Contact Us</a></li>
                            <li><a href="#">Payment Methods</a></li>
                            <li><a href="#">Delivary</a></li>
                            <li><a href="#">Return & Exchanges</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 offset-lg-1 col-md-6 col-sm-6">
                    <div class="footer__widget">
                        <h6>NewLetter</h6>
                        <div class="footer__newslatter">
                            <p>Be the first to know about new arrivals, look books, sales & promos!</p>
                            <form action="#">
                                <input type="text" placeholder="Your email">
                                <button type="submit"><span class="icon_mail_alt"></span></button>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d30471.7486672187!2d106.62666252028642!3d17.31706489331183!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3140acbe7a7115a5%3A0xbacb68a34656a34d!2zWHXDom4gTmluaCwgUXXhuqNuZyBOaW5oLCBRdeG6o25nIELDrG5oLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1683797236303!5m2!1svi!2s"
            width="1200" height="300" style="border:10;margin-left: 0px; margin-right: 0px; margin-bottom: 0px;"  allowfullscreen=""
             loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="footer__copyright__text">
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        <p>Copyright ©
                            <script>
                                document.write(new Date().getFullYear());
                            </script>2020
                            All rights reserved | This template is made with <i class="fa fa-heart-o"
                            aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                        </p>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    </div>
                </div>
            </div>

        </div>
    </footer>
    <!-- Footer Section End -->

    <!-- Search Begin -->
    <div class="search-model">
        <div class="h-100 d-flex align-items-center justify-content-center">
            <div class="search-close-switch">+</div>
            <form class="search-model-form">
                <input type="text" id="search-input" placeholder="Search here.....">
            </form>
        </div>
    </div>
    <!-- Search End -->

    <!-- Js Plugins -->
    <script src="../themes/frontend1/js/jquery-3.3.1.min.js"></script>
    <script src="../themes/frontend1/js/bootstrap.min.js"></script>
    <script src="../themes/frontend1/js/jquery.nice-select.min.js"></script>
    <script src="../themes/frontend1/js/jquery.nicescroll.min.js"></script>
    <script src="../themes/frontend1/js/jquery.magnific-popup.min.js"></script>
    <script src="../themes/frontend1/js/jquery.countdown.min.js"></script>
    <script src="../themes/frontend1/js/jquery.slicknav.js"></script>
    <script src="../themes/frontend1/js/mixitup.min.js"></script>
    <script src="../themes/frontend1/js/owl.carousel.min.js"></script>
    <script src="../themes/frontend1/js/main.js"></script>
</body>

</html>
