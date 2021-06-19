<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body class="hold-transition sidebar-mini">
<jsp:include page="quanlyheader.jsp"></jsp:include>
<div class="content-wrapper">


<div class="wrapper">

  
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Thêm sản phẩm</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="trangchu.html">Trang chủ</a></li>
              <li class="breadcrumb-item active"><a href="quanlisanpham.html">Quản lý sản phẩm</a></li>
              <li class="breadcrumb-item active">Thêm sản phẩm</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-12">
          <div class="card">
            <div class="card-header">
              <div class="row">
                <div class=" col-6">
                  <a class="card-title">
                    Điền vào form để thêm sản phẩm</a>
                </div>
              </div>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <div class="row justify-content-center">
                <div class="col-md-10">
                  <div class="card card-info">
                    <div class="card-header">
                      <h3 class="card-title">Thông tin sản phẩm</h3>
                    </div>
                    <div class="card-body">
                      <form id="form-sanpham" role="form">
                        <!-- Date dd/mm/yyyy -->
                       
                        <div class="form-group">
                          <label>Tên hàng</label>

                          <div class="input-group">
                            <div class="input-group-prepend">
                              <span class="input-group-text"><i class="fa fa-list"></i></span>
                            </div>
                            <input name="tensanpham" type="text" class="form-control">
                          </div>
                          <!-- /.input group -->
                        </div>
                         <div class="form-group">
                          <label>Danh Mục</label>

                          <div class="input-group">
                            <div class="input-group-prepend">
                              <span class="input-group-text"><i class="far fa-id-card"></i></span>
                            </div>
                            <select name="danhmucsanpham" type="text" class="form-control">
                            <c:forEach var="danhmuc" items="${danhmuc}" >
                            <option value="${danhmuc.getMadanhmuc() }">${danhmuc.getTendanhmuc()}</option>
                            </c:forEach>
                            </select>
                          </div>
                          <!-- /.input group -->
                        </div>
                        <div id="chitietsanpham">
                          <div class="form-group">
                          <label>Tác Giả</label>

                          <div class="input-group">
                            <div class="input-group-prepend">
                              <span class="input-group-text"><i class="far fa-id-card"></i></span>
                            </div>
                            <select name="tacgia" type="text" class="form-control">
                            <c:forEach var="tacgia" items="${tacgia}" >
                            <option value="${tacgia.getMatacgia() }">${tacgia.getTentacgia()}</option>
                            </c:forEach>
                            </select>
                          </div>
                          <!-- /.input group -->
                        </div>
                          <div class="form-group">
                          <label>Nhà Xuất Bản</label>

                          <div class="input-group">
                            <div class="input-group-prepend">
                              <span class="input-group-text"><i class="far fa-id-card"></i></span>
                            </div>
                            <select name="nhaxuatban" type="text" class="form-control">
                            <c:forEach var="nhaxuatban" items="${nhaxuatban}" >
                            <option value="${nhaxuatban.getManhaxuatban() }">${nhaxuatban.getTennhaxuatban()}</option>
                            </c:forEach>
                            </select>
                          </div>
                          <!-- /.input group -->
                        </div>
                         <div class="form-group">
                          <label>Khuyến Mãi</label>
                          <div class="input-group">
                            <div class="input-group-prepend">
                              <span class="input-group-text"><i class="far fa-id-card"></i></span>
                            </div>
                            <select name="khuyenmai" type="text" class="form-control">
                            <c:forEach var="khuyenmai" items="${khuyenmai}" >
                            <option value="${khuyenmai.getMakhuyenmai() }">${khuyenmai.getTenkhuyenmai()}</option>
                            </c:forEach>
                            </select>
                          </div>
                          <!-- /.input group -->
                        </div>
                          <div class="form-group">
                          <label>Số Lượng</label>

                          <div class="input-group">
                            <div class="input-group-prepend">
                              <span class="input-group-text"><i class="far fa-id-card"></i></span>
                            </div>
                            <input  name="soluong" type="number" class="form-control">
                          </div>
                          <!-- /.input group -->
                        </div>
                       
                       </div>
                        <!-- phone mask -->
                        <div class="form-group">
                          <label>Hình ảnh</label>

                          <!-- <label for="customFile">Custom File</label> -->

                          <div class="custom-file">
                            <input name ="hinhanh" id="hinhanh" type="file" class="custom-file-input" id="customFile">
                            <label class="custom-file-label" for="customFile">Choose file</label>
                          </div>
                          <!-- /.input group -->
                        </div>
                        <!-- phone mask -->
                          <label>Giá</label>

                          <div class="input-group">
                            <div class="input-group-prepend">
                              <span class="input-group-text"><i class="fa fa-money-check"></i></span>
                            </div>
                            <input name="giatien" type="text" class="form-control">
                          </div>
                          <!-- /.input group -->
                        </div>
                        <!-- /.form group -->
                        <!-- phone mask -->
                        <div class="form-group">
                          <label>Mô tả</label>

                          <div class="input-group">
                           <div class="input-group-prepend">
                            <div class="mb-3">
                                  <textarea name="mota" class="textarea" placeholder="Place some text here"
                                            style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid rgb(221, 221, 221); padding: 10px; display: none;"></textarea>
                            </div>
                            </div>
                          </div>
                          <!-- /.input group -->
                        </div>
                        <!-- /.form group -->

                        <div class="form-group">
                          <div class="input-group justify-content-center">
                            <a href="#">
                              <button id="btnThemsanpham" type="button" class="btn btn-success text-right">
                                <i class="fa fa-plus-circle"></i> Thêm
                              </button>
                            </a>
                            <a href="quanlisanpham.html">
                              <button type="button" class="btn btn-info text-right ml-1">
                                <i class="fa fa-arrow-alt-circle-left"></i> Trở về
                              </button>
                            </a>
                          </div>
                          <!-- /.input group -->
                        </div>
                        <!-- /.form group -->
                        
                      </form>
                      
                    </div>
                    <!-- /.card-body -->
                  </div>
                  <!-- /.card -->

                </div>
              </div>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
      <jsp:include page="quanlyfooter.jsp"></jsp:include>
  </div>

  </div>
  
</body>
</html>