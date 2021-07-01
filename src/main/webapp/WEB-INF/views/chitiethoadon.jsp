<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <!-- Start Bradcaump area -->
  <jsp:include page="header.jsp"></jsp:include>
  <section>
  <div class="ht__bradcaump__area bg-image--6" style="margin-top: 6.3%">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="bradcaump__inner text-center">
                        <h2 class="bradcaump-title">Chi tiết đơn hàng</h2>
                        <nav class="bradcaump-content">
                            <a class="breadcrumb_item" href="index.html">Trang chủ</a>
                            <span class="brd-separetor">/</span>
                            <span class="breadcrumb_item">Đơn hàng</span>
                            <span class="brd-separetor">/</span>
                            <span class="breadcrumb_item active">Chi tiết đơn hàng</span>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
     <div class="wn__order__box">
                        <h3 class="onder__title">Chi Tiết Hóa Đơn</h3>
                        <ul class="order__total">
                            <li>Tên sách*Số lượng</li>
                            <li>Thành tiền</li>
                        </ul>
                        <ul class="order_product">
                       
                      <c:forEach var="chitiethoadon" items="${hoadon.getDanhsachChiTietHoaDons() }">
                       
                            <li class="total_fee">${chitiethoadon.getTensanpham() } | ${chitiethoadon.getSoluong() }<span id="tongtien"> ${chitiethoadon.getSoluong()*chitiethoadon.getGiatien() }VND </span> </li>
                         
                        </c:forEach>
                            
                            
							
                        </ul>
                        <ul class="shipping__method">
                            <li>Tên khách hàng
                                <ul>
                                    <li>
                                      <a>${hoadon.getTenkhachhang()}</a>  
                                    </li>
                                 
                                </ul>
                            </li>
                             <li>Số điện thoại
                                <ul>
                                    <li>
                                      <a> ${hoadon.getSdt()}</a>  
                                    </li>
                                </ul>
                            </li>
                            <li>Ngày Lập
                                <ul>
                                    <li>
                                      <a> ${hoadon.getNgaylap()}</a>  
                                    </li>
                                </ul>
                            </li>
                        </ul>
                        <ul class="shipping__method">
                            <li>Phương thức giao hàng
                                <ul>
                                    <li>
                                      <a>${hoadon.getHinhthucgiaohang() }</a>  
                                    </li>
                                 
                                </ul>
                            </li>
                             <li>Địa chỉ giao hàng
                                <ul>
                                    <li>
                                      <a> ${hoadon.getDiachigiaohang()}</a>  
                                    </li>
                                 
                                </ul>
                            </li>
                        </ul>
                        <ul  class="total__amount" >
                            <li>${hoadon.getTongtien() } VND</li>
                        </ul>
                         <div class="cartbox__btn  ">
                            <ul class="cart__btn__list d-flex flex-wrap flex-md-nowrap flex-lg-nowrap justify-content-between">
                                <li></li>
                            </ul>
                        </div>
                    </div>
    </section>
        <jsp:include page="footer.jsp"></jsp:include>
    <!-- cart-main-area end -->
    <!-- Footer Area -->
</body>
</html>