<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<!-- Start Shop Page -->
    <div class="page-shop-sidebar left--sidebar bg--white section-padding--lg">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-12 order-2 order-lg-1 md-mt-40 sm-mt-40">
                    <div class="shop__sidebar">
                        <aside class="wedget__categories poroduct--cat">
                            <h3 class="wedget__title">Thể loại</h3>
                            <ul>
                               <c:forEach var="danhmuc" items="${DanhMuc}">
                                <li><a href='<c:url value="/danhmucsanpham/${danhmuc.getMadanhmuc()}"/>'>${danhmuc.getTendanhmuc()} <span>(10)</span></a></li>
                             </c:forEach>
                            </ul>
                        </aside>
                        <aside class="wedget__categories poroduct--tag">
                            <h3 class="wedget__title">Giá</h3>
                            <ul>
                                <li><a href="#">Trên 500.000đ</a></li>
                                <li><a href="#">Trên 300.000đ</a></li>
                                <li><a href="#">Trên 200.000đ</a></li>
                                <li><a href="#">Trên 100.000đ</a></li>
                                <li><a href="#">Dưới 100.000đ</a></li>
                                <li><a href="#">Dưới 50.000đ</a></li>
                            </ul>
                        </aside>
                        <aside class="wedget__categories poroduct--cat">
                            <h3 class="wedget__title">Nhà xuất bản</h3>
                            <ul>
                            <c:forEach var="nhaxuatban" items="${NhaXuatBan}">
                                <li><a href='<c:url value="/danhmucsanpham/${nhaxuatban.getManhaxuatban()}"/>'>${nhaxuatban.getTennhaxuatban() } <span>(20)</span></a></li>
                                </c:forEach>
                            </ul>
                        </aside>
                        <aside>
                            <div class="wn__sidebar">
                                <!-- Start Single Widget -->
                                <aside class="widget search_widget">
                                    <h3 class="widget-title">Big sale</h3>
                                    <!--        						<form action="#">-->
                                    <!--        							<div class="form-input">-->
                                    <!--        								<input type="text" placeholder="Search...">-->
                                    <!--        								<button><i class="fa fa-search"></i></button>-->
                                    <!--        							</div>-->
                                    <!--        						</form>-->
                                    <a href="#"><img src="images/blog/blog-3/announce.jpg"></a>
                                </aside>
                                <!-- End Single Widget -->
                                <!-- Start Single Widget -->
                                <aside class="widget search_widget">
                                    <h3 class="widget-title">Sale 50%</h3>
                                    <!--        						<form action="#">-->
                                    <!--        							<div class="form-input">-->
                                    <!--        								<input type="text" placeholder="Search...">-->
                                    <!--        								<button><i class="fa fa-search"></i></button>-->
                                    <!--        							</div>-->
                                    <!--        						</form>-->
                                    <a href="#"><img src="images/blog/blog-3/5e26e38df1b4471f732e7b89f3cd6601.jpg"></a>
                                </aside>
                                <!-- End Single Widget -->
                                <!-- Start Single Widget -->
                                <aside class="widget search_widget">
                                    <h3 class="widget-title">Sale 8/3</h3>
                                    <!--        						<form action="#">-->
                                    <!--        							<div class="form-input">-->
                                    <!--        								<input type="text" placeholder="Search...">-->
                                    <!--        								<button><i class="fa fa-search"></i></button>-->
                                    <!--        							</div>-->
                                    <!--        						</form>-->
                                    <a href="#"><img src="images/blog/blog-3/52999962-994063307450168-3207249248986857472-n.png"></a>
                                </aside>
                                <!-- End Single Widget -->
                            </div>

                            <img src="images/png-img/momo.jpg" height="700" width="400"/></aside>
                    </div>
                </div>
                <div class="col-lg-9 col-12 order-1 order-lg-2">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="shop__list__wrapper d-flex flex-wrap flex-md-nowrap justify-content-between">
                                <div class="shop__list nav justify-content-center" role="tablist">
                                    <a class="nav-item nav-link active" data-toggle="tab" href="#nav-grid" role="tab"><i
                                            class="fa fa-th"></i></a>
                                    <a class="nav-item nav-link" data-toggle="tab" href="#nav-list" role="tab"><i
                                            class="fa fa-list"></i></a>
                                </div>
                                <p>Hiển thị 1–12 của 20 quyển sách</p>
                            </div>
                        </div>
                    </div>
                    <div class="tab__container">
                        <div class="shop-grid tab-pane fade show active" id="nav-grid" role="tabpanel">
                            <div class="row">
                                <!-- Start Single Product -->
                                <c:forEach var="sanpham" items="${listsearch}">
                                 <c:forEach var="chitietsanpham" items="${sanpham.getDanhsachchiTietSanPham()}">
                                <div class="product product__style--3 col-lg-4 col-md-4 col-sm-6 col-12">
                                    <div class="product__thumb">
                                        <a class="first__img" href='<c:url value="/chitiet/${sanpham.getMasanpham()}"/>'><img
                                                src='<c:url value="${sanpham.getHinhsanpham()}"/>'
                                                alt="product image"></a>
                                        <div class="hot__box">
                                            <span class="hot-label">${Math.round(((chitietsanpham.getKhuyenmai().getGiagiam())/sanpham.getGiatien())*100) }%</span>
                                        </div>
                                    </div>
                                    <div class="product__content content--center">
                                        <h4><a href='<c:url value="/chitiet/${sanpham.getMasanpham()}"/>'>${sanpham.getTensanpham()}</a></h4>
                                        
                                        <ul class="prize d-flex">
                                            <li>${sanpham.getGiatien() - (chitietsanpham.getKhuyenmai().getGiagiam())}</li>
                                        </ul>
                                        <ul class="prize d-flex">
                                            <li class="old_prize">${sanpham.getGiatien()}đ</li>
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
                                </c:forEach>
                                </c:forEach>
                                <!-- Start Single Product -->
                            </div>
                            <ul class="wn__pagination">
                                    <li><a href='<c:url value="/danhmucsanpham/0/${pagenumber-1}"/>'><i class="zmdi zmdi-chevron-left"></i></a></li>
                                 <c:forEach var="i" begin ="1" end="${tongsopage}"> 
                                 <c:choose>
                            <c:when test="${i==1 }">
                                <li class="paging-item active"><a href='<c:url value="/danhmucsanpham/0/${i}"/>'>${i}</a></li>
                                </c:when>
                                     <c:otherwise >
                                <li class="paging-item "><a href='<c:url value="/danhmucsanpham/0/${i}"/>'>${i}</a></li>
                                </c:otherwise>
                                </c:choose>
                                </c:forEach>
                                <li><a href='<c:url value="/danhmucsanpham/0/${pagenumber+1}"/>'><i class="zmdi zmdi-chevron-right"></i></a></li>
                               
                            </ul>
                        </div>
                        <div class="shop-grid tab-pane fade" id="nav-list" role="tabpanel">
                            <div class="list__view__wrapper">
                              <c:forEach var="sanpham" items="${listsearch}">
                               <c:forEach var="chitietsanpham" items="${sanpham.getDanhsachchiTietSanPham()}">
                                <!-- Start Single Product -->
                                <div class="list__view">
                                    <div class="thumb">
                                        <a class="first__img" href='<c:url value="/chitiet/${sanpham.getMasanpham()}"/>'><img
                                                src='<c:url value="${sanpham.getHinhsanpham()}"/>' alt="product images"></a>
                                    </div>
                                    <div class="content">
                                        <h2><a href='<c:url value="/chitiet/${sanpham.getMasanpham()}"/>'>${sanpham.getTensanpham()}</a></h2>
                                        <ul class="prize__box">
                                            <li>${sanpham.getGiatien() - (chitietsanpham.getKhuyenmai().getGiagiam())}</li>
                                            <li class="old__prize">${sanpham.getGiatien()}đ</li>
                                        </ul>
                                        <p>${sanpham.getMota()}đ</p>
                                        <ul class="cart__action d-flex">
                                            <li class="cart"><a href="cart.html"><i
                                                    class="fa fa-shopping-cart"></i> Thêm vào giỏ hàng</a></li>
                                            <li class="cart"><a href="cart.html"><i
                                                    class="fa fa-heart"></i> Yêu thích</a></li>
                                        </ul>

                                    </div>
                                </div>
                                </c:forEach>
                                </c:forEach>
                                <!-- End Single Product -->
                            
                            </div>
                            <ul class="wn__pagination">
                           
                                  <li><a href='<c:url value="/danhmucsanpham/0/${pagenumber-1}"/>'><i class="zmdi zmdi-chevron-left"></i></a></li>
                                 <c:forEach var="i" begin ="1" end="${tongsopage}"> 
                                 <c:choose>
                            <c:when test="${i==1 }">
                                <li class="paging-item active"><a href='<c:url value="/danhmucsanpham/0/${i}"/>'>${i}</a></li>
                                </c:when>
                                     <c:otherwise >
                                <li class="paging-item "><a href='<c:url value="/danhmucsanpham/0/${i}"/>'>${i}</a></li>
                                </c:otherwise>
                                </c:choose>
                                </c:forEach>
                                <li><a href='<c:url value="/danhmucsanpham/0/${pagenumber+1}"/>'><i class="zmdi zmdi-chevron-right"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>