<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>dangnhap</title>


</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
    <!-- Start Bradcaump area -->
    <div class="ht__bradcaump__area bg-image--6" style="margin-top: 6.3%">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="bradcaump__inner text-center">
                        <h2 class="bradcaump-title">Đăng nhập</h2>
                        <nav class="bradcaump-content">
                            <a class="breadcrumb_item" href="index.html">Trang chủ</a>
                            <span class="brd-separetor">/</span>
                            <span class="breadcrumb_item active">Đăng nhập</span>
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
                    <h3 class="account__title text-center">Đăng nhập tài khoản</h3>
                    <p class="title1">Đăng nhập để theo dõi đơn hàng, lưu
                        danh sách sản phẩm yêu thích, nhận
                        nhiều ưu đãi hấp dẫn.</p>
                    <img class="imageaacount" src="images/png-img/login.png" /></div>
                <div class="col-lg-6 col-12">
                    <div class="my__account__wrapper">
                        <h3 class="text-center">Mời bạn điền vào form đăng nhập</h3>
                        <form:form action="KiemTraDangNhap" method="POST" modelAttribute="user">
                            <div class="account__form">
                                <div class="welcome">
                                    <p class="text-center">Welcom to H&B Bookstore</p>
                                    <p class="text-center"><a class="questionRegister" href='<c:url value="/dangky"/>'>Đăng
                                        ký? </a>Nếu chưa là thành viên</p>
                                </div>
                                <div class="input__box">
                                    <label>Tên đăng nhập hoặc Email <span>*</span></label>
                                    <input id="email" type="text" name="username">
                                </div>
                                <div class="input__box">
                                    <label>Mật khẩu <span>*</span></label>
                                    <input id="matkhau" type="text" name="password">
                                </div>
                                <div class="form__btn text-center">
                                    <button type="submit" id="btnDangNhapa">Đăng nhập</button>
                                    </br>
                                    <c:if test="${param.error!= null }">
                                    <span id="ketqua">Sai mật khẩu hoặc tên đăng nhập </span>
                                      </c:if>
                                        <c:if test="${param.logout != null }">
                                    <span id="ketqua">Bạn đã đăng xuất </span>
                                      </c:if>
                                    
                                    

                                </div>
                                <div class="forget">
                                    <label class="label-for-checkbox">
                                        <input id="rememberme" class="input-checkbox" name="rememberme" value="forever"
                                               type="checkbox">
                                        <span>Lưu mật khẩu</span>
                                    </label>
                                    <a class="forget_pass" href="forgetpassword.html">Quên mật khẩu?</a>
                                </div>


                            </div>
                        </form:form>
                    </div>
                    <div class="text-center">
                        <p class="titleLogin">Hoặc đăng nhập bằng</p>
                    </div>
                    <div class="form_loginDifferent">
                        <ul class="social__net social__net--2 d-flex justify-content-center">
                            <li><a href="#"><i class="fa fa-facebook-square fa" style="color: #003bb3"></i></a></li>
                            <li><a href="#"><i class="fa fa-google-plus-square" style="color: red"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class=" col-12">

                </div>
            </div>
        </div>
    </section>
    <!-- cart-main-area end -->
    <jsp:include page="footer.jsp"></jsp:include>

</body>
</html>