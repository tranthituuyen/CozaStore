<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Title</title>
    </head>
    <body>
        <!-- Page Heading -->
        <div class="d-sm-flex align-items-center justify-content-between mb-4 userModel-select-none">
            <h1 class="h3 mb-0 font-weight-bold">Quản lý nhân sự</h1>
        </div>

        <!-- đơn hàng mới -->
        <div class="row mb-4" id="donHangMoiTab">
            <div class="col-xl-12 col-lg-12">
                <div class="card shadow">
                    <div class="card-header">
                        <div class="d-flex justify-content-between align-items-center">
                            <h6 class="m-0 mr-4 font-weight-bold text-primary">
                                <a href="add-employee.jsp" class="text-decoration-none">
                                    <i class="fas fa-plus-circle"></i>
                                    Thêm nhân viên
                                </a>
                            </h6>
                            <div class="form-inline d-flex justify-content-start mb-0">
                                <input class="form-control h-50 mr-2" type="text" placeholder="Tìm kiếm"/>
                                <button class="btn btn-circle btn-sm p-3 btn-ms-primary">
                                    <i class="fas fa-search"></i>
                                </button>
                            </div>
                        </div>
                    </div>

                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover" id="dataTableDonHangMoi"
                                   width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th class="align-middle">ID-NV</th>
                                        <th class="align-middle">Họ tên</th>
                                        <th class="align-middle">Ngày sinh</th>
                                        <th class="align-middle">Giới tính</th>
                                        <th class="align-middle">Địa chỉ</th>
                                        <th class="align-middle">Sdt</th>
                                        <th class="align-middle">Vị trí</th>
                                        <th class="align-middle">Enable</th>
                                        <th class="align-middle">#</th>
                                    </tr>
                                </thead>

                                <tfoot>
                                    <tr>
                                        <th class="align-middle">ID-NV</th>
                                        <th class="align-middle">Họ tên</th>
                                        <th class="align-middle">Ngày sinh</th>
                                        <th class="align-middle">Giới tính</th>
                                        <th class="align-middle">Địa chỉ</th>
                                        <th class="align-middle">Sdt</th>
                                        <th class="align-middle">Vị trí</th>
                                        <th class="align-middle">Enable</th>
                                        <th class="align-middle">#</th>
                                    </tr>
                                </tfoot>

                                <tbody>
                                    <tr>
                                        <td class="align-middle">TN001</td>
                                        <td class="align-middle">Nguyễn Vũ Thiên Anh</td>
                                        <td class="align-middle">09.10.1998</td>
                                        <td class="align-middle">Nữ</td>
                                        <td class="align-middle">Thủ Đức</td>
                                        <td class="align-middle">034.xxx.xxxx</td>
                                        <td class="align-middle">Thu ngân</td>
                                        <td class="align-middle">
                                            <input type="checkbox" checked>
                                        </td>
                                        <td class="align-middle">
                                            <button class="border-0 button btnEdit"
                                                    onclick="window.location.href='edit-employee-info.html'">
                                                <i class="fas fa-pencil-alt"></i>
                                            </button>
                                            <button class="button border-0 btnDelete btnDeleteEmployee">
                                                <i class="fas fa-minus-circle"></i>
                                            </button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="align-middle">SA001</td>
                                        <td class="align-middle">Phạm Nguyễn Thanh Trà</td>
                                        <td class="align-middle">07.04.2020</td>
                                        <td class="align-middle">Nữ</td>
                                        <td class="align-middle">Tân Bình</td>
                                        <td class="align-middle">034.xxx.xxxx</td>
                                        <td class="align-middle">Sale</td>
                                        <td class="align-middle">
                                            <input type="checkbox" checked>
                                        </td>
                                        <td class="align-middle">
                                            <button class="border-0 button btnEdit"
                                                    onclick="window.location.href='edit-employee-info.html'">
                                                <i class="fas fa-pencil-alt"></i>
                                            </button>
                                            <button class="button border-0 btnDelete btnDeleteEmployee">
                                                <i class="fas fa-minus-circle"></i>
                                            </button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="align-middle">TN002</td>
                                        <td class="align-middle">Thái Thị Huyền</td>
                                        <td class="align-middle">30.04.1997</td>
                                        <td class="align-middle">Nữ</td>
                                        <td class="align-middle">Bình Thạnh</td>
                                        <td class="align-middle">034.xxx.xxxx</td>
                                        <td class="align-middle">Thu ngân</td>
                                        <td class="align-middle">
                                            <input type="checkbox" checked>
                                        </td>
                                        <td class="align-middle">
                                            <button class="border-0 button btnEdit"
                                                    onclick="window.location.href='edit-employee-info.html'">
                                                <i class="fas fa-pencil-alt"></i>
                                            </button>
                                            <button class="button border-0 btnDelete btnDeleteEmployee">
                                                <i class="fas fa-minus-circle"></i>
                                            </button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="align-middle">TN003</td>
                                        <td class="align-middle">Nguyễn Hoàng Gia Duy</td>
                                        <td class="align-middle">09.06.2020</td>
                                        <td class="align-middle">Nam</td>
                                        <td class="align-middle">Tân Bình</td>
                                        <td class="align-middle">034.xxx.xxxx</td>
                                        <td class="align-middle">Thu ngân</td>
                                        <td class="align-middle">
                                            <input type="checkbox" checked>
                                        </td>
                                        <td class="align-middle">
                                            <button class="border-0 button btnEdit"
                                                    onclick="window.location.href='edit-employee-info.html'">
                                                <i class="fas fa-pencil-alt"></i>
                                            </button>
                                            <button class="button border-0 btnDelete btnDeleteEmployee">
                                                <i class="fas fa-minus-circle"></i>
                                            </button>
                                        </td>
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
