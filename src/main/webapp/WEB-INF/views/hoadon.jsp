<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HoaDon</title>
</head>
<body>
  <jsp:include page="header.jsp"></jsp:include>
  <div class="ht__bradcaump__area bg-image--6" style="margin-top: 6.3%">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="bradcaump__inner text-center">
                        <h2 class="bradcaump-title">Đơn hàng của tôi</h2>
                        <nav class="bradcaump-content">
                            <a class="breadcrumb_item" href="index.html">Trang chủ</a>
                            <span class="brd-separetor">/</span>
                            <span class="breadcrumb_item active">Đơn hàng của tôi</span>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Bradcaump area -->
    
    <!-- cart-main-area start -->
    <section class="wn__checkout__area pt--30 bg__white">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="page-title">
                        <h1>Đơn hàng của tôi</h1>
                    </div>
                    <div class="order-pager">

                        <p class="amount">
                            <strong></strong>
                        </p>




                    </div>
                    <div style="overflow-x: auto; max-width: 100vw; min-height: 50vh;" class="mt-3">
                        <table cellspacing="0" cellpadding="0" border="0" width="100%" class="order-history-table">
                            <thead>
                            <tr>
                                <th class="text-center">Mã Đơn hàng </th>
                                <th class="text-center">Ngày đặt hàng</th>
                                <th class="text-center">Giao hàng đến</th>
                                <th class="text-center">Tên người nhận</th>
                                <th class="order-status-dropdown text-center panel-icon">
                                    Trạng Thái
                                 
                                </th>
                            </tr>
                            </thead>
                            <tbody>
                           <c:forEach var="hoadon" items="${listhoadon }" >
                            <tr data-href="wishlist.html" class="order-history-table-row order-history-table-row1">
                                <td><a href='<c:url value="/hoadon/chitiethoadon/${hoadon.getMahoadon()}"/>'>${hoadon.getMahoadon() }
                                </a></td>
                                <td><span class="nobr">${hoadon.getNgaylap() }</span></td>
                                <td>
                                ${hoadon.getDiachigiaohang()}
                                </td>
                                <td class="text-right"><span class="price">${hoadon.getTenkhachhang()}</span>
                                </td>
                                <c:if test="${hoadon.isTinhtrang() == false }">
                              	  <td class="text-center">
                              	  Chưa Hoàn Thành
                              </td>	
                              </c:if>
                                <c:if test="${hoadon.isTinhtrang() == true }">
                              	  <td class="text-center">
                              	  Đã Hoàn Thành
                              </td>	
                              </c:if>
                            </tr>
                         </c:forEach>
                            </tbody>
                        </table>
                        <div class="buttons-set mb-3">
                            <p class="back-link"><a
                                    href="bill.jsp">
                                <button class="btn btn-outline-danger">« Quay về</button>
                            </a>
                            </p>
                        </div>
                    </div>

                </div>

            </div>

        </div>
    </section>
      <jsp:include page="footer.jsp"></jsp:include>
    <!-- cart-main-area end -->
    <!-- Footer Area -->
</body>
</html>