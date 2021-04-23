<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<footer>
        <div class="footer-top-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-8">
                        <div class="footer-left">
                            <a href="index.html">
                                <img src="images/Logo2.png" alt="">
                            </a>
                            <p class="danhngon">"Tất cả những gì con người làm, nghĩ hoặc trở thành: được bảo tồn một
                                cách
                                kỳ diệu trên những
                                trang sách.” - <b>Thomas Carlyle</b></p>
                            <ul class="footer-contact">
                                <li>
                                    <i class="fa fa-map-marker"></i>
                                    Địa chỉ: HCMUAF
                                </li>

                                <li>
                                    <i class="fa fa-envelope-open"></i>
                                    Email: hhbb@gmail.com
                                </li>
                                <li>
                                    <i class="fa fa-phone"></i>
                                    Hotline: +84 967 028 275
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-2 col-sm-4">
                        <div class="single-footer">
                            <h2 class="footer-title">Tài khoản</h2>
                            <ul class="footer-list">
                                <li><a href="login.html">Đăng nhập</a></li>
                                <li><a href="register.html">Đăng kí</a></li>
                                <li><a href="updateaccount.html">Cập nhật tài khoản</a></li>
                                <li><a href="#">Đăng xuất</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-2 hidden-sm">
                        <div class="single-footer">
                            <h2 class="footer-title">Dịch vụ</h2>
                            <ul class="footer-list">
                                <li><a href="my-account.html">Tìm hiểu H&B</a></li>
                                <li><a href="rules.html">Điều khoản/Dịch vụ</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-2 hidden-sm">
                        <div class="single-footer">
                            <h2 class="footer-title">Hỗ trợ khách hàng</h2>
                            <ul class="footer-list">
                                <li><a href="faq.html">Câu hỏi thường gặp</a></li>
                                <li><a href="#">Chính sách thanh toán</a></li>
                                <li><a href="#">Phương thức đổi trả</a></li>
                                <li><a href="#">Phương thức giao hàng</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-8">
                        <div class="single-footer footer-newsletter">
                            <h2 class="footer-title">Bản tin</h2>
                            <p>Quý khách vui lòng nhập địa chỉ email để nhận được những thông báo mới nhất từ chúng
                                tôi.</p>
                            <form action="" method="POST">
                                <div>
                                    <i class="fa fa-envelope"></i><input name="tenNhanVien" type="text" placeholder="email">
                                </div>
                                <div>
                                    <i class="fa fa-facebook-square"></i><input name="tuoi" type="text" placeholder="gop y">
                                </div>
                                <button class="btn-small" type="submit">ĐĂNG KÝ NGAY</button>
                                <i class="flaticon-networking"></i>
                            </form>
                            <ul class="social-icon">
                                <li>
                                    <a href="#">
                                        <i class="fa fa-facebook-square fa-2x"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="fa fa-youtube fa-2x"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="fa fa-instagram fa-2x"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="fa fa-google-plus-square fa-2x"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="footer-bottom-left pull-left">
                            <p>Copyright <i class="fa fa-copyright"></i> <a href="https://freethemescloud.com/">Free
                                themes Cloud.</a> All Rights Reserved</p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="footer-bottom-right pull-right">
                            <img src="images/icons/payment.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- //Footer Area -->

</div>
<!-- //Main wrapper -->

<!-- JS Files -->
<script src='<c:url value="/resources/js/vendor/jquery-3.2.1.min.js"/>'></script>
<script src='<c:url value="/resources/js/popper.min.js"/>'></script>
<script src='<c:url value="/resources/js/bootstrap.min.js"/>'></script>
<script src='<c:url value="/resources/js/plugins.js"/>'></script>
<script src='<c:url value="/resources/js/active.js"/>'></script>
<script src='<c:url value="/resources/js/custom.js"/>'></script>

</body>
</html>