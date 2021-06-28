<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dangky</title>
<style>
		.error {color:red}
	</style>

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
                        <form:form action="KiemTraDangKy" method="post"  modelAttribute="crmUser">
                            <div class="account__form">
                                <div class="welcome">
                                    <p class="text-center">Welcom to H&B Bookstore</p>
                                    <p class="text-center"><a class="questionRegister" href='<c:url value="/dangnhap"/>'>Đăng
                                        nhập? </a>Nếu đã có tài khoản</p>
                                </div>
                                <c:if test="${registrationError != null}">
								
										<div class="alert alert-danger col-xs-offset-1 col-xs-10">
											${registrationError}
										</div>
		
									</c:if>
                                <!-- <div class="input__box">
                                    <label>Tên của bạn <span>*</span></label>
                                    <input name="email" type="email">
                                </div> -->
                               <!--  <div class="input__box">
                                    <label>Số điện thoại<span>*</span></label>
                                    <input type="password">
                                </div> -->
                                <div class="input__box">
                                    <label>Tên Tài Khoản<span>*</span></label>
                                    <form:errors path="userName" cssClass="error" />
                                    <form:input path="userName" placeholder="username (*)" class="form-control" />
                                </div>
                                <div class="input__box">
                                    <label>Mật khẩu<span>*</span></label>
                                    <form:errors path="password" cssClass="error" />
                                    <form:password path="password" placeholder="password (*)" class="form-control" />
                                </div>
                                <div class="input__box">
                                    <label>Nhập lại mật khẩu<span>*</span></label>
                                    <form:errors path="matchingPassword" cssClass="error" />
                                    <form:password path="matchingPassword" placeholder="confirm password (*)" class="form-control" />
                                </div>
                                <div class="input__box">
                                    <label>Họ<span>*</span></label>
                                  <form:errors path="firstName" cssClass="error" />
                                   <form:input path="firstName" placeholder="first name (*)" class="form-control" />
                                </div>
                                <div class="input__box">
                                    <label>Tên<span>*</span></label>
                                    <form:errors path="lastName" cssClass="error" />
							<form:input path="lastName" placeholder="last name (*)" class="form-control" />
                                </div>
                                <div class="input__box">
                                    <label>Email<span>*</span></label>
                                    <form:errors path="email" cssClass="error" />
							<form:input path="email" placeholder="email (*)" class="form-control" />
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
                        </form:form>
                    </div>
                </div>
            </div>
        </div>

    </section>
    <!-- cart-main-area end -->
       <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>