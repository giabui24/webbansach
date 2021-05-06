<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ThanhToan</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
  <!-- Start Bradcaump area -->
    <div class="ht__bradcaump__area bg-image--6" style="margin-top: 6.3%">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="bradcaump__inner text-center">
                        <h2 class="bradcaump-title">Thanh toán</h2>
                        <nav class="bradcaump-content">
                            <a class="breadcrumb_item" href="index.html">Trang chủ</a>
                            <span class="brd-separetor">/</span>
                            <a class="breadcrumb_item" href="index.html">Giỏ hàng</a>
                            <span class="brd-separetor">/</span>
                            <span class="breadcrumb_item active">Thanh toán</span>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Bradcaump area -->
    <!-- Start Checkout Area -->
    <section class="wn__checkout__area section-padding--lg bg__white">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-12">
                    <div class="customer_details">
                        <h2 class="text-center">Địa chỉ thanh toán</h2>
                        <div class="customar__field">
                            <div class="input_box">
                                <div class="input_box ">
                                    <label>Họ Tên <span>*</span></label>
                                    <input id="tenkhachhang" type="text">
                                </div>
                            </div>
                            <div class="input_box">
                                <label>Số điện thoại <span>*</span></label>
                                <input id="sdt" type="text">
                            </div>
                            <div class="input_box">
                                <label>Địa chỉ email <span>*</span></label>
                                <input type="text">
                            </div>
                            <div class="input_box">
                                <label>Quốc gia <span>*</span></label>
                                <select id="quocgia" class="select__option">
                                    <option>Vui lòng chọn…</option>
                                    <option value="Việt Nam">Việt Nam</option>
                                    <option value="Mỹ">Mỹ</option>
                                    <option value="Nhật">Nhật</option>
                                    <option value="Anh">Anh</option>
                                    <option value="Hàn Quốc">Hàn Quốc</option>
                                </select>
                            </div>
                            <div class="input_box">
                                <label>Tỉnh/Thành phố <span>*</span></label>
                                <select id="thanhpho" class="select__option">
                                    <option>Vui lòng chọn…</option>
                                    <option value="TP Hồ Chí Minh">TP Hồ Chí Minh</option>
                                    <option value="Bà Rịa-Vũng Tàu">Bà Rịa-Vũng Tàu</option>
                                    <option value="Đồng Nai">Đồng Nai</option>
                                    <option value="Cần Thơ">Cần Thơ</option>
                                    <option value="Bình Phước">Bình Phước</option>
                                </select>
                            </div>
                            <div class="input_box">
                                <label>Quận/Huyện <span>*</span></label>
                                <input id="quan" type="text">
                            </div>
                            <div class="input_box">
                                <label id="phuong">Phường/Xã <span>*</span></label>
                                <input type="text">
                            </div>
                            <div class="input_box">
                                <label>Số nhà/Khu phố <span>*</span></label>
                                <input id="sonha" type="text">
                            </div>

                        </div>
                    </div>
                    <div class="customer_details mt--20">
                      <div class="differt__address">
                        </div>
                        <div class="customar__field differt__form mt--40">
                            <div class="input_box">
                                
                                    <label>Họ Tên <span>*</span></label>
                                    <input type="text">
                            </div>
                            <div class="input_box">
                                <label>Số điện thoại <span>*</span></label>
                                <input type="text">
                            </div>
                            <div class="input_box">
                                <label>Địa chỉ email <span>*</span></label>
                                <input type="text">
                            </div>
                            <div class="input_box">
                                <label>Quốc gia <span>*</span></label>
                                <select class="select__option">
                                    <option>Vui lòng chọn…</option>
                                    <option>Việt Nam</option>
                                    <option>Mỹ</option>
                                    <option>Nhật</option>
                                    <option>Anh</option>
                                    <option>Hàn Quốc</option>
                                </select>
                            </div>
                            <div class="input_box">
                                <label>Tỉnh/Thành phố <span>*</span></label>
                                <select class="select__option">
                                    <option>Vui lòng chọn…</option>
                                    <option>TP Hồ Chí Minh</option>
                                    <option>Bình Dương</option>
                                    <option>Đồng Nai</option>
                                    <option>Cần Thơ</option>
                                    <option>Bình Phước</option>
                                </select>
                            </div>
                            <div class="input_box">
                                <label>Quận/Huyện <span>*</span></label>
                                <input type="text">
                            </div>
                            <div class="input_box">
                                <label>Phường/Xã <span>*</span></label>
                                <input type="text">
                            </div>
                            <div class="input_box">
                                <label>Số nhà/Khu phố <span>*</span></label>
                                <input type="text">
                            </div>

                        </div>

                    </div> 
                </div>
                <div class="col-lg-6 col-12 md-mt-40 sm-mt-40">
                    <div class="wn__order__box">
                        <h3 class="onder__title">Kiểm tra đơn hàng</h3>
                        <ul class="order__total">
                            <li>Tên sách*Số lượng</li>
                            <li>Thành tiền</li>
                        </ul>
                        <ul class="order_product">
                       
                         <c:set var="sum"></c:set>
                          <c:forEach var="giohang" items="${giohang}">
                        <c:set var="sum" value="${sum+giohang.getGiatien()*giohang.getSoluong() }"></c:set>
                            <li>${giohang.getTensp()} ×${giohang.getSoluong()} <span>${giohang.getGiatien()*giohang.getSoluong()}</span></li>
                            </c:forEach>
                            <li class="total_fee">Thành tiền <span id="tongtien"><c:out value="${sum}"></c:out></span></li>
                            
							
                        </ul>
                        <ul class="shipping__method">
                            <li>Phương thức giao hàng
                                <ul>
                                    <li>
                                        <input name="hinhthucgiaohang" data-index="0" value="Cách 1"
                                               checked="checked" type="radio">
                                        <label>Cách 1</label>
                                    </li>
                                    <li>
                                        <input name="hinhthucgiaohang" data-index="0" value="Cách 2"
                                               checked="checked" type="radio">
                                        <label>Cách 2</label>
                                    </li>
                                </ul>
                            </li>
                        </ul>
						<ul class="shipping__method">
							<li>Phương thức thanh toán
								<ul>
									<li>
										<input name="shipping_method[1]" data-index="1" value="legacy_flat_rate"
											   checked="checked" type="radio">
										<label>Cách 1</label>
									</li>
									<li>
										<input name="shipping_method[1]" data-index="0" value="legacy_flat_rate"
											   checked="checked" type="radio">
										<label>Cách 2</label>
									</li>
								</ul>
							</li>
						</ul>
                        <ul class="total__amount">
                            <li>Tổng tiền <span><c:out value="${sum}"/>VND</span></li>
                        </ul>
                         <div class="cartbox__btn  ">
                            <ul class="cart__btn__list d-flex flex-wrap flex-md-nowrap flex-lg-nowrap justify-content-between">
                                <li><button id="dathang" ><a >đặt hàng</a></button></li>
                            </ul>
                        </div>
                    </div>
                  
                </div>
                  
            </div>
            
            
        </div>
        
    </section>
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>