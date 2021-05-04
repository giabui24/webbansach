<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <script type="text/javascript" src="https://mail-attachment.googleusercontent.com/injected/se.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta http-equiv="x-ua-compatible" content="ie=edge">
    
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Favicons -->
    <link rel="shortcut icon" href='<c:url value="/resources/images/favicon.jpg"/>'/>
    <link rel="apple-touch-icon" href='<c:url value="/resources/images/icon.png"/>'/>

    <!-- Google font (font-family: 'Roboto', sans-serif; Poppins ; Satisfy) -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,600,600i,700,700i,800"
          rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">

    <!-- Stylesheets -->
    <link rel="stylesheet" href='<c:url value="/resources/css/bootstrap.min.css"/>'/>
    <link rel="stylesheet" href='<c:url value="/resources/css/plugins.css"/>'/>
    <link rel="stylesheet" href='<c:url value="/resources/style.css"/>'/>

    <!-- Cusom css -->
    <link rel="stylesheet" href='<c:url value="/resources/css/custom.css"/>'/>

    <!-- Modernizer js -->
    <script src='<c:url value="/resources/js/vendor/modernizr-3.5.0.min.js"/>'></script>
    <!-- jquery -->
    <script src='<c:url value="/resources/js/vendor/jquery-3.2.1.min.js"/>'></script>
    <script src='<c:url value="/resources/js/custom.js"/>'></script>
</head>
<body>
  <header id="wn__header" class="header__area header__absolute sticky__header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6 col-sm-6 col-6 col-lg-2">
                    <div class="logo">
                        <a href="index.html">
                            <img src="images/Logo2.png" alt="logo images">
                        </a>
                    </div>
                </div>
                <div class="col-lg-8 d-none d-lg-block">
                    <nav class="mainmenu__nav">
                        <ul class="meninmenu d-flex justify-content-start">
                            <li class="drop with--one--item"><a class="active" href='<c:url value="/"/>'>Trang chủ</a></li>
                            <li class="drop"><a href="#">Thể loại</a>
                                <div class="megamenu mega03">
                                    <ul class="item item03">
                                        <li class="title">Văn học</li>
                                        <li><a href="shop-grid.html">Tiểu thuyết</a></li>
                                        <li><a href="shop-grid.html">Truyện ngắn</a></li>
                                        <li><a href="shop-grid.html">Ngôn tình</a></li>
                                        <li><a href="shop-grid.html">Tác phẩm nước ngoài</a></li>
                                    </ul>
                                    <ul class="item item03">
                                        <li class="title">Sách thiếu nhi</li>
                                        <li><a href="shop-grid.html">Kĩ năng sống</a></li>
                                        <li><a href="shop-grid.html">Vừa học vừa chơi</a></li>
                                        <li><a href="shop-grid.html">Truyện cổ tích</a></li>
                                        <li><a href="shop-grid.html">Truyện nước ngoài</a></li>
                                    </ul>
                                    <ul class="item item03">
                                        <li class="title">Sách kinh tế</li>
                                        <li><a href="shop-grid.html">Bài học kinh doanh</a></li>
                                        <li><a href="shop-grid.html">Marketing - Bán hàng</a></li>
                                        <li><a href="shop-grid.html">Quản trị - Lãnh đạo</a></li>
                                        <li><a href="shop-grid.html">Kỹ năng làm việc</a></li>
                                    </ul>
                                    <ul class="item item03">
                                        <li class="title">Học tập</li>
                                        <li><a href="shop-grid.html">Tiếng Anh</a></li>
                                        <li><a href="shop-grid.html">Tiếng Nhật</a></li>
                                        <li><a href="shop-grid.html">Công nghệ thông tin</a></li>
                                        <li><a href="shop-grid.html">Y học</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li class="drop"><a href="#">Khuyên đọc</a>
                                <div class="megamenu dropdown">
                                    <ul class="item item01">
                                        <li class="title">"Đọc sách cho tâm trí cũng cần như tập thể dục cho cơ thể. "
                                        </li>
                                        <li><a href="single-product.html">Yêu đi đừng sợ</a></li>
                                        <li><a href="single-product.html">Đối nhân khéo - Xử thế hay</a></li>
                                        <li><a href="single-product.html">Lãnh đạo bằng câu hỏi</a></li>
                                        <li><a href="single-product.html">Sức mạnh tình bạn</a></li>
                                        <li><a href="single-product.html">Mặt nạ sự sống</a></li>
                                        <li><a href="single-product.html">Yêu thương cuộc sống</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li class="drop"><a href="blog.html">Tin tức</a>
                            </li>
                            <li><a href="contact.html">Liên hệ</a></li>
                        </ul>

                    </nav>
                </div>
                <div class="col-md-6 col-sm-6 col-6 col-lg-2">
                    <ul class="header__sidebar__right d-flex justify-content-end  align-items-center">
                        <li class="shop_search wishlist"><a class="search__active" href="#"><i class="fa fa-search"></i>
                            Tìm kiếm</a></li>
                        <li class="wishlist"><a href="wishlist.html"><i class="fa fa-heart"></i> Yêu thích</a></li>
                        <li class="shopcart wishlist">

                            <a href='<c:url value="/giohang/"/>'>
                                <div id="giohang">
                                <c:if test="${soluongsanphamgiohang>0}">
                                    <i class="fa fa-shopping-cart"></i><b> Giỏ hàng<span class="product_qun">${soluongsanphamgiohang}</span></b>
                                </div>
                                </c:if>
                                <c:if test="${soluongsanphamgiohang<0 || soluongsanphamgiohang ==null}">
                                    <i class="fa fa-shopping-cart"></i><b> Giỏ hàng<span>${soluongsanphamgiohang}</span></b>
                                </div>
                                </c:if>

                            </a>
                        </li>
                        <li class="setting__bar__icon wishlist"><a class="setting__active" href="#"><i
                                class="fa fa-user-circle"></i>Tài khoản</a>
                            <div class="searchbar__content setting__block">
                                <div class="content-inner">
                                    <div class="switcher-currency">
                                        <strong class="label switcher-label">
                                            <span>${email}</span>
                                        </strong>
                                        <div class="switcher-options">
                                            <div class="switcher-currency-trigger">
                                                <div class="setting__menu">
                                                    <div class="login"><a href='<c:url value="/dangnhap/"/>'><i
                                                            class="fa fa-sign-in"></i> Đăng
                                                        nhập</a></div>
                                                    <div class="register"><a href='<c:url value="/dangky/"/>'><i
                                                            class="fa fa-registered"></i> Đăng kí</a></div>
                                                    <div class="update"><a href="updateaccount.html"><i
                                                            class="fa fa-upload"></i> Cập nhật tài khoản</a></div>
                                                    <div class="logout"><a href="#"><i class="fa fa-sign-out"></i> Đăng
                                                        xuất</a></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- Start Mobile Menu -->
            <div class="row d-none">
                <div class="col-lg-12 d-none">
                    <nav class="mobilemenu__nav">

                        <ul class="meninmenu">
                            <li><a href="index.html">Trang chủ</a></li>
                            <li><a href="#">Thể loại</a>
                                <ul>
                                    <li><a href="about.html">TL1</a></li>
                                    <li><a href="portfolio.html">TL2</a>
                                        <ul>
                                            <li><a href="portfolio.html">Blog</a></li>
                                            <li><a href="portfolio-details.html">Nội dung Blog</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="login.html">My Account</a></li>
                                    <li><a href="cart.html">Cart Page</a></li>
                                    <li><a href="checkout.html">Checkout Page</a></li>
                                    <li><a href="wishlist.html">Wishlist Page</a></li>
                                    <li><a href="error404.html">404 Page</a></li>
                                    <li><a href="faq.html">Faq Page</a></li>
                                    <li><a href="team.html">Team Page</a></li>
                                </ul>
                            </li>
                            <li><a href="shop-grid.html">Khuyên đọc</a>
                                <ul>
                                    <li><a href="shop-grid.html">Shop Grid</a></li>
                                    <li><a href="single-product.html">Single Product</a></li>
                                </ul>
                            </li>
                            <li><a href="blog.html">Blog</a>
                                <ul>
                                    <li><a href="blog.html">Blog</a></li>
                                    <li><a href="blog-details.html">Blog Nội dung Blog</a></li>
                                </ul>
                            </li>
                            <li><a href="contact.html">Liên hệ</a></li>
                        </ul>

                    </nav>
                </div>
            </div>
            <!-- End Mobile Menu -->
            <div class="mobile-menu d-block d-lg-none">
            </div>
            <!-- Mobile Menu -->
            <div class="box-search-content search_active block-bg close__top">
        <form id="search_mini_form" class="minisearch" action="#">
            <div class="field__search">
                <input type="text" placeholder="Nhập từ khóa...">
                <div class="action">
                    <a href="#"><i class="zmdi zmdi-search"></i></a>
                </div>
            </div>
        </form>
        <div class="close__wrap">
            <span>Đóng</span>
        </div>
    </div>
    <!-- End Search Popup -->
        </div>
    </header>
<script src='<c:url value="/resources/js/custom.js"/>'></script>
</body>
</html>