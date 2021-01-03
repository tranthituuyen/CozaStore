<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chi tiết đơn hàng</title>
    </head>
    <body>
        <!-- Page Heading -->
        <div class="mb-2">
            <a href="order-management.jsp" class="userModel-select-none text-decoration-none">
                <i class="fas fa-angle-left"></i>
                Quay lại
            </a>
        </div>

        <!-- đơn hàng mới -->
        <div class="row mb-4" id="donHangMoiTab">
            <div class="col-xl-12 col-lg-12">
                <div class="card shadow">
                    <div class="card-header d-flex flex-column">
                        <h4 class="font-weight-bold">Đơn hàng #201208001</h4>
                        <div class="d-flex justify-content-between">
                            <div class="d-flex justify-content-start">
                                <table class="mr-5">
                                    <tr class="px-2">
                                        <th class="text-left">ID khách hàng:</th>
                                        <td class="text-left">&emsp;KH001</td>
                                    </tr>
                                    <tr>
                                        <th class="text-left">Tên khách hàng:</th>
                                        <td class="text-left">&emsp;Đinh Thị Thùy Trang</td>
                                    </tr>
                                    <tr>
                                        <th class="text-left">Số điện thoại:</th>
                                        <td class="text-left">&emsp;034.xxx.xxxx</td>
                                    </tr>
                                    <tr class="px-2">
                                        <th class="text-left">Địa chỉ giao hàng:</th>
                                        <td class="text-left">&emsp;Tân Phú</td>
                                    </tr>
                                </table>

                                <table>
                                    <tr>
                                        <th class="text-left">ID thẻ thành viên:</th>
                                        <td class="text-left">&emsp;1</td>
                                    </tr>
                                    <tr>
                                        <th class="text-left">Cấp thành viên:</th>
                                        <td class="text-left">&emsp;1</td>
                                    </tr>
                                    <tr>
                                        <th class="text-left">Chiết khấu:</th>
                                        <td class="text-left">&emsp;5%</td>
                                    </tr>
                                    <tr>
                                        <th class="text-left">Điểm tích lũy:</th>
                                        <td class="text-left">&emsp;98</td>
                                    </tr>
                                </table>
                            </div>

                            <table>
                                <tr>
                                    <td colspan="2" class="text-right text-warning">
                                        <button class="btn btn-sm btn-warning w-100 btnXacNhan">Xác nhận đơn hàng</button>
                                        <span class="d-none txtDangXuLy font-weight-bold">
                                            <i class="fas fa-spinner mr-2"></i>Đang xử lý
                                        </span>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="d-none text-right text-danger">
                                        <button class="btn btn-sm btn-danger w-100 btnHuyDon">Hủy đơn</button>
                                        <span class="d-none font-weight-bold"><i class="fas fa-times-circle mr-2"></i>Đã hủy</span>
                                    </td>
                                    <td class="d-none text-right text-success">
                                        <button class="btn btn-sm btn-success w-100 btnHoanThanh">Hoàn thành</button>
                                        <span class="d-none font-weight-bold"><i class="fas fa-check-double mr-2"></i>Đã giao</span>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover"
                                   id="dataTableDonHangMoi" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th class="align-middle">Tên SP</th>
                                        <th class="align-middle">Size</th>
                                        <th class="align-middle">Màu</th>
                                        <th class="align-middle">Slg</th>
                                        <th class="align-middle">Giá</th>
                                        <th class="align-middle">Thành tiền</th>
                                    </tr>
                                </thead>

                                <tfoot>
                                    <tr>
                                        <th class="align-middle" colspan="5">Tổng tiền</th>
                                        <th class="align-middle">1.412.000</th>
                                    </tr>
                                </tfoot>

                                <tbody>
                                    <tr>
                                        <td class="align-middle">Notch Jacket</td>
                                        <td class="align-middle">Freesize</td>
                                        <td class="align-middle">Xám</td>
                                        <td class="align-middle">1</td>
                                        <td class="align-middle">649.000</td>
                                        <td class="align-middle">649.000</td>
                                    </tr>
                                    <tr>
                                        <td class="align-middle">Mixed Pants</td>
                                        <td class="align-middle">M</td>
                                        <td class="align-middle">Be</td>
                                        <td class="align-middle">2</td>
                                        <td class="align-middle">419.000</td>
                                        <td class="align-middle">838.000</td>
                                    </tr>
                                    <tr>
                                        <th class="align-middle" colspan="3">Tổng số lượng</th>
                                        <td class="align-middle">3</td>
                                        <th class="align-middle">Giảm</th>
                                        <td class="align-middle">75.000</td>
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
