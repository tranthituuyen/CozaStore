<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thống kê - Danh mục sản phẩm</title>
    </head>

    <body>
        <!-- Page Heading -->
        <h1 class="h3 mb-2 text-gray-800">Danh mục sản phẩm</h1>

        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary d-flex justify-content-between align-items-center">
                    <button type="button" class="btn btn-sm btn-ms-outline-primary" data-toggle="modal" data-target="#addCategoryModal">
                        <i class="fas fa-plus-circle"></i>
                        Thêm danh mục mới
                    </button>
                </h6>
            </div>

            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th class="align-middle">Mã danh mục</th>
                                <th class="align-middle">Tên danh mục</th>
                                <th class="align-middle">Hình ảnh</th>
                                <th class="align-middle">Tổng số SP</th>
                                <th class="align-middle">Tác vụ</th>
                            </tr>
                        </thead>

                        <tfoot>
                            <tr>
                                <th class="align-middle">Mã danh mục</th>
                                <th class="align-middle">Tên danh mục</th>
                                <th class="align-middle">Hình ảnh</th>
                                <th class="align-middle">Tổng số SP</th>
                                <th class="align-middle">Tác vụ</th>
                            </tr>
                        </tfoot>

                        <tbody>
                            <tr>
                                <td class="align-middle">AK</td>
                                <td class="align-middle">
                                    <a href="<c:url value='/views/admin/detail-category-management.jsp' />">Áo khoác</a>
                                </td>
                                <td>
                                    <div style="background-image: url('<c:url value="/images/banners/banner-04.jpg" />');"
                                         class="bg-img">
                                    </div>
                                </td>
                                <td class="align-middle">12</td>

                                <!-- các btn thêm xóa sửa -->
                                <td class="align-middle">
                                    <button class="border-0 button btnAdd"
                                            onclick="window.location.href='<c:url value="/views/admin/add-product.jsp" />'">
                                        <i class="fas fa-plus"></i>
                                    </button>

                                    <button type="button" class="border-0 button btnEdit"
                                            data-toggle="modal" data-target="#editCategoryModal">
                                        <i class="fas fa-pencil-alt"></i>
                                    </button>

                                    <button class= "button border-0 btnDelete btnDeleteProduct">
                                        <i class="fas fa-minus-circle"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td class="align-middle">AT</td>
                                <td class="align-middle">
                                    <a href="<c:url value="/views/admin/detail-category-management.jsp" />">Áo thun</a>
                                </td>
                                <td>
                                    <div class="bg-img"
                                         style="background-image: url('<c:url value="/images/background/about-02.jpg" />');">
                                    </div>
                                </td>
                                <td class="align-middle">12</td>
                                
                                <!-- các btn thêm xóa sửa -->
                                <td class="align-middle">
                                    <button class="border-0 button btnAdd"
                                            onclick="window.location.href='<c:url value="/views/admin/add-product.jsp" />'">
                                        <i class="fas fa-plus"></i>
                                    </button>
                                    <button type="button" class="border-0 button btnEdit"
                                            data-toggle="modal" data-target="#editCategoryModal">
                                        <i class="fas fa-pencil-alt"></i>
                                    </button>
                                    <button class= "button border-0 btnDelete btnDeleteProduct">
                                        <i class="fas fa-minus-circle"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td class="align-middle">SM</td>
                                <td class="align-middle">
                                    <a href="<c:url value="/views/admin/detail-category-management.jsp" />">
                                        Sơ mi
                                    </a>
                                </td>
                                <td>
                                    <div class="bg-img"
                                         style="background-image: url('<c:url value="/images/banners/banner-05.jpg" />');">
                                    </div>
                                </td>
                                <td class="align-middle">12</td>
                                <!-- các btn thêm xóa sửa -->
                                <td class="align-middle">
                                    <button class="border-0 button btnAdd"
                                            onclick="window.location.href='<c:url value="/views/admin/add-product.jsp" />'">
                                        <i class="fas fa-plus"></i>
                                    </button>
                                    <button type="button" class="border-0 button btnEdit"
                                            data-toggle="modal" data-target="#editCategoryModal">
                                        <i class="fas fa-pencil-alt"></i>
                                    </button>
                                    <button class= "button border-0 btnDelete btnDeleteProduct">
                                        <i class="fas fa-minus-circle"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td class="align-middle">QD</td>
                                <td class="align-middle">
                                    <a href="<c:url value="/views/admin/detail-category-management.jsp" />">Quần dài</a>
                                </td>
                                <td>
                                    <div class="bg-img" style="background-image: url('<c:url value="/images/products/CZ-QD.jpg" />');">
                                    </div>
                                </td>
                                <td class="align-middle">12</td>

                                <!-- các btn thêm xóa sửa -->
                                <td class="align-middle">
                                    <button class="border-0 button btnAdd"
                                            onclick="window.location.href='<c:url value="/views/admin/add-product.jsp" />'">
                                        <i class="fas fa-plus"></i>
                                    </button>
                                    <button type="button" class="border-0 button btnEdit"
                                            data-toggle="modal" data-target="#editCategoryModal">
                                        <i class="fas fa-pencil-alt"></i>
                                    </button>
                                    <button class= "button border-0 btnDelete btnDeleteProduct">
                                        <i class="fas fa-minus-circle"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td class="align-middle">QS</td>
                                <td class="align-middle">
                                    <a href="<c:url value="/views/admin/detail-category-management.jsp" />">
                                        Quần short
                                    </a>
                                </td>
                                <td>
                                    <div class="bg-img"
                                         style="background-image: url('<c:url value="/images/products/CZ-QS.jpg" />');">
                                    </div>
                                </td>
                                <td class="align-middle">12</td>
                                <!-- các btn thêm xóa sửa -->
                                <td class="align-middle">
                                    <button class="border-0 button btnAdd"
                                            onclick="window.location.href='<c:url value="/views/admin/add-product.jsp" />'">
                                        <i class="fas fa-plus"></i>
                                    </button>
                                    <button type="button" class="border-0 button btnEdit"
                                            data-toggle="modal" data-target="#editCategoryModal">
                                        <i class="fas fa-pencil-alt"></i>
                                    </button>
                                    <button class= "button border-0 btnDelete btnDeleteProduct">
                                        <i class="fas fa-minus-circle"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td class="align-middle">BL</td>
                                <td class="align-middle">
                                    <a href="<c:url value="/views/admin/detail-category-management.jsp" />">
                                        Balo
                                    </a>
                                </td>
                                <td>
                                    <div class="bg-img"
                                         style="background-image: url('<c:url value="/images/banners/banner-06.jpg" />');">
                                    </div>
                                </td>
                                <td class="align-middle">12</td>
                                <!-- các btn thêm xóa sửa -->
                                <td class="align-middle">
                                    <button class="border-0 button btnAdd"
                                            onclick="window.location.href='<c:url value="/views/admin/add-product.jsp" />'">
                                        <i class="fas fa-plus"></i>
                                    </button>
                                    <button type="button" class="border-0 button btnEdit"
                                            data-toggle="modal" data-target="#editCategoryModal">
                                        <i class="fas fa-pencil-alt"></i>
                                    </button>
                                    <button class= "button border-0 btnDelete btnDeleteProduct">
                                        <i class="fas fa-minus-circle"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td class="align-middle">DH</td>
                                <td class="align-middle">
                                    <a href="<c:url value="/views/admin/detail-category-management.jsp" />">
                                        Đồng hồ
                                    </a>
                                </td>
                                <td>
                                    <div class="bg-img"
                                         style="background-image: url('<c:url value="/images/banners/banner-07.jpg" />');">
                                    </div>
                                </td>
                                <td class="align-middle">12</td>
                                <!-- các btn thêm xóa sửa -->
                                <td class="align-middle">
                                    <button class="border-0 button btnAdd"
                                            onclick="window.location.href='<c:url value="/views/admin/add-product.jsp" />'">
                                        <i class="fas fa-plus"></i>
                                    </button>
                                    <button type="button" class="border-0 button btnEdit"
                                            data-toggle="modal" data-target="#editCategoryModal">
                                        <i class="fas fa-pencil-alt"></i>
                                    </button>
                                    <button class= "button border-0 btnDelete btnDeleteProduct">
                                        <i class="fas fa-minus-circle"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td class="align-middle">GD</td>
                                <td class="align-middle">
                                    <a href="<c:url value="/views/admin/detail-category-management.jsp" />">
                                        Giày
                                    </a>
                                </td>
                                <td>
                                    <div class="bg-img"
                                         style="background-image: url('<c:url value="/images/banners/banner-09.jpg" />');">
                                    </div>
                                </td>
                                <td class="align-middle">12</td>
                                <!-- các btn thêm xóa sửa -->
                                <td class="align-middle">
                                    <button class="border-0 button btnAdd"
                                            onclick="window.location.href='<c:url value="/views/admin/add-product.jsp" />'">
                                        <i class="fas fa-plus"></i>
                                    </button>
                                    <button type="button" class="border-0 button btnEdit"
                                            data-toggle="modal" data-target="#editCategoryModal">
                                        <i class="fas fa-pencil-alt"></i>
                                    </button>
                                    <button class= "button border-0 btnDelete btnDeleteProduct">
                                        <i class="fas fa-minus-circle"></i>
                                    </button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>