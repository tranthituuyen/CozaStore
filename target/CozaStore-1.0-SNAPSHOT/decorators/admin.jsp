<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title><decorator:title default="Thống kê"/></title>

        <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
              rel="stylesheet">

        <link rel="stylesheet" href="<c:url value="/templates/common/bootstrap/css/bootstrap.min.css" />">
        <link rel="icon" type="image/png" href="<c:url value='/templates/web/icons/favicon.png' />" media="all"/>
        <link rel="stylesheet" href="<c:url value='/templates/admin/fontawesome-5.15.1/css/all.min.css' />"
              media="all"/>
        <link rel="stylesheet" href="<c:url value='/templates/admin/css/sb-admin-2.min.css' />" media="all"/>
        <link rel="stylesheet" href="<c:url value='/templates/admin/data-table/data-table.bootstrap-4.min.css' />">
        <link rel="stylesheet" href="<c:url value='/templates/admin/css/new-style.css' />" media="all"/>

        <script src="<c:url value='/templates/common/jquery/jquery-3.5.1.min.js' />" type="text/javascript"></script>
        <script src="<c:url value="/templates/common/bootstrap/js/bootstrap.min.js" />" type="text/javascript"></script>
        <script src="<c:url value="/templates/common/pagination/jquery.twbsPagination.min.js" />"
                type="text/javascript"></script>
    </head>

    <body id="page-top" onload="setPageHeading()">
        <%-- wrapper --%>
        <div id="wrapper">
            <%-- sidebar --%>
            <%@ include file="/common/admin/sidebar.jsp" %>

            <%-- content wrapper --%>
            <div id="content-wrapper" class="d-flex flex-column">

                <%-- main content --%>
                <div id="content">

                    <%-- topbar --%>
                    <%@ include file="/common/admin/topbar.jsp" %>

                    <%-- begin content --%>
                    <div class="container-fluid user-select-none">
                        <decorator:body/>
                    </div>
                </div>

                <%-- footer --%>
                <%@ include file="/common/admin/footer.jsp" %>
            </div>
        </div>

        <%-- scroll to top button --%>
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>

        <%-- logout modal --%>
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
                        <a class="btn btn-primary" href="<c:url value="/dang-nhap?action=logout" />">Đăng xuất</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- add new category modal-->
        <div class="modal fade" id="addCategoryModal" tabindex="-1" role="dialog"
             aria-labelledby="addCategoryLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="addCategoryLabel">
                            Thêm danh mục mới
                        </h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>

                    <div class="modal-body">
                        <!-- danh mục mới -->
                        <div class="d-flex flex-column justify-content-center">
                            <div class="form-group mb-2">
                                <label for="maDanhMuc" class="justify-content-start edit-product-label">
                                    Mã danh mục:
                                </label>
                                <input class="form-control flex-grow-1" id="maDanhMuc" type="text"/>
                            </div>
                            <div class="form-group mb-2">
                                <label for="tenDanhMuc" class="justify-content-start edit-product-label">
                                    Tên danh mục:
                                </label>
                                <input class="form-control flex-grow-1" id="tenDanhMuc" type="text"/>
                            </div>
                            <div class="form-group">
                                <label for="category-img" class="justify-content-start edit-product-label mb-0">
                                    Chọn hình ảnh:
                                </label>
                                <input class="d-none" type="file" id="category-img">
                                <label for="category-img">
                                    <a class="btn btn-sm btn-outline-primary">
                                        <i class="fas fa-upload"></i>
                                        Tải ảnh lên
                                    </a>
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-secondary" type="button"
                                data-dismiss="modal">Hủy
                        </button>
                        <button class="btn btn-ms-primary float-right btnAddCategory">
                            Tạo
                        </button>
                    </div>
                </div>
            </div>
        </div>

        <!-- edit category modal -->
        <div class="modal modal-lg fade" id="editCategoryModal" tabindex="-1" role="dialog"
             aria-labelledby="editCategoryModal" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <!-- modal header -->
                    <div class="modal-header">
                        <h5 class="modal-title">CZAK - Áo khoác Coza</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>

                    <div class="modal-body">
                        <div class="row d-flex justify-content-around">
                            <div class="col col-md-6 flex-grow-1">
                                <div class="form-inline d-flex justify-content-start mb-2">
                                    <label for="editMaDanhMuc" class="justify-content-start edit-product-label">
                                        Mã danh mục:
                                    </label>
                                    <input class="form-control flex-grow-1" id="editMaDanhMuc"
                                           type="text" value="AK"/>
                                </div>

                                <div class="form-inline d-flex justify-content-start mb-2">
                                    <label for="editTenDanhMuc" class="justify-content-start edit-product-label">
                                        Tên danh mục:
                                    </label>
                                    <input class="form-control flex-grow-1" id="editTenDanhMuc"
                                           type="text" value="Áo khoác"/>
                                </div>

                                <div class="form-inline">
                                <span class="justify-content-start">
                                    Hình ảnh:
                                </span>
                                    <br>
                                    <input class="d-none" type="file" id="inputFile">
                                    <label for="inputFile">
                                        <a class="btn btn-sm text-primary">
                                            <i class="fas fa-pencil-alt"></i>
                                            Chỉnh sửa
                                        </a>
                                    </label>
                                </div>
                            </div>

                            <div class="col col-md-6 flex-grow-1 mt-2">
                                <div class="card editCategoryImg">
                                    <img src="<c:url value="/images/banners/banner-04.jpg" />" alt="AK">
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="modal-footer">
                        <button class="btn btn-secondary" type="button" data-dismiss="modal">Hủy</button>
                        <a class="btn btn-primary" href="#">Lưu thay đổi</a>
                    </div>
                </div>
            </div>
        </div>

        <%-- script --%>
        <script src="<c:url value='/templates/admin/fontawesome-5.15.1/js/all.min.js' />"
                type="text/javascript"></script>
        <script src="<c:url value='/templates/common/bootstrap/js/bootstrap.bundle.min.js' />"
                type="text/javascript"></script>
        <script src="<c:url value='/templates/admin/jquery/jquery.easing.min.js' />" type="text/javascript"></script>
        <script src="<c:url value='/templates/common/sweetalert/sweetalert.min.js' />" type="text/javascript"></script>
        <script src="<c:url value='/templates/common/bootstrap/js/popper.min.js' />" type="text/javascript"></script>
        <script src="<c:url value='/templates/admin/jquery/sb-admin-2.min.js' />" type="text/javascript"></script>
        <script src="<c:url value='/templates/admin/chart/chart.min.js' />" type="text/javascript"></script>
        <script src="<c:url value='/templates/admin/jquery/chart-area-demo.js' />" type="text/javascript"></script>
        <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
        <script src="<c:url value='/templates/admin/js/detail-order.js' />" type=""></script>

        <%-- sidebar --%>
        <script type="text/javascript">
            const dashboardSidebar = document.querySelectorAll('.dashboardSidebar > li > a');
            for (var i = 0; i < dashboardSidebar.length; i++) {
                dashboardSidebar[i].onmouseenter = function (e) {
                    e.target.style.backgroundColor = 'rgb(12,0,184)';
                }
                dashboardSidebar[i].onmouseleave = function (e) {
                    e.target.style.backgroundColor = '#224abe';
                }
            }
        </script>

        <!-- add category swal -->
        <script type="text/javascript">
            var btnAddCategory = document.querySelector('.btnAddCategory');
            btnAddCategory.onclick = function () {
                console.log(btnAddCategory)
                var tenDanhMuc = document.getElementById('tenDanhMuc').value;
                swal(tenDanhMuc, 'đã thêm vào cơ sở dữ liệu', 'success', {
                    buttons: {
                        phanLoai: 'Thêm chi tiết',
                        cancel: 'OK'
                    }
                })
                    .then((value) => {
                        if (value) {
                            window.location.href = 'detail-category-management.html'
                        }
                    });
            }
        </script>

        <!-- swal add product -->
        <script type="text/javascript">
            var btnAddProduct = document.querySelector('.btn-add-product');
            btnAddProduct.onclick = function () {
                var tenSanPham = document.getElementById('tenSanPham').value;
                swal(`Đã thêm vào cơ sở dữ liệu`, {
                    icon: 'success',
                    button: false,
                    timer: 1000
                });
            }

            var btnAddProductDetail = document.querySelector('.btn-add-product-detail');
            btnAddProductDetail.onclick = function () {
                swal('', 'đã thêm vào cơ sở dữ liệu', 'success', {
                    buttons: {
                        xemChiTiet: 'Xem chi tiết',
                        cancel: 'OK'
                    }
                })
                    .then((value) => {
                        switch (value) {
                            case 'xemChiTiet':
                                window.location.href = 'product-detail.html';
                                break;

                            default:
                                break;
                        }
                    });
            }
        </script>

        <!-- delete category swal -->
        <script type="text/javascript">
            var btnDeleteProduct = document.querySelectorAll('.btnDeleteProduct');
            for (var i = 0; i < btnDeleteProduct.length; i++) {
                btnDeleteProduct[i].onclick = function () {
                    swal('Cảnh báo', 'Bạn không thể hoàn tác. Vẫn tiếp tục?', 'warning', {
                        buttons: {
                            cancel: 'Cancel',
                            confirm: 'Xóa'
                        },
                        dangerMode: true
                    })
                        .then((willDelete) => {
                            if (willDelete) {
                                swal('Đã xóa thành công', {
                                    icon: 'success',
                                    button: false,
                                    timer: 1000
                                });
                            }
                        });
                }
            }
        </script>

        <%-- add image swal --%>
        <script type="text/javascript">
            document.querySelector('.btnEditAddProductImg').onclick = function () {
                swal('', 'thêm ảnh thành công', 'success')
            }
        </script>

        <%-- save change swal --%>
        <script type="text/javascript">
            document.getElementById('btn-save-change').onclick = function () {
                swal('', 'đã lưu thay đổi', 'success')
            }
        </script>

        <%-- một cái thanh tìm kiếm mà tui hong chắc là mình sẽ để lại --%>
        <script type="text/javascript">
            $('.btnSearchDisplay').on('click', function () {
                $('.btnSearchHide').removeClass('d-none');
                $('.inputSearchHide').removeClass('d-none');
                $('.btnSearchDisplay').addClass('d-none');
            });

            $('.btnSearchHide').on('click', function () {
                $('.btnSearchDisplay').removeClass('d-none');
                $('.inputSearchHide').addClass('d-none');
                $('.btnSearchHide').addClass('d-none');
            });
        </script>
    </body>
</html>