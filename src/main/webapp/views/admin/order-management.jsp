<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Quản lý đơn hàng</title>
</head>
<body id="page-top">
    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4 userModel-select-none">
        <h1 class="h3 mb-0 text-gray-800">Quản lý đơn hàng</h1>
        <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                class="fas fa-download fa-sm text-white-50"></i> Xuất báo cáo
        </a>
    </div>

    <!-- Content Row -->
    <div class="row">
        <!-- đơn hàng mới -->
        <div class="col-xl-3 col-md-6 mb-4 mainTab">
            <div id="donHangMoi" class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs text-primary text-uppercase mb-1">
                                <h6 class="font-weight-bold">Đơn hàng mới</h6>
                            </div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                14 đơn
                            </div>
                        </div>
                        <div class="col-auto qldh">
                            <img class="qldh-img" src="../../images/icons/new-order.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- đơn hàng đang xử lý -->
        <div class="col-xl-3 col-md-6 mb-4 mainTab">
            <div class="card border-left-warning shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs text-warning text-uppercase mb-1">
                                <h6 class="font-weight-bold">Đang xử lý</h6>
                            </div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                8 đơn
                            </div>
                        </div>
                        <div class="col-auto qldh">
                            <img class="qldh-img" src="../../images/icons/processing-order.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Đơn hàng đã giao -->
        <div class="col-xl-3 col-md-6 mb-4 mainTab">
            <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs text-success text-uppercase mb-1">
                                <h6 class="font-weight-bold">Đã giao</h6>
                            </div>
                            <div class="row no-gutters align-items-center">
                                <div class="col-auto">
                                    <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">
                                        6 đơn
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-auto qldh">
                            <img src="../../images/icons/successful-order.png" alt="" class="qldh-img">
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Đơn hàng đã hủy -->
        <div class="col-xl-3 col-md-6 mb-4 mainTab">
            <div class="card border-left-danger shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs text-danger text-uppercase mb-1">
                                <h6 class="font-weight-bold">Đã hủy</h6>
                            </div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                4 đơn
                            </div>
                        </div>
                        <div class="col-auto qldh">
                            <img src="../../images/icons/cancel-order.png" alt="" class="qldh-img">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- đơn hàng mới -->
    <div class="row mb-4" id="donHangMoiTab">
        <div class="col-xl-12 col-lg-12">
            <div class="card shadow">
                <div class="card-header">
                    <div class="d-flex justify-content-between align-items-center">
                        <h6 class="m-0 mr-4 font-weight-bold text-primary">
                            Đơn hàng trong ngày
                        </h6>
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="flex-grow-1">
                                <div class="form-inline d-flex justify-content-start mb-0">
                                    <h6 class="m-0 text-primary font-weight-bold mr-2">Lọc theo:</h6>
                                    <input class="form-control mr-2" type="date" id="birthday"
                                           name="birthday">

                                    <select id="select-tinhtrang" class="form-control mr-2">
                                        <option value="Tất cả">Tình trạng: Tất cả</option>
                                        <option value="Đơn mới">Đơn mới</option>
                                        <option value="Đang xử lý">Đang xử lý</option>
                                        <option value="Đã giao">Đã giao</option>
                                    </select>

                                    <button class="btn btn-ms-primary">
                                        Tìm kiếm
                                    </button>
                                </div>
                            </div>

                            <button class="d-none btn btn-circle btn-ms-outline-primary myBtnSearch">
                                <i class="fas fa-search"></i>
                            </button>

                            <form class="d-none form-inline myFormSearch">
                                <div class="input-group d-flex align-items-center">
                                    <input type="text" class="flex-grow-1 form-control bg-light msTxtBox" style="height:40px;width: 420px;"
                                           placeholder="Tìm kiếm theo mã đơn hàng, id khách hàng hoặc sdt">
                                    <div class="input-group-append">
                                        <button class="btn btn-circle btn-ms-outline-primary myFormSearchBtn">
                                            <i class="fas fa-search"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                <div class="card-body">
                    <div class="d-flex w-75 justify-content-between">
                        <p class="font-weight-bold">Tổng số đơn hàng: <span class="font-weight-light">5</span></p>
                        <p class="font-weight-bold">Đơn mới: <span class="font-weight-light">2</span></p>
                        <p class="font-weight-bold">Đang xử lý: <span class="font-weight-light">1</span></p>
                        <p class="font-weight-bold">Đã giao: <span class="font-weight-light">2</span></p>
                        <p class="font-weight-bold">Đã hủy: <span class="font-weight-light">0</span></p>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover" id="dataTableDonHangMoi"
                               width="100%" cellspacing="0">
                            <thead>
                                <tr>
                                    <th class="align-middle">Mã DH</th>
                                    <th class="align-middle">ID-KH</th>
                                    <th class="align-middle">Tên khách hàng</th>
                                    <th class="align-middle">Số điện thoại</th>
                                    <th class="align-middle">Địa chỉ</th>
                                    <th class="align-middle">Số lượng</th>
                                    <th class="align-middle">Tình trạng</th>
                                </tr>
                            </thead>

                            <tfoot>
                                <tr>
                                    <th class="align-middle">Mã DH</th>
                                    <th class="align-middle">ID-KH</th>
                                    <th class="align-middle">Tên khách hàng</th>
                                    <th class="align-middle">Số điện thoại</th>
                                    <th class="align-middle">Địa chỉ</th>
                                    <th class="align-middle">Số lượng</th>
                                    <th class="align-middle">Tình trạng</th>
                                </tr>
                            </tfoot>

                            <tbody>
                                <tr>
                                    <td class="align-middle">
                                        <a href="../../WEB-INF/view/detail-order.html">
                                            #201208001
                                        </a>
                                    </td>
                                    <td class="align-middle">KH001</td>
                                    <td class="align-middle">Đinh Thị Thùy Trang</td>
                                    <td class="align-middle">034.xxx.xxxx</td>
                                    <td class="align-middle">Tân Phú</td>
                                    <td class="align-middle">3</td>
                                    <td class="align-middle">Đơn mới</td>
                                </tr>

                                <tr>
                                    <td class="align-middle">
                                        <a href="../../WEB-INF/view/detail-order.html">
                                            #201208002
                                        </a>
                                    </td>
                                    <td class="align-middle">KH002</td>
                                    <td class="align-middle">Đỗ Thị Quỳnh Anh</td>
                                    <td class="align-middle">034.xxx.xxxx</td>
                                    <td class="align-middle">Quận 3</td>
                                    <td class="align-middle">3</td>
                                    <td class="align-middle">Đơn mới</td>
                                </tr>

                                <tr>
                                    <td class="align-middle">
                                        <a href="../../WEB-INF/view/detail-order.html">
                                            #201208003
                                        </a>
                                    </td>
                                    <td class="align-middle">KH003</td>
                                    <td class="align-middle">Ngụy Hoàng Thanh Thảo</td>
                                    <td class="align-middle">034.xxx.xxxx</td>
                                    <td class="align-middle">Thủ Đức</td>
                                    <td class="align-middle">3</td>
                                    <td class="align-middle">Đang xử lý</td>
                                </tr>

                                <tr>
                                    <td class="align-middle">
                                        <a href="../../WEB-INF/view/detail-order.html">
                                            #201208004
                                        </a>
                                    </td>
                                    <td class="align-middle">KH004</td>
                                    <td class="align-middle">Hạo An</td>
                                    <td class="align-middle">034.xxx.xxxx</td>
                                    <td class="align-middle">Tân Bình</td>
                                    <td class="align-middle">3</td>
                                    <td class="align-middle">Đã giao</td>
                                </tr>

                                <tr>
                                    <td class="align-middle">
                                        <a href="../../WEB-INF/view/detail-order.html">
                                            #201208005
                                        </a>
                                    </td>
                                    <td class="align-middle">TN001</td>
                                    <td class="align-middle">Phạm Nguyễn Thanh Trà</td>
                                    <td class="align-middle">034.xxx.xxxx</td>
                                    <td class="align-middle">Tân Bình</td>
                                    <td class="align-middle">3</td>
                                    <td class="align-middle">Đã giao</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>