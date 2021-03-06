<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
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
                            <li class="drop with--one--item"><a class="active" href='<c:url value="/"/>'>Trang ch???</a></li>
                            <li class="drop"><a href="#">Th??? lo???i</a>
                                <div class="megamenu dropdown">
                              
                                    <ul class="item item01">
                                        <li class="title">"?????c s??ch cho t??m tr?? c??ng c???n nh?? t???p th??? d???c cho c?? th???. "</li>
                                          <c:forEach var="danhmuc" items="${DanhMuc}">
                                        <li><a href="danhmucsanpham/${danhmuc.getMadanhmuc() }">${danhmuc.getTendanhmuc() }</a></li>
                                        </c:forEach>
                                    </ul>
                                    
                                </div>
                            </li>
                            <li class="drop"><a href="#">Nh?? Xu???t B???n</a>
                                <div class="megamenu dropdown">
                                    <ul class="item item01">
                                        <li class="title">"?????c s??ch cho t??m tr?? c??ng c???n nh?? t???p th??? d???c cho c?? th???. "
                                        </li>
                                        <c:forEach var="nhaxuatban" items="${NhaXuatBan}">
                                        <li><a href="danhmucsanpham/${nhaxuatban.getManhaxuatban()}">${nhaxuatban.getTennhaxuatban() }</a></li>
                                      	</c:forEach>
                                    </ul>
                                </div>
                            </li>
                            <li class="drop"><a href="blog.html">Tin t???c</a>
                            </li>
                            <li><a href="contact.html">Li??n h???</a></li>
                        </ul>

                    </nav>
                </div>
                <div class="col-md-6 col-sm-6 col-6 col-lg-2">
                    <ul class="header__sidebar__right d-flex justify-content-end  align-items-center">
                        <li class="shop_search wishlist"><a class="search__active" href="#"><i class="fa fa-search"></i>
                            T??m ki???m</a></li>
                        <li class="wishlist"><a href="wishlist.html"><i class="fa fa-heart"></i> Y??u th??ch</a></li>
                        <li class="shopcart wishlist">

                            <a href='<c:url value="/giohang/"/>'>
                                <div id="giohang">
                                <c:if test="${soluongsanphamgiohang>0}">
                                    <i class="fa fa-shopping-cart"></i><b> Gi??? h??ng<span class="product_qun">${soluongsanphamgiohang}</span></b>
                                </div>
                                </c:if>
                                <c:if test="${soluongsanphamgiohang<0 || soluongsanphamgiohang ==null}">
                                    <i class="fa fa-shopping-cart"></i><b> Gi??? h??ng<span>${soluongsanphamgiohang}</span></b>
                                </div>
                                </c:if>

                            </a>
                        </li>
                        <li class="setting__bar__icon wishlist"><a class="setting__active" href="#"><i
                                class="fa fa-user-circle"></i>T??i kho???n</a>
                            <div class="searchbar__content setting__block">
                                <div class="content-inner">
                                    <div class="switcher-currency">
                                        <strong class="label switcher-label">
                                         <sec:authorize access="hasRole('EMPLOYEE')">
                                            <span id="username"><sec:authentication property="principal.username"/></span>
      
                                            </sec:authorize>
                                        </strong>
                                        <div class="switcher-options">
                                            <div class="switcher-currency-trigger">
                                                <div class="setting__menu">
                                                <sec:authorize access="hasRole('MANAGER')">
                                                    <div class="login"><a href='<c:url value="/dashboard/"/>'><i
                                                            class="fa fa-sign-in"></i> Admin Page
                                                        </a></div>
                                                    
                                                     <form:form action="logout" method="POST">       
                                                    <div class="logout"><i class="fa fa-sign-out"></i> <input type="submit" class="btn-link" value="????ng Xu???t" /></div>
                                                    
                                                        </form:form>
                                                        </sec:authorize>
                                                         <sec:authorize access="hasRole('EMPLOYEE')">
                                                          <div class="update"><a href="updateaccount.html"><i
                                                            class="fa fa-upload"></i> C???p nh???t t??i kho???n</a></div>
                                                     <form:form action="logout" method="POST">       
                                                    <div class="logout"><i class="fa fa-sign-out"></i> <input type="submit" class="btn-link" value="????ng Xu???t" /></div>
                                                    
                                                        </form:form>
                                                        </sec:authorize>
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
                            <li><a href="index.html">Trang ch???</a></li>
                            <li><a href="#">Th??? lo???i</a>
                                <ul>
                                    <li><a href="about.html">TL1</a></li>
                                    <li><a href="portfolio.html">TL2</a>
                                        <ul>
                                            <li><a href="portfolio.html">Blog</a></li>
                                            <li><a href="portfolio-details.html">N???i dung Blog</a></li>
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
                            <li><a href="shop-grid.html">Khuy??n ?????c</a>
                                <ul>
                                    <li><a href="shop-grid.html">Shop Grid</a></li>
                                    <li><a href="single-product.html">Single Product</a></li>
                                </ul>
                            </li>
                            <li><a href="blog.html">Blog</a>
                                <ul>
                                    <li><a href="blog.html">Blog</a></li>
                                    <li><a href="blog-details.html">Blog N???i dung Blog</a></li>
                                </ul>
                            </li>
                            <li><a href="contact.html">Li??n h???</a></li>
                        </ul>

                    </nav>
                </div>
            </div>
            <!-- End Mobile Menu -->
            <div class="mobile-menu d-block d-lg-none">
            </div>
            <!-- Mobile Menu -->
            <div class="box-search-content search_active block-bg close__top">
        <form id="search_mini_form" class="minisearch" action='<c:url value="/SearchPage"/>' method="POST" modelAttribute="sanpham">
            <div class="field__search">
                <input id="ketquatimkiem" path="tensanpham" name="tensanpham" type="text" placeholder="Nh???p t??? kh??a..."/>
            </div>
              <div  class="field__search" id="searchresult"></div>
            
        </form>
        <div class="close__wrap">
            <span>????ng</span>
        </div>
         
    </div>
  
    <!-- End Search Popup -->
        </div>
        
    </header>
<script src='<c:url value="/resources/js/custom.js"/>'></script>
</body>
</html>