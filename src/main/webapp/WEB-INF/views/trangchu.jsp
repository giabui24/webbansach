<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>H&B BookStore</title>

</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<!-- Start Slider area -->
    <div class="slider-area">
        <!--        <h2>Carousel Example</h2>-->
        <div id="myCarousel" class="carousel slide border" data-ride="carousel" data-interval="2000">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
<%--                 '<c:url value="/resources/css/custom.css"/>' --%>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <a href="shop-grid.html"><img class="d-block w-100" src='<c:url value="images/banner/banner.jpg"/>' alt="banner 1"></a>
                </div>
                <div class="carousel-item">
                    <a href="shop-grid.html"><img class="d-block w-100" src='<c:url value="images/banner/banner1.jpg"/>'

                            alt="banner 2"></a>
                </div>
                <div class="carousel-item">
                    <a href="shop-grid.html"><img class="d-block w-100" src='<c:url value="images/banner/banner4.jpg"/>'
                         alt="banner 3"></a>
                </div>
            </div>
            <!-- Controls -->
            <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                <span aria-hidden="true"><img class="pre" src="images/icons/prev.png" height="45" width="50"/></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                <span aria-hidden="true"><img class="next" src="images/icons/next.png" height="45" width="50"/></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>

    <!-- End Single Slide -->
</div>
<!-- End Slider area -->

<!-- Start BEst Seller Area -->
<section class="wn__product__area brown--color pt--80">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section__title text-center">
                    <h2 class="title__be--2"><span class="color--theme">Sách giá hot</span></h2>
                    <p class="cautho">"Việc đọc rất quan trọng. Nếu bạn biết cách đọc, cả thế giới sẽ mở ra cho bạn.” -
                        <b>Barack Obama</b></p>
                </div>
            </div>
        </div>
        <!-- Start Single Tab Content -->
        <div class="furniture--4 furniture--4v2 border--round arrows_style owl-carousel owl-theme row mt--50">
            <!-- Start Single Product -->
            <c:forEach var="sanpham" items="${listSanPham}">
            <div class="product product__style--3">
                <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                    <div class="product__thumb">
                        <a class="first__img" href="single-product.html"><img src= '<c:url value="${sanpham.getHinhsanpham()}"/>'
                                                                              alt="product image"></a>
                        <div class="hot__box">
                            <span class="hot-label">22%</span>
                        </div>
                    </div>
                    <div class="product__content content--center">
                        <h4><a href="single-product.html">${sanpham.getTensanpham()}</a></h4>
                        <ul class="prize d-flex">
                            <li>50.000đ</li>
                        </ul>
                        <ul class="prize d-flex">
                            <li class="old_prize">${sanpham. getGiatien()}đ</li>
                        </ul>

                        <div class="action">
                            <div class="actions_inner">
                                <ul class="add_to_links">
                                    <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                    </li>
                                    <li><a class="compare" href="wishlist.html"><i class="bi bi-heart-beat"></i></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="product__hover--content">
                            <ul class="rating d-flex">
                                <li class="on"><i class="fa fa-star"></i></li>
                                <li class="on"><i class="fa fa-star"></i></li>
                                <li class="on"><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- Start Single Product -->
            </div>
            </c:forEach>
    </div>
</section>
<!-- Start BEst Seller Area -->
<div class="shop-info-area">
    <div class="container">
        <div class="title-info"><h2>Tại sao khách hàng tin cậy H&B Bookstore?</h2></div>
        <div class="row">
            <div class="col-md-4 col-sm-6">
                <div class="single-shop-info">
                    <div class="shop-info-icon">
                        <i class="fa fa-check"></i>
                    </div>
                    <div class="shop-info-content">
                        <h2>Độ tin cậy</h2>
                        <p>Nguồn sách có chọn lọc từ các nhà xuất bản uy tín. Phương châm của chúng tôi là lấy chất
                            lượng làm uy tín. </p>

                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="single-shop-info">
                    <div class="shop-info-icon">
                        <i class="fa fa-money"></i>
                    </div>
                    <div class="shop-info-content">
                        <h2>Giá hấp dẫn</h2>
                        <p>Hướng tới đối tượng học sinh, sinh viên. H&B cung cấp các cuốn sách hấp dẫn, và giá cũng hấp
                            dẫn không kém. </p>

                    </div>
                </div>
            </div>
            <div class="col-md-4 hidden-sm">
                <div class="single-shop-info">
                    <div class="shop-info-icon">
                        <i class="fa fa-book"></i>
                    </div>
                    <div class="shop-info-content">
                        <h2>Đa dạng</h2>
                        <p>Kho sách phong phú, với nhiều thể loại đa dạng cho bạn đọc. </p>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Start NEwsletter Area -->
<section class="wn__newsletter__area bg-image--2">
    <div class="slider-area">
        <!--        <h2>Carousel Example</h2>-->
        <div id="myCarousel1" class="carousel slide border" data-ride="carousel" data-interval="2000"
             style="margin-top: -4%">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel1" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel1" data-slide-to="1"></li>
                <li data-target="#myCarousel1" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <a href="shop-grid.html"><img class="d-block w-100" src="images/banner/banner5.jpg" alt="banner 1"></a>
                </div>
                <div class="carousel-item">
                    <a href="shop-grid.html"><img class="d-block w-100" src="images/banner/banner2.jpg"
                                                  alt="banner 2"></a>
                </div>
                <div class="carousel-item">
                    <a href="shop-grid.html"><img class="d-block w-100" src="images/banner/banner6.jpg"
                                                  alt="banner 3"></a>
                </div>
            </div>
            <!-- Controls -->
            <a class="carousel-control-prev" href="#myCarousel1" role="button" data-slide="prev">
                <span aria-hidden="true"><img class="pre" src="images/icons/prev.png" height="45" width="50"/></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#myCarousel1" role="button" data-slide="next">
                <span aria-hidden="true"><img class="next" src="images/icons/next.png"/></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</section>
<!-- End NEwsletter Area -->
<!-- Start Best Seller Area -->
<section class="wn__bestseller__area bg--white pt--80  pb--30">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section__title text-center">
                    <h2 class="title__be--2"><span class="color--theme">Sách nổi bật</span></h2>
                    <p class="cautho">"Chúng ta là ai, mỗi người trong chúng ta là ai nếu không phải tổ hợp của kinh
                        nghiệm, thông tin, những cuốn sách chúng ta đã đọc, những điều chúng ta đã tưởng tượng ra?.” -
                        <b>Italo Valvino</b></p>
                </div>
            </div>
        </div>
        <div class="row mt--50">
            <div class="col-md-12 col-lg-12 col-sm-12">
                <div class="product__nav nav justify-content-center" role="tablist">
                    <a class="nav-item nav-link active" data-toggle="tab" href="#nav-all" role="tab">TẤT CẢ</a>
                    <a class="nav-item nav-link" data-toggle="tab" href="#nav-biographic" role="tab">SÁCH THIẾU NHI</a>
                    <a class="nav-item nav-link" data-toggle="tab" href="#nav-adventure" role="tab">SÁCH KINH TẾ</a>
                    <a class="nav-item nav-link" data-toggle="tab" href="#nav-children" role="tab">SÁCH VĂN HỌC</a>
                    <a class="nav-item nav-link" data-toggle="tab" href="#nav-cook" role="tab">HỌC TẬP</a>
                </div>
            </div>
        </div>
        <div class="tab__container mt--60">
            <!-- Start Single Tab Content -->
            <div class="row single__tab tab-pane fade show active" id="nav-all" role="tabpanel">
                <div class="product__indicator--4 furniture--4v2 arrows_style owl-carousel owl-theme">
                    <div class="single__product">
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/2-6.jpg"
                                                                                          alt="product image"></a>
                                    <div class="hot__box color--2">
                                        <span class="hot-label">10%</span>
                                    </div>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">Miền đất hứa</a></h4>
                                    <ul class="prize d-flex">
                                        <li>43.000đ</li>
                                    </ul>
                                    <ul class="prize d-flex">
                                        <li class="old_prize">48.000đ</li>
                                    </ul>

                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">
                                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                                </li>
                                                <li><a class="compare" href="wishlist.html"><i
                                                        class="bi bi-heart-beat"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                        <!-- Start Single Product -->
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/8.jpg"
                                                                                          alt="product image"></a>
                                    <div class="hot__box">
                                        <span class="hot-label">15%</span>
                                    </div>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">Đảo mộng mơ</a></h4>
                                    <ul class="prize d-flex">
                                        <li>47.000đ</li>
                                    </ul>
                                    <ul class="prize d-flex">
                                        <li class="old_prize">56.000đ</li>
                                    </ul>

                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">
                                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                                </li>
                                                <li><a class="compare" href="wishlist.html"><i
                                                        class="bi bi-heart-beat"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                        <!-- Start Single Product -->
                    </div>
                    <div class="single__product">
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/9.jpg"
                                                                                          alt="product image"></a>
                                    <div class="hot__box">
                                        <span class="hot-label">12%</span>
                                    </div>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">Hà Nội, mũ rơm và tem phiếu</a></h4>
                                    <ul class="prize d-flex">
                                        <li>32.000đ</li>
                                    </ul>
                                    <ul class="prize d-flex">
                                        <li class="old_prize">36.000đ</li>
                                    </ul>

                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">
                                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                                </li>
                                                <li><a class="compare" href="wishlist.html"><i
                                                        class="bi bi-heart-beat"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                        <!-- Start Single Product -->
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/10.jpg"
                                                                                          alt="product image"></a>
                                    <div class="hot__box color--2">
                                        <span class="hot-label">15%</span>
                                    </div>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">Lê la quán xá quê nhà</a></h4>
                                    <ul class="prize d-flex">
                                        <li>85.000đ</li>
                                    </ul>
                                    <ul class="prize d-flex">
                                        <li class="old_prize">100.000đ</li>
                                    </ul>

                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">
                                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                                </li>
                                                <li><a class="compare" href="wishlist.html"><i
                                                        class="bi bi-heart-beat"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                        <!-- Start Single Product -->
                    </div>
                    <div class="single__product">
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/1.jpg"
                                                                                          alt="product image"></a>
                                    <div class="hot__box color--2">
                                        <span class="hot-label">5%</span>
                                    </div>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">Nhất quỷ nhì ma, thứ ba Takagi</a></h4>
                                    <ul class="prize d-flex">
                                        <li>41.500đ</li>
                                    </ul>
                                    <ul class="prize d-flex">
                                        <li class="old_prize">44.000đ</li>
                                    </ul>

                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">
                                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                                </li>
                                                <li><a class="compare" href="wishlist.html"><i
                                                        class="bi bi-heart-beat"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                        <!-- Start Single Product -->
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/2-12.jpg"
                                                                                          alt="product image"></a>
                                    <div class="hot__box">
                                        <span class="hot-label">8%</span>
                                    </div>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">Siêu quậy Teppei</a></h4>
                                    <ul class="prize d-flex">
                                        <li>51.800đ</li>
                                    </ul>
                                    <ul class="prize d-flex">
                                        <li class="old_prize">55.000đ</li>
                                    </ul>

                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">
                                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                                </li>
                                                <li><a class="compare" href="wishlist.html"><i
                                                        class="bi bi-heart-beat"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                        <!-- Start Single Product -->
                    </div>
                    <div class="single__product">
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/13.jpg"
                                                                                          alt="product image"></a>
                                    <div class="hot__box color--2">
                                        <span class="hot-label">12%</span>
                                    </div>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">Ung thư, tin đồn và sự thật</a></h4>
                                    <ul class="prize d-flex">
                                        <li>58.700đ</li>
                                    </ul>
                                    <ul class="prize d-flex">
                                        <li class="old_prize">66.000đ</li>
                                    </ul>

                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">
                                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                                </li>
                                                <li><a class="compare" href="wishlist.html"><i
                                                        class="bi bi-heart-beat"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                        <!-- Start Single Product -->
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/14.jpg"
                                                                                          alt="product image"></a>
                                    <div class="hot__box">
                                        <span class="hot-label">18%</span>
                                    </div>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">Hẹn gặp em</a></h4>
                                    <ul class="prize d-flex">
                                        <li>64.000đ</li>
                                    </ul>
                                    <ul class="prize d-flex">
                                        <li class="old_prize">78.000đ</li>
                                    </ul>

                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">
                                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                                </li>
                                                <li><a class="compare" href="wishlist.html"><i
                                                        class="bi bi-heart-beat"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                        <!-- Start Single Product -->
                    </div>
                    <div class="single__product">
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/15.jpg"
                                                                                          alt="product image"></a>
                                    <div class="hot__box">
                                        <span class="hot-label">15%</span>
                                    </div>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">Búp bê đường vòng</a></h4>
                                    <ul class="prize d-flex">
                                        <li>109.650đ</li>
                                    </ul>
                                    <ul class="prize d-flex">
                                        <li class="old_prize">129.000đ</li>
                                    </ul>

                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">
                                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                                </li>
                                                <li><a class="compare" href="wishlist.html"><i
                                                        class="bi bi-heart-beat"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                        <!-- Start Single Product -->
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/16.jpg"
                                                                                          alt="product image"></a>
                                    <a class="second__img animation1" href="single-product.html"><img
                                            src="images/books/2.jpg"
                                            alt="product image"></a>
                                    <div class="hot__box color--2">
                                        <span class="hot-label">18%</span>
                                    </div>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">Đọc thầm - Tập 1.2</a></h4>
                                    <ul class="prize d-flex">
                                        <li>230.000đ</li>
                                    </ul>
                                    <ul class="prize d-flex">
                                        <li class="old_prize">283.000đ</li>
                                    </ul>

                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">
                                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                                </li>
                                                <li><a class="compare" href="wishlist.html"><i
                                                        class="bi bi-heart-beat"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                        <!-- Start Single Product -->
                    </div>
                </div>
            </div>
            <!-- End Single Tab Content -->
            <!-- Start Single Tab Content -->
            <div class="row single__tab tab-pane fade" id="nav-biographic" role="tabpanel">
                <div class="product__indicator--4 furniture--4v2 arrows_style owl-carousel owl-theme">
                    <div class="single__product">
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/2-1.jpg"
                                                                                          alt="product image"></a>
                                    <div class="hot__box">
                                        <span class="hot-label">10%</span>
                                    </div>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">Conan - Tập 61</a></h4>
                                    <ul class="prize d-flex">
                                        <li>34.000đ</li>
                                    </ul>
                                    <ul class="prize d-flex">
                                        <li class="old_prize">38.000đ</li>
                                    </ul>

                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">
                                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                                </li>
                                                <li><a class="compare" href="wishlist.html"><i
                                                        class="bi bi-heart-beat"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                        <!-- Start Single Product -->
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/2-2.jpg"
                                                                                          alt="product image"></a>
                                    <div class="hot__box color--2">
                                        <span class="hot-label">12%</span>
                                    </div>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">Conan - Tập 2</a></h4>
                                    <ul class="prize d-flex">
                                        <li>32.000đ</li>
                                    </ul>
                                    <ul class="prize d-flex">
                                        <li class="old_prize">38.000đ</li>
                                    </ul>

                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">
                                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                                </li>
                                                <li><a class="compare" href="wishlist.html"><i
                                                        class="bi bi-heart-beat"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                        <!-- Start Single Product -->
                    </div>
                    <div class="single__product">
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/2-3.jpg"
                                                                                          alt="product image"></a>
                                    <div class="hot__box color--2">
                                        <span class="hot-label">15%</span>
                                    </div>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">Doraemon - Tập 3</a></h4>
                                    <ul class="prize d-flex">
                                        <li>36.000đ</li>
                                    </ul>
                                    <ul class="prize d-flex">
                                        <li class="old_prize">42.000đ</li>
                                    </ul>

                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">
                                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                                </li>
                                                <li><a class="compare" href="wishlist.html"><i
                                                        class="bi bi-heart-beat"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                        <!-- Start Single Product -->
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/2-4.jpg"
                                                                                          alt="product image"></a>
                                    <div class="hot__box color--2">
                                        <span class="hot-label">10%</span>
                                    </div>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">Doraemon - Tập 6</a></h4>
                                    <ul class="prize d-flex">
                                        <li>37.800đ</li>
                                    </ul>
                                    <ul class="prize d-flex">
                                        <li class="old_prize">42.000đ</li>
                                    </ul>

                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">
                                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                                </li>
                                                <li><a class="compare" href="wishlist.html"><i
                                                        class="bi bi-heart-beat"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                        <!-- Start Single Product -->
                    </div>
                    <div class="single__product">
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/10-5.jpg"
                                                                                          alt="product image"></a>
                                    <div class="hot__box">
                                        <span class="hot-label">5%</span>
                                    </div>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">Miền đất hứa - tập 1</a></h4>
                                    <ul class="prize d-flex">
                                        <li>27.000đ</li>
                                    </ul>
                                    <ul class="prize d-flex">
                                        <li class="old_prize">28.000đ</li>
                                    </ul>

                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">
                                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                                </li>
                                                <li><a class="compare" href="wishlist.html"><i
                                                        class="bi bi-heart-beat"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                        <!-- Start Single Product -->
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/10-6.jpg"
                                                                                          alt="product image"></a>
                                    <div class="hot__box color--2">
                                        <span class="hot-label">6%</span>
                                    </div>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">Miền đất hứa - tập 2</a></h4>
                                    <ul class="prize d-flex">
                                        <li>26.000đ</li>
                                    </ul>
                                    <ul class="prize d-flex">
                                        <li class="old_prize">28.000đ</li>
                                    </ul>

                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">
                                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                                </li>
                                                <li><a class="compare" href="wishlist.html"><i
                                                        class="bi bi-heart-beat"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                        <!-- Start Single Product -->
                    </div>
                    <div class="single__product">
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/10-7.jpg"
                                                                                          alt="product image"></a>
                                    <a class="second__img animation1" href="single-product.html"><img
                                            src="images/books/2.jpg"
                                            alt="product image"></a>
                                    <div class="hot__box">
                                        <span class="hot-label">12%</span>
                                    </div>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">Fairy Tail - tập 61</a></h4>
                                    <ul class="prize d-flex">
                                        <li>35.600đ</li>
                                    </ul>
                                    <ul class="prize d-flex">
                                        <li class="old_prize">40.000đ</li>
                                    </ul>

                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">
                                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                                </li>
                                                <li><a class="compare" href="wishlist.html"><i
                                                        class="bi bi-heart-beat"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                        <!-- Start Single Product -->
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/10-8.jpg"
                                                                                          alt="product image"></a>
                                    <a class="second__img animation1" href="single-product.html"><img
                                            src="images/books/2.jpg"
                                            alt="product image"></a>
                                    <div class="hot__box">
                                        <span class="hot-label">15%</span>
                                    </div>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">robin parrish</a></h4>
                                    <ul class="prize d-flex">
                                        <li>34.000đ</li>
                                    </ul>
                                    <ul class="prize d-flex">
                                        <li class="old_prize">40.000đ</li>
                                    </ul>

                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">
                                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                                </li>
                                                <li><a class="compare" href="wishlist.html"><i
                                                        class="bi bi-heart-beat"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                        <!-- Start Single Product -->
                    </div>
                    <div class="single__product">
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/10-9.jpg"
                                                                                          alt="product image"></a>
                                    <a class="second__img animation1" href="single-product.html"><img
                                            src="images/books/2.jpg"
                                            alt="product image"></a>
                                    <div class="hot__box">
                                        <span class="hot-label">8%</span>
                                    </div>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">7 viên ngọc rồng - tập 33</a></h4>
                                    <ul class="prize d-flex">
                                        <li>29.000đ</li>
                                    </ul>
                                    <ul class="prize d-flex">
                                        <li class="old_prize">32.000đ</li>
                                    </ul>

                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">
                                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                                </li>
                                                <li><a class="compare" href="wishlist.html"><i
                                                        class="bi bi-heart-beat"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                        <!-- Start Single Product -->
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/10-10.jpg"
                                                                                          alt="product image"></a>
                                    <a class="second__img animation1" href="single-product.html"><img
                                            src="images/books/2.jpg"
                                            alt="product image"></a>
                                    <div class="hot__box">
                                        <span class="hot-label">BEST</span>
                                    </div>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">7 viên ngọc rồng - tập 5</a></h4>
                                    <ul class="prize d-flex">
                                        <li>29.400đ</li>
                                    </ul>
                                    <ul class="prize d-flex">
                                        <li class="old_prize">32.000đ</li>
                                    </ul>

                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">
                                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                                </li>
                                                <li><a class="compare" href="wishlist.html"><i
                                                        class="bi bi-heart-beat"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                        <!-- Start Single Product -->
                    </div>
                </div>
            </div>
            <!-- End Single Tab Content -->
            <!-- Start Single Tab Content -->
            <div class="row single__tab tab-pane fade" id="nav-adventure" role="tabpanel">
                <div class="product__indicator--4 furniture--4v2 arrows_style owl-carousel owl-theme">
                    <div class="single__product">
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/2-3.jpg"
                                                                                          alt="product image"></a>
                                    <div class="hot__box color--2">
                                        <span class="hot-label">15%</span>
                                    </div>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">Doraemon - Tập 3</a></h4>
                                    <ul class="prize d-flex">
                                        <li>36.000đ</li>
                                    </ul>
                                    <ul class="prize d-flex">
                                        <li class="old_prize">42.000đ</li>
                                    </ul>

                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">
                                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                                </li>
                                                <li><a class="compare" href="wishlist.html"><i
                                                        class="bi bi-heart-beat"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                        <!-- Start Single Product -->
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/2-4.jpg"
                                                                                          alt="product image"></a>
                                    <div class="hot__box color--2">
                                        <span class="hot-label">10%</span>
                                    </div>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">Doraemon - Tập 6</a></h4>
                                    <ul class="prize d-flex">
                                        <li>37.800đ</li>
                                    </ul>
                                    <ul class="prize d-flex">
                                        <li class="old_prize">42.000đ</li>
                                    </ul>

                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">
                                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                                </li>
                                                <li><a class="compare" href="wishlist.html"><i
                                                        class="bi bi-heart-beat"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                        <!-- Start Single Product -->
                    </div>
                    <div class="single__product">
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/2-1.jpg"
                                                                                          alt="product image"></a>
                                    <div class="hot__box">
                                        <span class="hot-label">10%</span>
                                    </div>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">Conan - Tập 61</a></h4>
                                    <ul class="prize d-flex">
                                        <li>34.000đ</li>
                                    </ul>
                                    <ul class="prize d-flex">
                                        <li class="old_prize">38.000đ</li>
                                    </ul>

                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">
                                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                                </li>
                                                <li><a class="compare" href="wishlist.html"><i
                                                        class="bi bi-heart-beat"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                        <!-- Start Single Product -->
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/2-2.jpg"
                                                                                          alt="product image"></a>
                                    <div class="hot__box color--2">
                                        <span class="hot-label">12%</span>
                                    </div>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">Conan - Tập 2</a></h4>
                                    <ul class="prize d-flex">
                                        <li>32.000đ</li>
                                    </ul>
                                    <ul class="prize d-flex">
                                        <li class="old_prize">38.000đ</li>
                                    </ul>

                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">
                                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                                </li>
                                                <li><a class="compare" href="wishlist.html"><i
                                                        class="bi bi-heart-beat"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                        <!-- Start Single Product -->
                    </div>
                    <div class="single__product">
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/10-9.jpg"
                                                                                          alt="product image"></a>
                                    <a class="second__img animation1" href="single-product.html"><img
                                            src="images/books/2.jpg"
                                            alt="product image"></a>
                                    <div class="hot__box">
                                        <span class="hot-label">8%</span>
                                    </div>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">7 viên ngọc rồng - tập 33</a></h4>
                                    <ul class="prize d-flex">
                                        <li>29.000đ</li>
                                    </ul>
                                    <ul class="prize d-flex">
                                        <li class="old_prize">32.000đ</li>
                                    </ul>

                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">
                                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                                </li>
                                                <li><a class="compare" href="wishlist.html"><i
                                                        class="bi bi-heart-beat"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                        <!-- Start Single Product -->
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/10-10.jpg"
                                                                                          alt="product image"></a>
                                    <a class="second__img animation1" href="single-product.html"><img
                                            src="images/books/2.jpg"
                                            alt="product image"></a>
                                    <div class="hot__box">
                                        <span class="hot-label">BEST</span>
                                    </div>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">7 viên ngọc rồng - tập 5</a></h4>
                                    <ul class="prize d-flex">
                                        <li>29.400đ</li>
                                    </ul>
                                    <ul class="prize d-flex">
                                        <li class="old_prize">32.000đ</li>
                                    </ul>

                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">
                                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                                </li>
                                                <li><a class="compare" href="wishlist.html"><i
                                                        class="bi bi-heart-beat"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                        <!-- Start Single Product -->
                    </div>
                    <div class="single__product">
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/10-5.jpg"
                                                                                          alt="product image"></a>
                                    <div class="hot__box">
                                        <span class="hot-label">5%</span>
                                    </div>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">Miền đất hứa - tập 1</a></h4>
                                    <ul class="prize d-flex">
                                        <li>27.000đ</li>
                                    </ul>
                                    <ul class="prize d-flex">
                                        <li class="old_prize">28.000đ</li>
                                    </ul>

                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">
                                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                                </li>
                                                <li><a class="compare" href="wishlist.html"><i
                                                        class="bi bi-heart-beat"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                        <!-- Start Single Product -->
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/10-6.jpg"
                                                                                          alt="product image"></a>
                                    <div class="hot__box color--2">
                                        <span class="hot-label">6%</span>
                                    </div>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">Miền đất hứa - tập 2</a></h4>
                                    <ul class="prize d-flex">
                                        <li>26.000đ</li>
                                    </ul>
                                    <ul class="prize d-flex">
                                        <li class="old_prize">28.000đ</li>
                                    </ul>

                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">
                                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                                </li>
                                                <li><a class="compare" href="wishlist.html"><i
                                                        class="bi bi-heart-beat"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                        <!-- Start Single Product -->
                    </div>
                    <div class="single__product">
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/10-7.jpg"
                                                                                          alt="product image"></a>
                                    <a class="second__img animation1" href="single-product.html"><img
                                            src="images/books/2.jpg"
                                            alt="product image"></a>
                                    <div class="hot__box">
                                        <span class="hot-label">12%</span>
                                    </div>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">Fairy Tail - tập 61</a></h4>
                                    <ul class="prize d-flex">
                                        <li>35.600đ</li>
                                    </ul>
                                    <ul class="prize d-flex">
                                        <li class="old_prize">40.000đ</li>
                                    </ul>

                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">
                                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                                </li>
                                                <li><a class="compare" href="wishlist.html"><i
                                                        class="bi bi-heart-beat"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                        <!-- Start Single Product -->
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/10-8.jpg"
                                                                                          alt="product image"></a>
                                    <a class="second__img animation1" href="single-product.html"><img
                                            src="images/books/2.jpg"
                                            alt="product image"></a>
                                    <div class="hot__box">
                                        <span class="hot-label">15%</span>
                                    </div>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">robin parrish</a></h4>
                                    <ul class="prize d-flex">
                                        <li>34.000đ</li>
                                    </ul>
                                    <ul class="prize d-flex">
                                        <li class="old_prize">40.000đ</li>
                                    </ul>

                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">
                                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                                </li>
                                                <li><a class="compare" href="wishlist.html"><i
                                                        class="bi bi-heart-beat"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                        <!-- Start Single Product -->
                    </div>
                </div>
            </div>
            <!-- End Single Tab Content -->
            <!-- Start Single Tab Content -->
            <div class="row single__tab tab-pane fade" id="nav-children" role="tabpanel">
                <div class="product__indicator--4 furniture--4v2 arrows_style owl-carousel owl-theme">
                    <div class="single__product">
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/2-1.jpg"
                                                                                          alt="product image"></a>
                                    <div class="hot__box">
                                        <span class="hot-label">10%</span>
                                    </div>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">Conan - Tập 61</a></h4>
                                    <ul class="prize d-flex">
                                        <li>34.000đ</li>
                                    </ul>
                                    <ul class="prize d-flex">
                                        <li class="old_prize">38.000đ</li>
                                    </ul>

                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">
                                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                                </li>
                                                <li><a class="compare" href="wishlist.html"><i
                                                        class="bi bi-heart-beat"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                        <!-- Start Single Product -->
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/2-2.jpg"
                                                                                          alt="product image"></a>
                                    <div class="hot__box color--2">
                                        <span class="hot-label">12%</span>
                                    </div>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">Conan - Tập 2</a></h4>
                                    <ul class="prize d-flex">
                                        <li>32.000đ</li>
                                    </ul>
                                    <ul class="prize d-flex">
                                        <li class="old_prize">38.000đ</li>
                                    </ul>

                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">
                                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                                </li>
                                                <li><a class="compare" href="wishlist.html"><i
                                                        class="bi bi-heart-beat"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                        <!-- Start Single Product -->
                    </div>
                    <div class="single__product">
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/10-3.jpg"
                                                                                          alt="product image"></a>
                                    <div class="hot__box color--2">
                                        <span class="hot-label">15%</span>
                                    </div>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">Doraemon - Tập 3</a></h4>
                                    <ul class="prize d-flex">
                                        <li>36.000đ</li>
                                    </ul>
                                    <ul class="prize d-flex">
                                        <li class="old_prize">42.000đ</li>
                                    </ul>

                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">
                                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                                </li>
                                                <li><a class="compare" href="wishlist.html"><i
                                                        class="bi bi-heart-beat"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                        <!-- Start Single Product -->
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/10-4.jpg"
                                                                                          alt="product image"></a>
                                    <div class="hot__box color--2">
                                        <span class="hot-label">10%</span>
                                    </div>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">Doraemon - Tập 6</a></h4>
                                    <ul class="prize d-flex">
                                        <li>37.800đ</li>
                                    </ul>
                                    <ul class="prize d-flex">
                                        <li class="old_prize">42.000đ</li>
                                    </ul>

                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">
                                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                                </li>
                                                <li><a class="compare" href="wishlist.html"><i
                                                        class="bi bi-heart-beat"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                        <!-- Start Single Product -->
                    </div>
                    <div class="single__product">
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/10-5.jpg"
                                                                                          alt="product image"></a>
                                    <div class="hot__box">
                                        <span class="hot-label">5%</span>
                                    </div>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">Miền đất hứa - tập 1</a></h4>
                                    <ul class="prize d-flex">
                                        <li>27.000đ</li>
                                    </ul>
                                    <ul class="prize d-flex">
                                        <li class="old_prize">28.000đ</li>
                                    </ul>

                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">
                                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                                </li>
                                                <li><a class="compare" href="wishlist.html"><i
                                                        class="bi bi-heart-beat"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                        <!-- Start Single Product -->
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/10-6.jpg"
                                                                                          alt="product image"></a>
                                    <div class="hot__box color--2">
                                        <span class="hot-label">6%</span>
                                    </div>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">Miền đất hứa - tập 2</a></h4>
                                    <ul class="prize d-flex">
                                        <li>26.000đ</li>
                                    </ul>
                                    <ul class="prize d-flex">
                                        <li class="old_prize">28.000đ</li>
                                    </ul>

                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">
                                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                                </li>
                                                <li><a class="compare" href="wishlist.html"><i
                                                        class="bi bi-heart-beat"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                        <!-- Start Single Product -->
                    </div>
                    <div class="single__product">
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/10-7.jpg"
                                                                                          alt="product image"></a>
                                    <a class="second__img animation1" href="single-product.html"><img
                                            src="images/books/2.jpg"
                                            alt="product image"></a>
                                    <div class="hot__box">
                                        <span class="hot-label">12%</span>
                                    </div>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">Fairy Tail - tập 61</a></h4>
                                    <ul class="prize d-flex">
                                        <li>35.600đ</li>
                                    </ul>
                                    <ul class="prize d-flex">
                                        <li class="old_prize">40.000đ</li>
                                    </ul>

                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">
                                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                                </li>
                                                <li><a class="compare" href="wishlist.html"><i
                                                        class="bi bi-heart-beat"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                        <!-- Start Single Product -->
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/10-8.jpg"
                                                                                          alt="product image"></a>
                                    <a class="second__img animation1" href="single-product.html"><img
                                            src="images/books/2.jpg"
                                            alt="product image"></a>
                                    <div class="hot__box">
                                        <span class="hot-label">15%</span>
                                    </div>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">robin parrish</a></h4>
                                    <ul class="prize d-flex">
                                        <li>34.000đ</li>
                                    </ul>
                                    <ul class="prize d-flex">
                                        <li class="old_prize">40.000đ</li>
                                    </ul>

                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">
                                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                                </li>
                                                <li><a class="compare" href="wishlist.html"><i
                                                        class="bi bi-heart-beat"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                        <!-- Start Single Product -->
                    </div>
                    <div class="single__product">
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/10-9.jpg"
                                                                                          alt="product image"></a>
                                    <a class="second__img animation1" href="single-product.html"><img
                                            src="images/books/2.jpg"
                                            alt="product image"></a>
                                    <div class="hot__box">
                                        <span class="hot-label">8%</span>
                                    </div>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">7 viên ngọc rồng - tập 33</a></h4>
                                    <ul class="prize d-flex">
                                        <li>29.000đ</li>
                                    </ul>
                                    <ul class="prize d-flex">
                                        <li class="old_prize">32.000đ</li>
                                    </ul>

                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">
                                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                                </li>
                                                <li><a class="compare" href="wishlist.html"><i
                                                        class="bi bi-heart-beat"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                        <!-- Start Single Product -->
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/10-10.jpg"
                                                                                          alt="product image"></a>
                                    <a class="second__img animation1" href="single-product.html"><img
                                            src="images/books/2.jpg"
                                            alt="product image"></a>
                                    <div class="hot__box">
                                        <span class="hot-label">BEST</span>
                                    </div>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">7 viên ngọc rồng - tập 5</a></h4>
                                    <ul class="prize d-flex">
                                        <li>29.400đ</li>
                                    </ul>
                                    <ul class="prize d-flex">
                                        <li class="old_prize">32.000đ</li>
                                    </ul>

                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">
                                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                                </li>
                                                <li><a class="compare" href="wishlist.html"><i
                                                        class="bi bi-heart-beat"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                        <!-- Start Single Product -->
                    </div>
                </div>
            </div>
            <!-- End Single Tab Content -->
            <!-- Start Single Tab Content -->
            <div class="row single__tab tab-pane fade" id="nav-cook" role="tabpanel">
                <div class="product__indicator--4 furniture--4v2 arrows_style owl-carousel owl-theme">
                    <div class="single__product">
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/2-1.jpg"
                                                                                          alt="product image"></a>
                                    <div class="hot__box">
                                        <span class="hot-label">10%</span>
                                    </div>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">Conan - Tập 61</a></h4>
                                    <ul class="prize d-flex">
                                        <li>34.000đ</li>
                                    </ul>
                                    <ul class="prize d-flex">
                                        <li class="old_prize">38.000đ</li>
                                    </ul>

                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">
                                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                                </li>
                                                <li><a class="compare" href="wishlist.html"><i
                                                        class="bi bi-heart-beat"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                        <!-- Start Single Product -->
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/2-2.jpg"
                                                                                          alt="product image"></a>
                                    <div class="hot__box color--2">
                                        <span class="hot-label">12%</span>
                                    </div>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">Conan - Tập 2</a></h4>
                                    <ul class="prize d-flex">
                                        <li>32.000đ</li>
                                    </ul>
                                    <ul class="prize d-flex">
                                        <li class="old_prize">38.000đ</li>
                                    </ul>

                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">
                                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                                </li>
                                                <li><a class="compare" href="wishlist.html"><i
                                                        class="bi bi-heart-beat"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                        <!-- Start Single Product -->
                    </div>
                    <div class="single__product">
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/10-3.jpg"
                                                                                          alt="product image"></a>
                                    <div class="hot__box color--2">
                                        <span class="hot-label">15%</span>
                                    </div>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">Doraemon - Tập 3</a></h4>
                                    <ul class="prize d-flex">
                                        <li>36.000đ</li>
                                    </ul>
                                    <ul class="prize d-flex">
                                        <li class="old_prize">42.000đ</li>
                                    </ul>

                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">
                                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                                </li>
                                                <li><a class="compare" href="wishlist.html"><i
                                                        class="bi bi-heart-beat"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                        <!-- Start Single Product -->
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/10-4.jpg"
                                                                                          alt="product image"></a>
                                    <div class="hot__box color--2">
                                        <span class="hot-label">10%</span>
                                    </div>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">Doraemon - Tập 6</a></h4>
                                    <ul class="prize d-flex">
                                        <li>37.800đ</li>
                                    </ul>
                                    <ul class="prize d-flex">
                                        <li class="old_prize">42.000đ</li>
                                    </ul>

                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">
                                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                                </li>
                                                <li><a class="compare" href="wishlist.html"><i
                                                        class="bi bi-heart-beat"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                        <!-- Start Single Product -->
                    </div>
                    <div class="single__product">
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/10-5.jpg"
                                                                                          alt="product image"></a>
                                    <div class="hot__box">
                                        <span class="hot-label">5%</span>
                                    </div>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">Miền đất hứa - tập 1</a></h4>
                                    <ul class="prize d-flex">
                                        <li>27.000đ</li>
                                    </ul>
                                    <ul class="prize d-flex">
                                        <li class="old_prize">28.000đ</li>
                                    </ul>

                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">
                                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                                </li>
                                                <li><a class="compare" href="wishlist.html"><i
                                                        class="bi bi-heart-beat"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                        <!-- Start Single Product -->
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/10-6.jpg"
                                                                                          alt="product image"></a>
                                    <div class="hot__box color--2">
                                        <span class="hot-label">6%</span>
                                    </div>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">Miền đất hứa - tập 2</a></h4>
                                    <ul class="prize d-flex">
                                        <li>26.000đ</li>
                                    </ul>
                                    <ul class="prize d-flex">
                                        <li class="old_prize">28.000đ</li>
                                    </ul>

                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">
                                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                                </li>
                                                <li><a class="compare" href="wishlist.html"><i
                                                        class="bi bi-heart-beat"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                        <!-- Start Single Product -->
                    </div>
                    <div class="single__product">
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/10-7.jpg"
                                                                                          alt="product image"></a>
                                    <a class="second__img animation1" href="single-product.html"><img
                                            src="images/books/2.jpg"
                                            alt="product image"></a>
                                    <div class="hot__box">
                                        <span class="hot-label">12%</span>
                                    </div>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">Fairy Tail - tập 61</a></h4>
                                    <ul class="prize d-flex">
                                        <li>35.600đ</li>
                                    </ul>
                                    <ul class="prize d-flex">
                                        <li class="old_prize">40.000đ</li>
                                    </ul>

                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">
                                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                                </li>
                                                <li><a class="compare" href="wishlist.html"><i
                                                        class="bi bi-heart-beat"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                        <!-- Start Single Product -->
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/10-8.jpg"
                                                                                          alt="product image"></a>
                                    <a class="second__img animation1" href="single-product.html"><img
                                            src="images/books/2.jpg"
                                            alt="product image"></a>
                                    <div class="hot__box">
                                        <span class="hot-label">15%</span>
                                    </div>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">robin parrish</a></h4>
                                    <ul class="prize d-flex">
                                        <li>34.000đ</li>
                                    </ul>
                                    <ul class="prize d-flex">
                                        <li class="old_prize">40.000đ</li>
                                    </ul>

                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">
                                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                                </li>
                                                <li><a class="compare" href="wishlist.html"><i
                                                        class="bi bi-heart-beat"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                        <!-- Start Single Product -->
                    </div>
                    <div class="single__product">
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/10-9.jpg"
                                                                                          alt="product image"></a>
                                    <a class="second__img animation1" href="single-product.html"><img
                                            src="images/books/2.jpg"
                                            alt="product image"></a>
                                    <div class="hot__box">
                                        <span class="hot-label">8%</span>
                                    </div>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">7 viên ngọc rồng - tập 33</a></h4>
                                    <ul class="prize d-flex">
                                        <li>29.000đ</li>
                                    </ul>
                                    <ul class="prize d-flex">
                                        <li class="old_prize">32.000đ</li>
                                    </ul>

                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">
                                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                                </li>
                                                <li><a class="compare" href="wishlist.html"><i
                                                        class="bi bi-heart-beat"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                        <!-- Start Single Product -->
                        <!-- Start Single Product -->
                        <div class="product product__style--3">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                <div class="product__thumb">
                                    <a class="first__img" href="single-product.html"><img src="images/books/10-10.jpg"
                                                                                          alt="product image"></a>
                                    <a class="second__img animation1" href="single-product.html"><img
                                            src="images/books/2.jpg"
                                            alt="product image"></a>
                                    <div class="hot__box">
                                        <span class="hot-label">BEST</span>
                                    </div>
                                </div>
                                <div class="product__content content--center">
                                    <h4><a href="single-product.html">7 viên ngọc rồng - tập 5</a></h4>
                                    <ul class="prize d-flex">
                                        <li>29.400đ</li>
                                    </ul>
                                    <ul class="prize d-flex">
                                        <li class="old_prize">32.000đ</li>
                                    </ul>

                                    <div class="action">
                                        <div class="actions_inner">
                                            <ul class="add_to_links">
                                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                                </li>
                                                <li><a class="compare" href="wishlist.html"><i
                                                        class="bi bi-heart-beat"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product__hover--content">
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li class="on"><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Start Single Product -->
                        </div>
                        <!-- Start Single Product -->
                    </div>
                </div>
            </div>
            <!-- End Single Tab Content -->
        </div>
    </div>
</section>
<!-- Start BEst Seller Area -->
<!-- Start Recent Post Area -->

<!-- Best Sale Area -->
<section class="best-seel-area pb--60">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section__title text-center pb--50">
                    <h2 class="title__be--2"><span class="color--theme">Top 10 sách chọn lọc </span></h2>
                    <p class="cautho">"Cuốn sách tốt nhất cho bạn là cuốn sách nói nhiều nhất với bạn vào lúc bạn đọc
                        nói. Tôi không
                        nói tới cuốn sách cho bạn nhiều bài học nhất mà là cuốn sách nuôi dưỡng tâm hồn bạn. Và điều đó
                        phụ thuộc vào tuổi tác, trải nghiệm, nhu cầu về tâm lý và tinh thần.” - <b>Robertson Davies</b>
                    </p>
                </div>
            </div>
        </div>
    </div>
    <div id="owl-demo" class="owl-carousel owl-theme">

        <div class="item">
            <div class="product product__style--3">
                <div class="product__thumb">
                    <a class="first__img" href="single-product.html"><img src="images/books/10-1.jpg"
                                                                          alt="product image"></a>
                </div>
                <div class="product__content content--center">
                    <div class="action">
                        <div class="actions_inner">
                            <ul class="add_to_links">
                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                </li>
                                <li><a class="compare" href="wishlist.html"><i class="bi bi-heart-beat"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="item">
            <div class="product product__style--3">
                <div class="product__thumb">
                    <a class="first__img" href="single-product.html"><img src="images/books/10-2.jpg"
                                                                          alt="product image"></a>
                </div>
                <div class="product__content content--center">
                    <div class="action">
                        <div class="actions_inner">
                            <ul class="add_to_links">
                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                </li>
                                <li><a class="compare" href="wishlist.html"><i class="bi bi-heart-beat"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="item">
            <div class="product product__style--3">
                <div class="product__thumb">
                    <a class="first__img" href="single-product.html"><img src="images/books/10-3.jpg"
                                                                          alt="product image"></a>
                </div>
                <div class="product__content content--center">
                    <div class="action">
                        <div class="actions_inner">
                            <ul class="add_to_links">
                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                </li>
                                <li><a class="compare" href="wishlist.html"><i class="bi bi-heart-beat"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="item">
            <div class="product product__style--3">
                <div class="product__thumb">
                    <a class="first__img" href="single-product.html"><img src="images/books/10-4.jpg"
                                                                          alt="product image"></a>
                </div>
                <div class="product__content content--center">
                    <div class="action">
                        <div class="actions_inner">
                            <ul class="add_to_links">
                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                </li>
                                <li><a class="compare" href="wishlist.html"><i class="bi bi-heart-beat"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="item">
            <div class="product product__style--3">
                <div class="product__thumb">
                    <a class="first__img" href="single-product.html"><img src="images/books/10-5.jpg"
                                                                          alt="product image"></a>
                </div>
                <div class="product__content content--center">
                    <div class="action">
                        <div class="actions_inner">
                            <ul class="add_to_links">
                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                </li>
                                <li><a class="compare" href="wishlist.html"><i class="bi bi-heart-beat"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="item">
            <div class="product product__style--3">
                <div class="product__thumb">
                    <a class="first__img" href="single-product.html"><img src="images/books/10-6.jpg"
                                                                          alt="product image"></a>
                </div>
                <div class="product__content content--center">
                    <div class="action">
                        <div class="actions_inner">
                            <ul class="add_to_links">
                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                </li>
                                <li><a class="compare" href="wishlist.html"><i class="bi bi-heart-beat"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="item">
            <div class="product product__style--3">
                <div class="product__thumb">
                    <a class="first__img" href="single-product.html"><img src="images/books/10-7.jpg"
                                                                          alt="product image"></a>
                </div>
                <div class="product__content content--center">
                    <div class="action">
                        <div class="actions_inner">
                            <ul class="add_to_links">
                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                </li>
                                <li><a class="compare" href="wishlist.html"><i class="bi bi-heart-beat"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="item">
            <div class="product product__style--3">
                <div class="product__thumb">
                    <a class="first__img" href="single-product.html"><img src="images/books/10-8.jpg"
                                                                          alt="product image"></a>
                </div>
                <div class="product__content content--center">
                    <div class="action">
                        <div class="actions_inner">
                            <ul class="add_to_links">
                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                </li>
                                <li><a class="compare" href="wishlist.html"><i class="bi bi-heart-beat"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="item">
            <div class="product product__style--3">
                <div class="product__thumb">
                    <a class="first__img" href="single-product.html"><img src="images/books/10-9.jpg"
                                                                          alt="product image"></a>
                </div>
                <div class="product__content content--center">
                    <div class="action">
                        <div class="actions_inner">
                            <ul class="add_to_links">
                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                </li>
                                <li><a class="compare" href="wishlist.html"><i class="bi bi-heart-beat"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="item">
            <div class="product product__style--3">
                <div class="product__thumb">
                    <a class="first__img" href="single-product.html"><img src="images/books/10-10.jpg"
                                                                          alt="product image"></a>
                </div>
                <div class="product__content content--center">
                    <div class="action">
                        <div class="actions_inner">
                            <ul class="add_to_links">
                                <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a>
                                </li>
                                <li><a class="compare" href="wishlist.html"><i class="bi bi-heart-beat"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </div>
    <div class="customNavigation" style="text-align: center">
        <button class=" button play" title="Phát"><i class="bi bi-play-button fa-2x"></i></button>
        <button class=" button stop" title="Dừng"><i class="bi bi-stop-watch fa-2x"></i></button>
    </div>
</section>
<!-- Best Sale Area Area -->
<script>
    $(document).ready(function () {

        var owl = $('.owl-carousel');
        owl.owlCarousel({
            items: 7,
            loop: true,
            margin: 10,
            autoplay: true,
            autoplayTimeout: 2000,
            autoplayHoverPause: true
        });
        $('.play').on('click', function () {
            owl.trigger('play.owl.autoplay', [1000])
        })
        $('.stop').on('click', function () {
            owl.trigger('stop.owl.autoplay')
        })
    });
</script>
 <jsp:include page="footer.jsp"></jsp:include>

</body>
</html>