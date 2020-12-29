<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Uyên Trần</title>

        <!-- Custom fonts for this template-->
        <link rel="stylesheet" href="<c:url value='/templates/admin/fontawesome-5.15.1/css/all.min.css' />">
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
              rel="stylesheet">

        <!-- Custom styles for this template-->
        <link rel="stylesheet" href="<c:url value='/templates/admin/css/sb-admin-2.min.css' />">
        <link rel="stylesheet" href="<c:url value='/templates/admin/css/new-style.css' />">
    </head>

    <body id="page-top">

        <!-- Page Wrapper -->
        <div id="wrapper">

            <!-- Sidebar -->
            <ul class="navbar-nav sidebar sidebar-dark accordion dashboardSidebar" id="accordionSidebar">
                <!-- Sidebar - Brand -->
                <a href="<c:url value='/views/web/home.jsp' />" class="sidebar-brand d-flex align-items-center justify-content-center">
                    <div class="sidebar-brand-icon rotate-n-15">
                        <i class="fas fa-laugh-wink" style="font-size: 36px"></i>
                    </div>
                    <div class="sidebar-brand-text mx-3" style="font-size: 20px">CozaStore</div>
                </a>

                <!-- Divider -->
                <hr class="sidebar-divider my-0" />

                <!-- tên tài khoản -->
                <li class="nav-item active">
                    <a class="nav-link" href="<c:url value="/views/web/profile.jsp" />">
                        <div class="d-flex justify-content-center align-items-center">
                            <img class="img-profile mr-3 rounded-circle" src="<c:url value="/images/avt/avatar.jpg" />" />
                            <p class="flex-grow-1 mb-0">Uyên Trần</p>
                        </div>
                    </a>
                </li>

                <!-- Divider -->
                <hr class="sidebar-divider">

                <!-- Heading -->
                <div class="sidebar-heading">
                    Tài khoản của tôi
                </div>

                <!-- Nav Item - Hồ sơ -->
                <li class="nav-item">
                    <a class="nav-link collapsed" href="<c:url value="/views/web/profile.jsp" />">
                        <i class="fab fa-first-order" style="width: 20px"></i>
                        <span>Hồ sơ</span>
                    </a>
                </li>

                <!-- Nav Item - đổi mật khẩu -->
                <li class="nav-item">
                    <a class="nav-link collapsed" href="z-changePassword.html">
                        <i class="fab fa-first-order" style="width: 20px"></i>
                        <span>Đổi mật khẩu</span>
                    </a>
                </li>

                <!-- Nav Item - đơn mua -->
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#">
                        <i class="fa fa-user-tie" style="width: 20px"></i>
                        <span>Đơn mua</span>
                    </a>
                </li>

                <!-- Nav Item - thông báo -->
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#">
                        <i class="fa fa-user-friends" style="width: 20px"></i>
                        <span>Thông báo</span>
                    </a>
                </li>

                <!-- Divider -->
                <hr class="sidebar-divider">

                <!-- Nav Item - Pages Collapse Menu -->
                <li class="nav-item">
                    <a class="nav-link collapsed" href="<c:url value='/dang-nhap' />">
                        <i class="fas fa-location-arrow" style="width: 20px"></i>
                        <span>Đăng xuất</span>
                    </a>
                </li>

                <!-- Divider -->
                <hr class="sidebar-divider d-none d-md-block">

                <!-- Sidebar Toggler (Sidebar) -->
                <div class="text-center d-none d-md-inline">
                    <button class="rounded-circle border-0" id="sidebarToggle"></button>
                </div>
            </ul>
            <!-- End of Sidebar -->

            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">

                <!-- Main Content -->
                <div id="content">

                    <!-- Topbar -->
                    <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                        <!-- Sidebar Toggle (Topbar) -->
                        <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                            <i class="fa fa-bars"></i>
                        </button>

                        <!-- Topbar Search -->
                        <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                            <div class="input-group">
                                <input type="text" class="form-control bg-light border-0 small"
                                       placeholder="Tìm kiếm..."
                                       aria-label="Search" aria-describedby="basic-addon2">

                                <div class="input-group-append">
                                    <button class="btn btn-primary" type="button">
                                        <i class="fas fa-search fa-sm"></i>
                                    </button>
                                </div>
                            </div>
                        </form>

                        <!-- Topbar Navbar -->
                        <ul class="navbar-nav ml-auto">

                            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                            <li class="nav-item dropdown no-arrow d-sm-none">
                                <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fas fa-search fa-fw"></i>
                                </a>

                                <!-- Dropdown - Messages -->
                                <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                     aria-labelledby="searchDropdown">
                                    <form class="form-inline mr-auto w-100 navbar-search">
                                        <div class="input-group">
                                            <input type="text" class="form-control bg-light border-0 small"
                                                   placeholder="Tìm kiếm..." aria-label="Search"
                                                   aria-describedby="basic-addon2">
                                            <div class="input-group-append">
                                                <button class="btn btn-primary" type="button">
                                                    <i class="fas fa-search fa-sm"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </li>

                            <!-- trợ giúp -->
                            <li class="nav-item dropdown no-arrow">
                                <a class="nav-link dropdown-toggle" href="#" id="" role="button"
                                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="far fa-question-circle mr-2"></i>
                                    <span class="mr-2 d-none d-lg-inline text-gray-600 small">Trợ giúp</span>
                                </a>
                            </li>

                            <div class="topbar-divider d-none d-sm-block"></div>

                            <!-- Nav Item - User Information -->
                            <li class="nav-item dropdown no-arrow">
                                <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <span class="mr-2 d-none d-lg-inline text-gray-600 small">Uyên Trần</span>
                                    <img class="img-profile rounded-circle"
                                         src="<c:url value='/images/avt/avatar.jpg' />" />
                                </a>
                                <!-- Dropdown - User Information -->
                                <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                     aria-labelledby="userDropdown">
                                    <a class="dropdown-item" href="<c:url value='/trang-ca-nhan' />">
                                        <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Hồ sơ của bạn
                                    </a>
                                    <a class="dropdown-item" href="#">
                                        <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Cài đặt
                                    </a>
                                    <a class="dropdown-item" href="#">
                                        <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Nhật ký hoạt động
                                    </a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="<c:url value='/dang-nhap' />" data-toggle="modal"
                                       data-target="#logoutModal">
                                        <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Đăng xuất
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </nav>
                    <!-- End of Topbar -->

                    <!-- begin tài khoản của tôi -->
                    <div class="container-fluid">
                        <div class="card shadow" id="taiKhoanCuaToi">
                            <div class="card-header">
                                <h3>Hồ sơ của tôi</h3>
                                <span>Quản lý thông tin hồ sơ để bảo mật tài khoản</span>
                            </div>

                            <div class="card-body py-4">
                                <div class="d-flex justify-content-between">
                                    <div class="d-flex flex-column">
                                        <div class="form-inline mb-2">
                                            <div style="min-width: 200px">
                                                <label class="d-block float-right mr-3" for="tenDangNhap">Tên đăng nhập</label>
                                            </div>
                                            <div style="min-width: 500px" class="d-flex">
                                                <input type="text" id="tenDangNhap" class="form-control flex-grow-1"
                                                       readonly value="uyentran" />
                                            </div>
                                        </div>

                                        <div class="form-inline mb-2">
                                            <div style="min-width: 200px">
                                                <label class="d-block float-right mr-3" for="ten">Tên</label>
                                            </div>
                                            <div style="min-width: 500px" class="d-flex">
                                                <input type="text" id="ten" class="form-control flex-grow-1" value="Uyên Trần" />
                                            </div>
                                        </div>

                                        <div class="form-inline mb-2">
                                            <div style="min-width: 200px">
                                                <label class="d-block float-right mr-3" for="email">Email</label>
                                            </div>
                                            <div style="min-width: 500px" class="d-flex align-items-center">
                                                <input type="text" id="email" class="form-control mr-2 flex-grow-1" value="" />
                                                <a href="#" class="text-decoration-none">Thay đổi</a>
                                            </div>
                                        </div>

                                        <div class="form-inline mb-2">
                                            <div style="min-width: 200px">
                                                <label class="d-block float-right mr-3" for="sdt">Số điện thoại</label>
                                            </div>
                                            <div style="min-width: 500px" class="d-flex align-items-center">
                                                <input type="text" id="sdt" class="form-control flex-grow-1 mr-2" value="*******99" />
                                                <a href="#" class="text-decoration-none">Thay đổi</a>
                                            </div>
                                        </div>

                                        <div class="form-inline mb-2">
                                            <div style="min-width: 200px">
                                                <label class="d-block float-right mr-3">Giới tính</label>
                                            </div>
                                            <div class="d-flex justify-content-between align-items-center">
                                                <label for="nu">
                                                    <input id="nu" type="radio" name="gioiTinh" class="form-control mr-1" value="Nam" />
                                                    Nam
                                                </label>
                                                <label for="nam">
                                                    <input id="nam" type="radio" name="gioiTinh" class="form-control ml-2 mr-1" value="Nữ" /> Nữ
                                                </label>
                                                <label for="khac">
                                                    <input id="khac" type="radio" name="gioiTinh" class="form-control ml-2 mr-1" value="Khác" /> Khác
                                                </label>
                                            </div>
                                        </div>

                                        <div class="form-inline mb-2">
                                            <div style="min-width: 200px">
                                                <label class="d-block float-right mr-3">Ngày sinh</label>
                                            </div>
                                            <div class="d-flex justify-content-between align-items-center" style="min-width: 500px">
                                                <select class="form-control flex-grow-1" name="ngaySinh" id="ngaySinh">
                                                    <option value="1">1</option>
                                                    <option value="2">2</option>
                                                    <option value="3">3</option>
                                                    <option value="4">4</option>
                                                    <option value="5">5</option>
                                                </select>

                                                <select class="form-control ml-3 flex-grow-1" name="thangSinh" id="thangSinh">
                                                    <option value="1">Tháng 1</option>
                                                    <option value="2">Tháng 2</option>
                                                    <option value="3">Tháng 3</option>
                                                    <option value="4">Tháng 4</option>
                                                    <option value="5">Tháng 5</option>
                                                </select>

                                                <select class="form-control ml-3 flex-grow-1" name="namSinh" id="namSinh">
                                                    <option value="1998">1998</option>
                                                    <option value="1997">1997</option>
                                                    <option value="1996">1996</option>
                                                    <option value="1995">1995</option>
                                                    <option value="1994">1994</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="flex-grow-1 d-flex flex-column align-items-center justify-content-center">
                                        <i class="far fa-user-circle mb-3" style="width: 100px; height: 100px"></i>
                                        <button class="btn btn-sm btn-outline-primary p-0 mb-3">
                                            <label for="changeAvtImg" class="mb-0 p-1">Chọn ảnh</label>
                                        </button>
                                        <input type="file" id="changeAvtImg" class="d-none">
                                        <span>Dung lượng tối đa 1MB</span>
                                    </div>
                                </div>
                                <button class="btn btn-ms-primary" style="margin-left: 200px">
                                    Lưu thay đổi
                                </button>
                            </div>
                        </div>
                    </div>

                    <!-- Begin đơn mua -->
                    <div class="container-fluid d-none" id="donMua">
                        <!-- Menu đơn mua -->
                        <div class="card menuDonMua">
                            <div class="card-body p-0 d-flex justify-content-between">
                                <div class="receipt-menu-item receipt-menu-item-selected p-3 flex-grow-1 text-center">
                                    <a href="#" class="receipt-menu-link text-decoration-none ">
                                        Tất cả
                                    </a>
                                </div>
                                <div class="receipt-menu-item p-3 flex-grow-1 text-center">
                                    <a href="#" class="receipt-menu-link text-decoration-none">
                                        Đã giao
                                    </a>
                                </div>
                                <div class="receipt-menu-item p-3 flex-grow-1 text-center">
                                    <a href="#" class="receipt-menu-link text-decoration-none">
                                        Đã hủy
                                    </a>
                                </div>
                            </div>
                        </div>

                        <!-- search -->
                        <div class="card-body px-0 py-2">
                            <div class="input-group">
                                <input type="text" class=" form-control bg-light border-0 shadow"
                                       placeholder="Tìm kiếm theo tên sản phẩm hoặc ID đơn hàng" />
                                <div class="input-group-append">
                                    <button class="btn btn-primary" style="height: 38px" type="button">
                                        <i class="fas fa-search fa-sm"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                        <!-- search -->

                        <!-- xem đơn hàng -->
                        <div class="row">
                            <div class="col-xl-12 col-lg-12">
                                <div class="card shadow mb-4">
                                    <!-- Card Header - Dropdown -->
                                    <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                        <h6 class="m-0 font-weight-bold text-primary">#2010202000001</h6>
                                        <h6 class="m-0 font-weight-bold text-primary">Đã giao</h6>
                                    </div>

                                    <!-- Card Body -->
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col col-2" style="width: 100%;">
                                                <img style="height: 90px;" src="<c:url value="/images/products/fallblazer-nau.jpg" />"
                                                     alt="fall-blazer" />
                                            </div>
                                            <div class="col col-8">
                                                <p class="text-dark mb-0">
                                                    <a href="<c:url value="/views/web/product-detail.jsp" />">Fall Blazer</a>
                                                </p>
                                                <p class="text-dark">x 1</p>
                                            </div>
                                            <div class="col col-2">
                                                <p class="text-dark mb-0 float-right">1.119.000đ</p>
                                            </div>
                                        </div>

                                        <hr />
                                        <div class="row">
                                            <div class="col col-2" style="width: 100%;">
                                                <img style="height: 90px;" src="<c:url value="/images/products/smkt-vang.jpg" />" alt="fall-blazer" />
                                            </div>
                                            <div class="col col-8">
                                                <p class="text-dark mb-0">
                                                    <a href="<c:url value="/views/web/product-detail.jsp" />">Sơ mi tay ngắn vàng</a>
                                                </p>
                                                <p class="text-dark">x 2</p>
                                            </div>
                                            <div class="col col-2">
                                                <p class="text-dark mb-0 float-right">440.000đ</p>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="card-footer">
                                        <div class="row d-flex flex-column">
                                            <div class="d-flex justify-content-end mb-4">
                                                <h6 class="m-0 font-weight-bold text-primary">Tổng số tiền:</h6>
                                                <h6 class="m-0 font-weight-bold text-primary mr-2 ml-3">1.559.000đ</h6>
                                            </div>

                                            <div class="d-flex justify-content-end">
                                                <button class="btn mr-2 btn-ms-primary">
                                                    Mua lần nữa
                                                </button>
                                                <button class="btn mr-2 btn-outline-info btn-ms-outline-primary">
                                                    Xem chi tiết đơn hàng
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- xem đơn hàng -->
                        <div class="row">
                            <div class="col-xl-12 col-lg-12">
                                <div class="card shadow mb-4">
                                    <!-- Card Header - Dropdown -->
                                    <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                        <h6 class="m-0 font-weight-bold text-primary">#2010202000001</h6>
                                        <h6 class="m-0 font-weight-bold text-primary">Đã giao</h6>
                                    </div>

                                    <!-- Card Body -->
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col col-2" style="width: 100%;">
                                                <img style="height: 90px;" src="<c:url value="/images/products/fallblazer-nau.jpg" />"
                                                     alt="fall-blazer" />
                                            </div>
                                            <div class="col col-8">
                                                <p class="text-dark mb-0">
                                                    <a href="<c:url value="/views/web/product-detail.jsp" />">Fall Blazer</a>
                                                </p>
                                                <p class="text-dark">x 1</p>
                                            </div>
                                            <div class="col col-2">
                                                <p class="text-dark mb-0 float-right">1.119.000đ</p>
                                            </div>
                                        </div>

                                        <hr />
                                        <div class="row">
                                            <div class="col col-2" style="width: 100%;">
                                                <img style="height: 90px;" src="<c:url value="/images/products/smkt-vang.jpg" />" alt="fall-blazer" />
                                            </div>
                                            <div class="col col-8">
                                                <p class="text-dark mb-0">
                                                    <a href="<c:url value="/views/web/product-detail.jsp" />">Sơ mi tay ngắn vàng</a>
                                                </p>
                                                <p class="text-dark">x 2</p>
                                            </div>
                                            <div class="col col-2">
                                                <p class="text-dark mb-0 float-right">440.000đ</p>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="card-footer">
                                        <div class="row d-flex flex-column">
                                            <div class="d-flex justify-content-end mb-4">
                                                <h6 class="m-0 font-weight-bold text-primary">Tổng số tiền:</h6>
                                                <h6 class="m-0 font-weight-bold text-primary mr-2 ml-3">1.559.000đ</h6>
                                            </div>

                                            <div class="d-flex justify-content-end">
                                                <button class="btn mr-2 btn-ms-primary">
                                                    Mua lần nữa
                                                </button>
                                                <button class="btn mr-2 btn-outline-info btn-ms-outline-primary">
                                                    Xem chi tiết đơn hàng
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- begin change password -->
                    <div class="container-fluid d-none" id="changePassword">
                        <div class="row">
                            <!--  -->
                            <div class="col-xl-12 col-lg-12">
                                <div class="card shadow mb-4">
                                    <!-- Card Header - Dropdown -->
                                    <div class="card-header py-3 d-flex flex-column align-items-start justify-content-between">
                                        <h3>Đổi mật khẩu</h3>
                                        <p class="mb-0">
                                            Để bảo mật tài khoản, vui lòng không chia sẻ mật khẩu cho người khác
                                        </p>
                                    </div>

                                    <!-- Card Body -->
                                    <div class="card-body py-5">
                                        <div class="row d-flex form-inline justify-content-around mr-5 ml-5 mb-2">
                                            <label for="matKhauHienTai" class="justify-content-end mr-3" style="min-width: 200px">
                                                Mật khẩu hiện tại
                                            </label>
                                            <input id="matKhauHienTai" class="form-control flex-grow-1" type="text" />
                                            <label style="min-width: 200px">
                                                <a href="<c:url value="/views/web/forgot-password.jsp" />">
                                                    <h6 class="font-weight-bold align-items-center">Quên mật khẩu?</h6>
                                                </a>
                                            </label>
                                        </div>

                                        <div class="row d-flex form-inline justify-content-around mr-5 ml-5 mb-2">
                                            <label for="matKhauMoi" class="justify-content-end mr-3" style="min-width: 200px">
                                                Mật khẩu mới
                                            </label>
                                            <input id="matKhauMoi" class="form-control flex-grow-1" type="text" />
                                            <label style="min-width: 200px"></label>
                                        </div>

                                        <div class="row d-flex form-inline justify-content-around mr-5 ml-5 mb-2">
                                            <label for="xacNhanMatKhau" class="justify-content-end mr-3" style="min-width: 200px">
                                                Xác nhận mật khẩu
                                            </label>
                                            <input id="xacNhanMatKhau" class="form-control flex-grow-1" type="text" />
                                            <label style="min-width: 200px"></label>
                                        </div>

                                        <div class="row d-flex form-inline justify-content-around mr-5 ml-5 mb-2">
                                            <button class="btn btn-ms-primary">Xác nhận</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.container-fluid -->

                </div>
                <!-- End of Main Content -->

                <!-- Footer -->
                <%@ include file="/common/admin/footer.jsp"%>
                <!-- End of Footer -->
            </div>
            <!-- End of Content Wrapper -->
        </div>
        <!-- End of Page Wrapper -->

        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>

        <!-- Logout Modal-->
        <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
             aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Bạn muốn đăng xuất?</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        Chọn "Đăng xuất" nếu bạn muốn thoát.
                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-secondary" type="button" data-dismiss="modal">Hủy</button>
                        <a class="btn btn-primary" href="login.jsp">Đăng xuất</a>
                    </div>
                </div>
            </div>
        </div>


        <script src="<c:url value='/templates/admin/fontawesome-5.15.1/js/all.min.js' />" type="text/javascript"></script>
        <script src="<c:url value='/templates/common/jquery/jquery-3.2.1.min.js' />" type="text/javascript"></script>
        <script src="<c:url value='/templates/common/bootstrap/js/bootstrap.bundle.min.js' />" type="text/javascript"></script>
        <script src="<c:url value='/templates/admin/jquery/jquery.easing.min.js' />" type="text/javascript"></script>
        <script src="<c:url value='/templates/common/bootstrap/js/popper.min.js' />" type="text/javascript"></script>
        <script src="<c:url value='/templates/admin/jquery/sb-admin-2.min.js' />" type="text/javascript"></script>
        <script src="<c:url value='/templates/admin/js/detail-order.js' />" type=""></script>

        <!-- cấp thẻ thành viên button -->
        <script>
            $('.btnCapThe').on('click', function () {
                $('.cardInfoTable').removeClass('invisible');
                this.remove();
            })
        </script>
    </body>
</html>