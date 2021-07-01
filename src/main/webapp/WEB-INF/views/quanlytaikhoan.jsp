<%@ page contentType="text/html;charset=UTF-8" language="java" %>
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Quản lý Tài Khoản</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Font Awesome -->
  <link rel="stylesheet" href='<c:url value="/resources/plugins/fontawesome-free/css/all.min.css"/>'>
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- DataTables -->
  <link rel="stylesheet" href='<c:url value="/resources/plugins/datatables-bs4/css/dataTables.bootstrap4.css"/>'>
  <!-- Theme style -->
  <link rel="stylesheet" href='<c:url value="/resources/dist/css/adminlte.min.css"/>'>
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition sidebar-mini">

<div class="wrapper">
<jsp:include page="quanlyheader.jsp"></jsp:include>
  

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Quản lý tài khoản</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="">Trang chủ</a></li>
              <li class="breadcrumb-item active">Quản lý sản phẩm</li>
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
                    Bảng quản lý tài khoản</a>
                </div>
                <div class=" col-6 text-right">
                  <a href='<c:url value="/quanlysanpham/ThemSanPham"/>' >
                    <button type="button" class="btn btn-primary text-right">
                      <i class="fa fa-plus-circle"></i> Thêm mới tài khoản
                    </button>
                  </a>
                </div>
              </div>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <table id="example1" class="table table-bordered table-responsive-md">
                <thead>
                <tr>
                  <th>Mã Tài Khoản</th>
                  <th>Tên Tài Khoản</th>
                  <th>Họ Tên</th>
                  <th>Email</th>
                  <th>Phân Quyền</th>
                  <th>Trạng Thái</th>
                  <th>Thao tác</th>
                </tr>
                </thead>
                  
                <tbody>
                <c:forEach var="user" items="${listuser}">
                 <c:forEach var="role" items="${user.getRoles()}"> 
                <tr>
                  <td class="td-masanpham">${user.getId() }</td>
                  <td>${user.getUserName() }</td>
                  <td>${user.getFirstName()} ${user.getLastName()}</td>
                  <td>${user.getEmail()}</td>
                  <td>${role.getName() }</td>
                  <td>${user.getEnabled()}</td>
                  <td>
                    <div class="row justify-content-center">
                      <a href="">
                        <button type="button" class="xoa-sanpham btn btn-block btn-outline-danger">
                          <i class="fa fa-trash-alt"></i>
                        </button>
                      </a>
                      <a  href='<c:url value="/quanlysanpham/UpdateSanPham/${sanpham.getMasanpham()}"/>'>
                        <button type="button" class="btn btn-block btn-outline-success ml-1">
                          <i class="fa fa-edit"></i>
                        </button>
                      </a>

                    </div>
                  </td>
                </tr>
                </c:forEach>
                   </c:forEach> 
                </tbody>
                <tfoot>
                <tr>
                  <th>Mã Tài Khoản</th>
                  <th>Tên Tài Khoản</th>
                  <th>Tên</th>
                  <th>Họ</th>
                  <th>Phân Quyền</th>
                  <th>Trạng Thái</th>
                  <th>Thao tác</th>
                </tr>
                </tfoot>
              </table>
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
  </div>
  <!-- /.content-wrapper -->
 <jsp:include page="quanlyfooter.jsp"></jsp:include>
  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src='<c:url value="/resources/plugins/jquery/jquery.min.js"/>'></script>
<!-- Bootstrap 4 -->
<script src='<c:url value="/resources/plugins/bootstrap/js/bootstrap.bundle.min.js"/>'></script>
<!-- DataTables -->
<script src='<c:url value="/resources/plugins/datatables/jquery.dataTables.js"/>'></script>
<script src='<c:url value="/resources/plugins/datatables-bs4/js/dataTables.bootstrap4.js"/>'></script>
<!-- AdminLTE App -->
<script src='<c:url value="/resources/dist/js/adminlte.min.js"/>'></script>
<!-- AdminLTE for demo purposes -->
<script src='<c:url value="/resources/dist/js/demo.js"/>' ></script>
<!-- page script -->
<script>
    $(function () {
        $("#example1").DataTable();
        $('#example2').DataTable({
            "paging": true,
            "lengthChange": false,
            "searching": false,
            "ordering": true,
            "info": true,
            "autoWidth": false,
        });
    });
</script>
</body>
</html>


