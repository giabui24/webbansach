<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Gio Hang</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
 <!-- Start Bradcaump area -->
    <div class="ht__bradcaump__area bg-image--6" style="margin-top: 6.3%">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="bradcaump__inner text-center">
                        <h2 class="bradcaump-title">Giỏ hàng</h2>
                        <nav class="bradcaump-content">
                            <a class="breadcrumb_item" href="index.html">Trang chủ</a>
                            <span class="brd-separetor">/</span>
                            <span class="breadcrumb_item active">Giỏ hàng</span>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Bradcaump area -->
    <!-- cart-main-area start -->
    <div class="cart-main-area section-padding--lg bg--white">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12 ol-lg-12">
                    <form action="#">
                        <div class="table-content wnro__table table-responsive">
                            <table>
                                <thead>
                                <tr class="title-top">
                                    <th class="product-thumbnail">Mẫu mã</th>
                                    <th class="product-name">Tên sách</th>
                                    <th class="product-price">Giá</th>
                                    <th class="product-quantity">Số lượng</th>
                                    <th class="product-subtotal">Thành tiền</th>
                                    <th class="product-remove">Xóa</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="giohang" items="${giohang}">
                                 <tr>
                                    <td class="product-name"><a href="#"><img
                                            src='<c:url value="${giohang.getHinhsanpham()}"/>'
                                            alt="product img"></a>
                                    </td>
                                    <td class="product-name2 text-left" data="${giohang.getMasanpham()}"><a href="#">${giohang.getTensp()}</a>
                                    </td>
                                    <td class="product-price" data="${giohang.getGiatien()}"><span class="amount" >${giohang.getGiatien()}đ</span></td>
                                    <td class="product-quantity"><input class="soluong-giohang" type="number" min="1" value="${giohang.getSoluong()}"></td>
                                    <td class="product-subtotal tientong" data="${giohang.getGiatien()*giohang.getSoluong()}">${giohang.getGiatien()*giohang.getSoluong()}</td>
                                    <td class="product-remove"><a href="#">
                                        <button class="buttondel">×</button>
                                    </a></td>
                                </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </form>
                    <div class="cart-total">
                        <div class="col-lg-6 offset-lg-6">
                            <div class="cart__total__amount">
                                <span>Tổng tiền</span>
                                <span id="tongtien"></span>
                            </div>
                        </div>
                        <div class="cartbox__btn  ">
                            <ul class="cart__btn__list d-flex flex-wrap flex-md-nowrap flex-lg-nowrap justify-content-between">
                                <li><a href="#">Tiến hành đặt hàng</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!--            <div class="row">-->
            <!--                <div class="col-lg-6 offset-lg-6">-->
            <!--                    <div class="cartbox__total__area">-->
            <!--                        <div class="cartbox-total d-flex justify-content-between">-->
            <!--                            <ul class="cart__total__list">-->
            <!--                                <li>Cart total</li>-->
            <!--                                <li>Sub Total</li>-->
            <!--                            </ul>-->
            <!--                            <ul class="cart__total__tk">-->
            <!--                                <li>$70</li>-->
            <!--                                <li>$70</li>-->
            <!--                            </ul>-->
            <!--                        </div>-->
            <!--                        <div class="cart__total__amount">-->
            <!--                            <span>Grand Total</span>-->
            <!--                            <span>$140</span>-->
            <!--                        </div>-->
            <!--                    </div>-->
            <!--                </div>-->
            <!--            </div>-->
        </div>
    </div>
    <!-- cart-main-area end -->
    <!-- Footer Area -->
      <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>