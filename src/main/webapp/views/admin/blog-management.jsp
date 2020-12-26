<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lý bài viết</title>

        <!-- link file phân trang -->
<%--        <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">--%>

    </head>

    <body id="page-top">
        <!-- Page Heading -->
        <h1 class="h3 mb-2 text-gray-800">Danh mục bài viết</h1>

        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            <div class="card-header">
                <a href="<c:url value="/views/admin/add-blog.jsp" />">
                    <button class="btn col-md-3 mr-auto ml-auto float-right btn-ms-primary">
                        <i class="fas fa-pencil-alt"></i>
                        Viết bài
                    </button>
                </a>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>Tiêu đề</th>
                                <th>Trạng thái</th>
                                <th>Chỉnh sửa</th>
                            </tr>
                        </thead>

                        <tbody>
                            <tr>
                                <td style="vertical-align: middle"><a href="#">Trang phục thu đông năm 2020</a></td>
                                <td>Đang mở</td>
                                <!-- các btn thêm xóa sửa -->
                                <td style="vertical-align: middle">
                                    <button class="border-0 button btnEdit">
                                        <i class="fas fa-pencil-alt"></i>
                                    </button>
                                    <button class="button border-0 btnDelete btnDeleteProduct">
                                        <i class="fas fa-minus-circle"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td style="vertical-align: middle"><a href="#">Trang phục thu đông năm 2020</a></td>
                                <td>Đang mở</td>
                                <!-- các btn thêm xóa sửa -->
                                <td style="vertical-align: middle">
                                    <button class="border-0 button btnEdit">
                                        <i class="fas fa-pencil-alt"></i>
                                    </button>
                                    <button class="button border-0 btnDelete btnDeleteProduct">
                                        <i class="fas fa-minus-circle"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td style="vertical-align: middle"><a href="#">Trang phục thu đông năm 2020</a></td>
                                <td>Đang mở</td>
                                <!-- các btn thêm xóa sửa -->
                                <td style="vertical-align: middle">
                                    <button class="border-0 button btnEdit">
                                        <i class="fas fa-pencil-alt"></i>
                                    </button>
                                    <button class="button border-0 btnDelete btnDeleteProduct">
                                        <i class="fas fa-minus-circle"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td style="vertical-align: middle"><a href="#">Trang phục thu đông năm 2020</a></td>
                                <td>Đang mở</td>
                                <!-- các btn thêm xóa sửa -->
                                <td style="vertical-align: middle">
                                    <button class="border-0 button btnEdit">
                                        <i class="fas fa-pencil-alt"></i>
                                    </button>
                                    <button class="button border-0 btnDelete btnDeleteProduct">
                                        <i class="fas fa-minus-circle"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td style="vertical-align: middle"><a href="#">Trang phục thu đông năm 2020</a></td>
                                <td>Đang mở</td>
                                <!-- các btn thêm xóa sửa -->
                                <td style="vertical-align: middle">
                                    <button class="border-0 button btnEdit">
                                        <i class="fas fa-pencil-alt"></i>
                                    </button>
                                    <button class="button border-0 btnDelete btnDeleteProduct">
                                        <i class="fas fa-minus-circle"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td style="vertical-align: middle"><a href="#">Trang phục thu đông năm 2020</a></td>
                                <td>Đang mở</td>
                                <!-- các btn thêm xóa sửa -->
                                <td style="vertical-align: middle">
                                    <button class="border-0 button btnEdit">
                                        <i class="fas fa-pencil-alt"></i>
                                    </button>
                                    <button class="button border-0 btnDelete btnDeleteProduct">
                                        <i class="fas fa-minus-circle"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td style="vertical-align: middle"><a href="#">Trang phục thu đông năm 2020</a></td>
                                <td>Đang mở</td>
                                <!-- các btn thêm xóa sửa -->
                                <td style="vertical-align: middle">
                                    <button class="border-0 button btnEdit">
                                        <i class="fas fa-pencil-alt"></i>
                                    </button>
                                    <button class="button border-0 btnDelete btnDeleteProduct">
                                        <i class="fas fa-minus-circle"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td style="vertical-align: middle"><a href="#">Trang phục thu đông năm 2020</a></td>
                                <td>Đang mở</td>
                                <!-- các btn thêm xóa sửa -->
                                <td style="vertical-align: middle">
                                    <button class="border-0 button btnEdit">
                                        <i class="fas fa-pencil-alt"></i>
                                    </button>
                                    <button class="button border-0 btnDelete btnDeleteProduct">
                                        <i class="fas fa-minus-circle"></i>
                                    </button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>

            <!-- phân trang -->
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">
                    <ul class="pagination justify-content-end">
                        <li class="page-item"><a class="page-link" href="#">Trước</a></li>
                        <li class="page-item active"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item"><a class="page-link" href="#">4</a></li>
                        <li class="page-item"><a class="page-link" href="#">5</a></li>
                        <li class="page-item"><a class="page-link" href="#">Sau</a></li>
                    </ul>
                </h6>
            </div>
        </div>
    </body>
</html>