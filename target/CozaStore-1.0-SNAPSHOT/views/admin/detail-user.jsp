<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thông tin chi tiết</title>
    </head>

    <body>
        <!-- Page Heading -->
        <div class="mb-2">
            <a href="userModel-management.jsp" class="userModel-select-none text-decoration-none">
                <i class="fas fa-angle-left"></i>
                Quay lại
            </a>
        </div>

        <!-- thong tin khách hàng -->
        <div class="row mb-4">
            <div class="col-xl-12 col-lg-12">
                <div class="card shadow">
                    <div class="card-header d-flex flex-column">
                        <h4 class="font-weight-bold">Thông tin khách hàng</h4>
                        <div class="d-flex">
                            <div class="d-flex justify-content-between flex-grow-1">
                                <table class="">
                                    <tr>
                                        <th class="text-left">Tên khách hàng:</th>
                                        <td class="text-left">&emsp;Ngụy Hoàng Thanh Thảo</td>
                                    </tr>
                                    <tr class="px-2">
                                        <th class="text-left">ID tài khoản:</th>
                                        <td class="text-left">&emsp;7</td>
                                    </tr>
                                    <tr class="px-2">
                                        <th class="text-left">ID khách hàng:</th>
                                        <td class="text-left">&emsp;KH003</td>
                                </table>

                                <table class="">
                                    <tr class="px-2">
                                        <th class="text-left">Tên đăng nhập:</th>
                                        <td class="text-left">&emsp;thaonguy</td>
                                    </tr>
                                    <tr>
                                        <th class="text-left">Gmail:</th>
                                        <td class="text-left">&emsp;thaonguy@gmail.com</td>
                                    </tr>
                                    <tr>
                                        <th class="text-left">Số điện thoại:</th>
                                        <td class="text-left">&emsp;034.xxx.xxxx</td>
                                    </tr>
                                </table>

                                <table class="invisible cardInfoTable">
                                    <tr>
                                        <th class="text-left">ID thẻ thành viên:</th>
                                        <td class="text-left">&emsp;2</td>
                                    </tr>
                                    <tr>
                                        <th class="text-left">Cấp thành viên:</th>
                                        <td class="text-left">&emsp;0</td>
                                    </tr>
                                    <tr>
                                        <th class="text-left">Điểm tích lũy:</th>
                                        <td class="text-left">&emsp;0</td>
                                    </tr>
                                </table>

                                <table><tr><td>
                                    <button class="btn btn-sm btn-ms-primary btnCapThe">
                                        Thông tin thẻ thành viên
                                    </button>
                                </td></tr></table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row mb-4">
            <div class="col-xl-12 col-lg-12">
                <div class="card shadow">
                    <div class="card-header">
                        <div class="d-flex justify-content-between align-items-center">
                            <h6 class="m-0 mr-4 font-weight-bold text-primary">
                                Tất cả đơn hàng
                            </h6>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="flex-grow-1">
                                    <div class="form-inline d-flex justify-content-start mb-0">
                                        <h6 class="m-0 text-primary font-weight-bold mr-2">Lọc theo:</h6>
                                        <select id="select-tinhtrang" class="form-control mr-2">
                                            <option value="Tất cả">Tình trạng: Tất cả</option>
                                            <option value="Đang xử lý">Đang xử lý</option>
                                            <option value="Đã giao">Đã giao</option>
                                            <option value="Đơn mới">Đã hủy</option>
                                        </select>

                                        <button class="btn btn-ms-primary">
                                            Tìm kiếm
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="card-body">
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
                                                <img style="height: 90px;" src="images/fallblazer-nau.jpg" alt="fall-blazer" />
                                            </div>
                                            <div class="col col-8">
                                                <p class="text-dark mb-0">
                                                    <a href="product-detail.html">Fall Blazer</a>
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
                                                <img style="height: 90px;" src="images/smkt-vang.jpg" alt="fall-blazer" />
                                            </div>
                                            <div class="col col-8">
                                                <p class="text-dark mb-0">
                                                    <a href="product-detail.html">Sơ mi tay ngắn vàng</a>
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
                                            <div class="d-flex justify-content-end">
                                                <h6 class="m-0 font-weight-bold text-primary">Tổng số tiền:</h6>
                                                <h6 class="m-0 font-weight-bold text-primary mr-2 ml-3">1.559.000đ</h6>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- xem đơn hàng -->
                        <div class="row">
                            <!--  -->
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
                                                <img style="height: 90px;" src="images/fallblazer-nau.jpg" alt="fall-blazer" />
                                            </div>
                                            <div class="col col-8">
                                                <p class="text-dark mb-0">
                                                    <a href="product-detail.html">Fall Blazer</a>
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
                                                <img style="height: 90px;" src="images/smkt-vang.jpg" alt="fall-blazer" />
                                            </div>
                                            <div class="col col-8">
                                                <p class="text-dark mb-0">
                                                    <a href="product-detail.html">Sơ mi tay ngắn vàng</a>
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
                                            <div class="d-flex justify-content-end">
                                                <h6 class="m-0 font-weight-bold text-primary">Tổng số tiền:</h6>
                                                <h6 class="m-0 font-weight-bold text-primary mr-2 ml-3">1.559.000đ</h6>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>