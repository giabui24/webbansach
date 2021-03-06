<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Trang chủ</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Font Awesome -->
  <link rel="stylesheet" href='<c:url value="/resources/plugins/fontawesome-free/css/all.min.css"/>'>
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bbootstrap 4 -->
  <link rel="stylesheet" href='<c:url value="/resources/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css"/>'>
  <!-- iCheck -->
  <link rel="stylesheet" href='<c:url value="/resources/plugins/icheck-bootstrap/icheck-bootstrap.min.css"/>'>
  <!-- JQVMap -->
  <link rel="stylesheet" href='<c:url value="/resources/plugins/jqvmap/jqvmap.min.css"/>'>
  <!-- Theme style -->
  <link rel="stylesheet" href='<c:url value="/resources/dist/css/adminlte.min.css"/>'>
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href='<c:url value="/resources/plugins/overlayScrollbars/css/OverlayScrollbars.min.css"/>'>
  <!-- Daterange picker -->
  <link rel="stylesheet" href='<c:url value="/resources/plugins/daterangepicker/daterangepicker.css"/>'>
  <!-- summernote -->
  <link rel="stylesheet" href='<c:url value="/resources/plugins/summernote/summernote-bs4.css"/>'>
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body>


<!-- Navbar -->
<nav class="main-header navbar navbar-expand navbar-dark navbar-info">
  <!-- Left navbar links -->
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
    </li>
  </ul>

  <!-- Right navbar links -->
  <ul class="navbar-nav ml-auto">

    <!-- Notifications Dropdown Menu -->
    <li class="nav-item dropdown">
      <a class="nav-link" data-toggle="dropdown" href="#">
        <i class="far fa-user-circle fa-2x"></i>
      </a>
      <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
        <span class="dropdown-item dropdown-header"></span>
        <div class="dropdown-divider"></div>
        <a href="" class="dropdown-item">
          <i class="fas fa-sign-out-alt mr-2"></i> Về trang người dùng
        </a>
        <div class="dropdown-divider"></div>
        <a href="" class="dropdown-item">
          <i class="fas fa-sign-in-alt mr-2"></i> Đăng xuất
        </a>
        <div class="dropdown-divider"></div>
      </div>
    </li>

  </ul>
</nav>
<!-- /.navbar -->

<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-light-info elevation-4">
  <!-- Brand Logo -->
  <a href="" class="brand-link navbar-cyan">
    <img alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8" src="">
    <span class="brand-text font-weight-bolder">H&B Bookstore</span>
  </a>

  <!-- Sidebar -->
  <div class="sidebar">
    <!-- Sidebar user (optional) -->
    <div class="user-panel mt-3 pb-3 mb-3 d-flex">
      <div class="image">
        <img class="img-circle elevation-2" alt="User Image" src="">
      </div>
      <div class="info">
        <a href="" class="d-block">H&B Admin</a>
      </div>
    </div>

    <!-- Sidebar Menu -->
    <nav class="mt-2">
      <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
        <!-- Add icons to the links using the .nav-icon class
             with font-awesome or any other icon font library -->
        <li class="nav-item">
          <a href="" class="nav-link active">
            <i class="nav-icon fas fa-home"></i>
            <p>
              Trang chủ
            </p>
          </a>
        </li>
        <li class="nav-item">
          <a href='<c:url value="/"/>' class="nav-link">
            <i class="nav-icon fas fa-th-list"></i>
            <p>
              Quản lý danh mục
            </p>
          </a>
        </li>
        <li class="nav-item">
          <a href="" class="nav-link">
            <i class="nav-icon fas fa-th-list"></i>
            <p>
              Quản lý nhà xuất bản
            </p>
          </a>
        </li>
        <li class="nav-item">
          <a href='<c:url value="/quanlysanpham/"/>' class="nav-link">
            <i class="nav-icon fa fa-book"></i>
            <p>
              Quản lý sản phẩm
            </p>
          </a>
        </li>
        <li class="nav-item">
         
          <a href='<c:url value="/quanlytaikhoan/"/>' class="nav-link">
            <i class="nav-icon fas fa-user"></i>
            <p>
              Quản lý tài khoản
            </p>
          </a>
        </li>
        <li class="nav-item">
          <a href='<c:url value="/hoadon/quanlyhoadon/"/>' class="nav-link">
            <i class="nav-icon fas fa-money-bill"></i>
            <p>
              Quản lý hóa đơn
            </p>
          </a>
        </li>
        <li class="nav-item">
          <a href="" class="nav-link">
            <i class="nav-icon fa fa-newspaper"></i>
            <p>
              Quản lý tin tức
            </p>
          </a>
        </li>
        <li class="nav-item">
          <a href="" class="nav-link">
            <i class="nav-icon fas fa-comment"></i>
            <p>
              Quản lý bình luận
            </p>
          </a>
        </li>
<%--        <li class="nav-item">--%>
<%--          <a href=<%=Util.utilAdmin("thongke.jsp")%> class="nav-link">--%>
<%--            <i class="nav-icon fas fa-chart-area"></i>--%>
<%--            <p>--%>
<%--              Thống kê--%>
<%--            </p>--%>
<%--          </a>--%>
<%--        </li>--%>

      </ul>
    </nav>
    <!-- /.sidebar-menu -->
  </div>
  <!-- /.sidebar -->
</aside>
</body>
</html>
    