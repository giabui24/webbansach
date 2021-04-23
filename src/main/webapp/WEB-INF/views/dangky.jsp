<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dangky</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
  <!-- Start Bradcaump area -->
    <div class="ht__bradcaump__area bg-image--6" style="margin-top: 6.3%">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="bradcaump__inner text-center">
                        <h2 class="bradcaump-title">Đăng ký</h2>
                        <nav class="bradcaump-content">
                            <a class="breadcrumb_item" href="index.html">Trang chủ</a>
                            <span class="brd-separetor">/</span>
                            <span class="breadcrumb_item active">Đăng ký</span>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Bradcaump area -->
    <!-- cart-main-area start -->
    <section class="my_account_area pt--80 pb--55 bg--white">
        <div class="container">
            <div class="row">

                <div class="col-5 accountleft">
                    <h3 class="account__title text-center">Đăng ký tài khoản</h3>
                    <p class="title1">Đăng ký để theo dõi đơn hàng, lưu
                        danh sách sản phẩm yêu thích, nhận
                        nhiều ưu đãi hấp dẫn.</p>
                    <img class="imageaacount" src="images/png-img/login.png"/></div>
                <div class="col-lg-6 col-12">
                    <div class="my__account__wrapper">
                        <h3 class=" text-center">Mời bạn điền vào form đăng ký</h3>
                        <form action="" method="post">
                            <div class="account__form">
                                <div class="welcome">
                                    <p class="text-center">Welcom to H&B Bookstore</p>
                                    <p class="text-center"><a class="questionRegister" href='<c:url value="/dangnhap/"/>'>Đăng
                                        nhập? </a>Nếu đã có tài khoản</p>
                                </div>
                                <!-- <div class="input__box">
                                    <label>Tên của bạn <span>*</span></label>
                                    <input name="email" type="email">
                                </div> -->
                               <!--  <div class="input__box">
                                    <label>Số điện thoại<span>*</span></label>
                                    <input type="password">
                                </div> -->
                                <div class="input__box">
                                    <label>Địa chỉ Email<span>*</span></label>
                                    <input type="password">
                                </div>
                                <div class="input__box">
                                    <label>Mật khẩu<span>*</span></label>
                                    <input type="password">
                                </div>
                                <div class="input__box">
                                    <label>Nhập lại mật khẩu<span>*</span></label>
                                    <input type="password">
                                </div>
                               <!--  <label class="label-for-checkbox">
                                    <input id="rememberme" class="input-checkbox" name="rememberme" value="forever"
                                           type="checkbox">
                                    <span>Đồng ý với điều khoản</span>
                                </label> -->
                                <div class="form__btn text-center">
                                    <button type="submit">Đăng ký</button>
                                </div>

                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

    </section>
    <!-- cart-main-area end -->
       <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>