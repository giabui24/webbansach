<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Chitiet</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
  <!-- Start Bradcaump area -->
    <div class="ht__bradcaump__area bg-image--6" style="margin-top: 6.3%">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="bradcaump__inner text-center">
                        <h2 class="bradcaump-title">Chi tiết sản phẩm</h2>
                        <nav class="bradcaump-content">
                            <a class="breadcrumb_item" href='<c:url value="/"/>'>Trang chủ</a>
                            <span class="brd-separetor">/</span>
                            <span class="breadcrumb_item">Danh sách sản phẩm</span>
                            <span class="brd-separetor">/</span>
                            <span class="breadcrumb_item active">Chi tiết sản phẩm</span>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Bradcaump area -->
    <!-- Start main Content -->
    <div class="maincontent bg--white pt--80 pb--55">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-12">
                    <div class="wn__single__product">
                        <div class="row">
                            <div class="col-lg-5 col-12">
                                <div class="wn__fotorama__wrapper">
                                    <div id="hinha" data-value="${sanpham.getHinhsanpham()}" class="fotorama wn__fotorama__action" data-nav="thumbs">
                                        <a href="1.jpg"><img 
                                                src='<c:url value="${sanpham.getHinhsanpham()}"/>'
                                                alt=""></a>
                                        <a href="2.jpg"><img src="images/books/biasau.jpg" alt=""></a>

                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-12">
                                <div class="product__info__main">
                                    <h1 id="tensp">${sanpham.getTensanpham() }</h1>
                                    <div class="price-box">
                                        <span id="giatien" data-value="${sanpham.getGiatien()}">${sanpham.getGiatien()}đ</span>
                                        <div class="product__overview">
                                            <p>${sanpham.getGiatien()}đ</p>
                                             <p>•Mô tả: ${sanpham.getMota()}</p>
                                             <c:forEach var="chitietsanpham" items="${sanpham.getDanhsachchiTietSanPham()}">
                                              <p>• Tên nhà xuất bản: ${chitietsanpham.getNhaXuatBan().getTennhaxuatban() }</p>
                                               <p>• Xuất bản năm 2018</p>
                                            <p>• Tác giả:${chitietsanpham.getTacGia().getTentacgia() } </p>
                                            <p id="masanpham" data-value="${sanpham.getMasanpham()}">• Chính sách giao hàng</p>
                                             
                                        </div>
                                        <div class="product-addto-links clearfix">
                                            <a class="wishlist" href="wishlist.html"><i
                                                    class="fa fa-heart"></i></a>
                                            <a class="compare" href="#nhanxet"><i
                                                    class="fa fa-pencil"></i></a>
                                        </div>
                                    </div>
                                    <div class="box-tocart d-flex">
                                        <span>SL:</span>
                                        <input id="qty" class="input-text qty" name="qty" min="1" value="1" title="Qty"
                                               type="number">
                                        <div class="addtocart__actions">
                                            <button data-machitiet="${chitietsanpham.getMachitietsanpham()}" class="tocart" type="submit"><i
                                                    class="fa fa-shopping-cart"></i> Thêm vào giỏ hàng
                                            </button>
                                        </div>
                                         </c:forEach> 
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="product__info__detailed">
                        <div class="review__attribute">
                            <h2 class="col-2">Nội dung sách</h2>
                        </div>
                        <div class="tab__container">
                            <!-- Start Single Tab Content -->
                            <div id="nav-details1">
                                <div class="description__attribute">
                                    <p>Đảo Mộng Mơ là một lát cắt đời sống của những đứa trẻ lên 10 giàu trí tưởng tượng
                                        như tất cả mọi đứa trẻ. Chúng mơ mộng, tưởng tượng, và tự làm "hiện thực hóa"
                                        những khao khát của mình.

                                        Câu chuyện bắt đầu từ một đống cát, và được diễn ra theo nhân vật tôi - cu Tin.
                                        Có một hòn đảo hoang, trên đảo có Chúa đảo, phu nhân Chúa đảo, và một chàng
                                        Thứ... Bảy. Hàng ngày vợ chồng Chúa đảo và Thứ Bảy vẫn phải đi học, nhưng sau
                                        giờ học là một thế giới khác, của đảo, của biển có cá mập, và rừng có thú dữ.
                                        Hấp dẫn, đầy quyến rũ, có cãi vã, có cai trị, có yêu thương, có ẩu đả, và
                                        cả...những nụ hôn!

                                        Tuổi thơ trong Đảo Mộng mơ như trong những tác phẩm khác của Nguyễn Nhật Ánh,
                                        trong veo và ngọt ngào. Những muốn bé lại bằng cu Tin để được cười, được khóc,
                                        được làm Chúa đảo thích đọc sách và biết đánh lại lưu manh, bắt giam kẻ cắp. Để
                                        được hiểu rằng, đối với trẻ con, nhu cầu được tôn trọng đôi khi lớn hơn gấp bội
                                        so với nhu cầu được yêu thương.

                                        Văn Nguyễn Nhật Ánh vẫn luôn thế, trong sáng, dí dỏm, đầy ắp thực tế tâm lý,
                                        hành động và ngôn ngữ của trẻ. Hy vọng Đảo Mộng mơ thỏa mãn những khao khát
                                        "được chơi", được thỏa chí tưởng tượng mà không bị mắng là "hâm", là "bốc phét"
                                        của trẻ, cũng như những băn khoăn của các bậc cha mẹ, làm sao có thể giữ gìn sự
                                        trong trẻo hồn nhiên mãi cho con mình.</p>
                                    <ul>
                                        <li>• Ngôn ngữ: Sách tiếng Việt</li>
                                        <li>• Số trang: 254</li>
                                        <li>• Hình thức: Bìa mềm</li>
                                        <li>• Tình trạng: Còn hàng</li>

                                    </ul>
                                </div>
                            </div>
                            <!-- End Single Tab Content -->
                        </div>
                    </div>
                    <div class="product__info__detailed">
                        <div class="review__attribute">
                            <h2 class="col-2">Thông tin sách</h2>
                        </div>
                        <div class="tab__container">
                            <!-- Start Single Tab Content -->
                            <div id="nav-details">
                                <div class="white-panel">
                                    <div class="attribute-table single-table"></div>
                                    <table id="chi-tiet" cellspacing="0"
                                           class="table table-bordered table-detail table-striped">
                                        <colgroup>
                                            <col style="width: 25%;">
                                            <col>
                                        </colgroup>
                                        <tbody>
                                        <tr>
                                            <td rel="publisher_vn">Công ty phát hành</td>
                                            <td class="last">
                                                <a href="http://tiki.vn/cty-sach/nha-nam.html">Đông A</a>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td rel="author">Tác giả</td>
                                            <td class="last">
                                                Nguyễn Nhật Ánh
                                            </td>
                                        </tr>
                                        <tr>
                                            <td rel="publication_date">Ngày xuất bản</td>
                                            <td class="last">
                                                2018
                                            </td>
                                        </tr>
                                        <tr>
                                            <td rel="dimensions">Kích thước</td>
                                            <td class="last">
                                                14 x 20.5 cm
                                            </td>
                                        </tr>

                                        <tr>
                                            <td rel="book_cover">Loại bìa</td>
                                            <td class="last">
                                                Bìa mềm
                                            </td>
                                        </tr>
                                        <tr>
                                            <td rel="number_of_page">Số trang</td>
                                            <td class="last">
                                                254
                                            </td>
                                        </tr>
                                        <tr>
                                            <td rel="sku">SKU</td>
                                            <td class="last">
                                                5895372587014
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <!-- End Single Tab Content -->
                        </div>
                    </div>
                    <div class="product__info__detailed">
                        <div class="tab__container">
                            <!-- Start Single Tab Content -->
                            <div id="nhanxet">
                                <div class="review__attribute">
                                    <h2 class="col-2">Nhận xét</h2>
                                </div>
                                <div class="review-fieldset">
                                    <h5>Đánh giá</h5>
                                    <div class="review-field-ratings">
                                        <div class="product-review-table">
                                            <div class="review-field-rating d-flex">
                                                <!--													<span>Value</span>-->
                                                <ul class="rating d-flex">
                                                    <li class="off"><i class="zmdi zmdi-star"></i></li>
                                                    <li class="off"><i class="zmdi zmdi-star"></i></li>
                                                    <li class="off"><i class="zmdi zmdi-star"></i></li>
                                                    <li class="off"><i class="zmdi zmdi-star"></i></li>
                                                    <li class="off"><i class="zmdi zmdi-star"></i></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="review_form_field">
                                        <div class="input__box">
                                            <span>Tiêu đề</span>
                                            <input type="text" name="summery">
                                        </div>
                                        <div class="input__box">
                                            <span>Nhận xét</span>
                                            <textarea name="review"></textarea>
                                        </div>
                                        <div class="review-form-actions">
                                            <button>Gửi</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Tab Content -->
                        </div>
                    </div>

                </div>

            </div>
            <ul class="wn__pagination" style="margin-top: 3%">
                <li><a href="#"><i class="zmdi zmdi-chevron-left"></i></a></li>
                <li class="active"><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#"><i class="zmdi zmdi-chevron-right"></i></a></li>
            </ul>
        </div>
    </div>
    <section class="wn__product__area brown--color pt--80">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section__title text-center">
                        <h2 class="title__be--2"><span class="color--theme">Có thể bạn quan tâm</span></h2>
                        <p class="cautho">"Một cuốn sách hay thực sự hay dạy tôi nhiều điều hơn là đọc nó, Tôi phải
                            nhanh chóng đặt nó xuống, bắt đầu sống theo những điều nó chỉ dẫn. Điều tôi bắt đầu bằng
                            cách đọc, tôi phải kết thúc bằng hành động", <b>Henry David Thoreau</b></p>
                    </div>
                </div>
            </div>
            <!-- Start Single Tab Content -->
            <div class="furniture--4 furniture--4v2 border--round arrows_style owl-carousel owl-theme row mt--50">
                <!-- Start Single Product -->
                <div class="product product__style--3">
                    <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                        <div class="product__thumb">
                            <a class="first__img" href="single-product.html"><img src="images/books/1.jpg"
                                                                                  alt="product image"></a>
                            <div class="hot__box">
                                <span class="hot-label">22%</span>
                            </div>
                        </div>
                        <div class="product__content content--center">
                            <h4><a href="single-product.html">Giáng sinh diệu kì</a></h4>
                            <ul class="prize d-flex">
                                <li>50.000đ</li>
                            </ul>
                            <ul class="prize d-flex">
                                <li class="old_prize">65.000đ</li>
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
                    <!-- Start Single Product -->
                </div>
                <!-- Start Single Product -->
                <!-- Start Single Product -->
                <div class="product product__style--3">
                    <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                        <div class="product__thumb">
                            <a class="first__img" href="single-product.html"><img src="images/books/2.jpg"
                                                                                  alt="product image"></a>
                            <div class="hot__box color--2">
                                <span class="hot-label">40%</span>
                            </div>
                        </div>
                        <div class="product__content content--center">
                            <h4><a href="single-product.html">Lá thư đêm Noel</a></h4>
                            <ul class="prize d-flex">
                                <li>23.000đ</li>
                            </ul>
                            <ul class="prize d-flex">
                                <li class="old_prize">42.000đ</li>
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
                </div>
                <!-- Start Single Product -->
                <!-- Start Single Product -->
                <div class="product product__style--3">
                    <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                        <div class="product__thumb">
                            <a class="first__img" href="single-product.html"><img src="images/books/3.jpg"
                                                                                  alt="product image"></a>
                            <div class="hot__box">
                                <span class="hot-label">20%</span>
                            </div>
                        </div>
                        <div class="product__content content--center">
                            <h4><a href="single-product.html">Thăm thẳm mùa hè</a></h4>
                            <ul class="prize d-flex">
                                <li>44.000đ</li>
                            </ul>
                            <ul class="prize d-flex">
                                <li class="old_prize">56.000đ</li>
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
                </div>
                <!-- Start Single Product -->
                <!-- Start Single Product -->
                <div class="product product__style--3">
                    <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                        <div class="product__thumb">
                            <a class="first__img" href="single-product.html"><img src="images/books/4.jpg"
                                                                                  alt="product image"></a>
                            <div class="hot__box color--2">
                                <span class="hot-label">40%</span>
                            </div>
                        </div>
                        <div class="product__content content--center">
                            <h4><a href="single-product.html">Thanh xuân của chúng ta kéo dài bao lâu?</a></h4>
                            <ul class="prize d-flex">
                                <li>52.000đ</li>
                            </ul>
                            <ul class="prize d-flex">
                                <li class="old_prize">86.000đ</li>
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
                </div>
                <!-- Start Single Product -->
                <!-- Start Single Product -->
                <div class="product product__style--3">
                    <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                        <div class="product__thumb">
                            <a class="first__img" href="single-product.html"><img src="images/books/5.jpg"
                                                                                  alt="product image"></a>
                            <div class="hot__box color--2">
                                <span class="hot-label">42%</span>
                            </div>
                        </div>
                        <div class="product__content content--center">
                            <h4><a href="single-product.html">Cỏ hạnh phúc</a></h4>
                            <ul class="prize d-flex">
                                <li>62.000đ</li>
                            </ul>
                            <ul class="prize d-flex">
                                <li class="old_prize">149.000đ</li>
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
                </div>
                <!-- Start Single Product -->
                <!-- Start Single Product -->
                <div class="product product__style--3">
                    <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                        <div class="product__thumb">
                            <a class="first__img" href="single-product.html"><img src="images/books/6.jpg"
                                                                                  alt="product image"></a>
                            <div class="hot__box">
                                <span class="hot-label">18%</span>
                            </div>
                        </div>
                        <div class="product__content content--center">
                            <h4><a href="single-product.html">Here we go - cứ mơ và cứ đi</a></h4>
                            <ul class="prize d-flex">
                                <li>131.000đ</li>
                            </ul>
                            <ul class="prize d-flex">
                                <li class="old_prize">160.000đ</li>
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
                    <!-- Start Single Product -->
                </div>
            </div>
            <!-- End Single Tab Content -->
        </div>
    </section>
    <jsp:include page="footer.jsp"></jsp:include>

</body>
</html>