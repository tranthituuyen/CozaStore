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
        <h1 class="h3 mb-2 text-gray-800">CZAK: Áo khoác COZA</h1>

        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary d-flex justify-content-between align-items-center">
                    <div class="col col-md-6 pl-0 text-decoration-none">
                        <a href="<c:url value="/views/admin/add-product.jsp" />" class="btn btn-sm btn-ms-outline-primary mr-2">
                            <i class="fas fa-plus-circle"></i>
                            Thêm sản phẩm mới
                        </a>
                    </div>

                    <div class="col col-md-6 pl-0 text-decoration-none d-flex justify-content-end align-items-center pr-0">
                        <input type="text" class="d-none form-control input-sm inputSearchHide"
                               placeholder="Tìm kiếm sản phẩm theo mã, tên hoặc phân loại.." />

                        <button class="d-none btn btn-sm btn-circle btn-ms-primary ml-2 btnSearchHide">
                            <i class="fas fa-search"></i>
                        </button>

                        <button class="btn btn-sm btn-circle btn-ms-outline-primary ml-2 btnSearchDisplay">
                            <i class="fas fa-search"></i>
                        </button>
                    </div>
                </h6>
            </div>

            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th class="align-middle">Mã sản phẩm</th>
                                <th class="align-middle">Mã SKU</th>
                                <th class="align-middle">Tên sản phẩm</th>
                                <th class="align-middle">Hình ảnh</th>
                                <th class="align-middle">Phân loại</th>
                                <th class="align-middle">Giá</th>
                                <th class="align-middle">Số lượng</th>
                                <th class="align-middle">Tác vụ</th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th class="align-middle">Mã sản phẩm</th>
                                <th class="align-middle">Mã SKU</th>
                                <th class="align-middle">Tên sản phẩm</th>
                                <th class="align-middle">Hình ảnh</th>
                                <th class="align-middle">Phân loại</th>
                                <th class="align-middle">Giá</th>
                                <th class="align-middle">Số lượng</th>
                                <th class="align-middle">Tác vụ</th>
                            </tr>
                        </tfoot>
                        <tbody>
                            <tr>
                                <td class="align-middle">AKJK-001</td>
                                <td class="align-middle">CZJK011020MMBE</td>
                                <td class="align-middle">
                                    <a href="<c:url value="/views/web/product-detail.jsp" />">Daily Pocket Jacket</a>
                                </td>
                                <td>
                                    <div class="bg-img"
                                         style="background-image: url('<c:url value="/images/products/dailypocketjacket-be.jpg" />');">
                                    </div>
                                </td>
                                <td class="align-middle">Jacket</td>
                                <td class="align-middle">849.000</td>
                                <td class="align-middle">7</td>

                                <!-- các btn thêm xóa sửa -->
                                <td class="align-middle">
                                    <button class="border-0 button btnEdit"
                                            onclick="window.location.href='<c:url value="/views/admin/edit-product.jsp" />'">
                                        <i class="fas fa-pencil-alt"></i>
                                    </button>
                                    <button class= "button border-0 btnDelete btnDeleteProduct">
                                        <i class="fas fa-minus-circle"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td class="align-middle">AKBZ-002</td>
                                <td class="align-middle">CZBZ011020MMXA</td>
                                <td class="align-middle">
                                    <a href="<c:url value="/views/web/product-detail.jsp" />">
                                        Fall Blazer
                                    </a>
                                </td>
                                <td>
                                    <div class="bg-img"
                                         style="background-image: url('<c:url value="/images/products/fallblazer-nau.jpg" />');">
                                    </div>
                                </td>
                                <td class="align-middle">Blazer</td>
                                <td class="align-middle">1.119.000</td>
                                <td class="align-middle">12</td>
                                <!-- các btn thêm xóa sửa -->
                                <td class="align-middle">
                                    <button class="border-0 button btnEdit"
                                            onclick="window.location.href='<c:url value="/views/admin/edit-product.jsp" />'">
                                        <i class="fas fa-pencil-alt"></i>
                                    </button>
                                    <button class= "button border-0 btnDelete btnDeleteProduct">
                                        <i class="fas fa-minus-circle"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td class="align-middle">AKDM-003</td>
                                <td class="align-middle">CZDN011020MMXD</td>
                                <td class="align-middle">
                                    <a href="<c:url value="/views/web/product-detail.jsp" />">
                                        Áo khoác denim
                                    </a>
                                </td>
                                <td>
                                    <div class="bg-img"
                                         style="background-image: url('<c:url value="/images/products/akymdemin.jpg" />');">
                                    </div>
                                </td>
                                <td class="align-middle">Denim</td>
                                <td class="align-middle">425.000</td>
                                <td class="align-middle">7</td>
                                <!-- các btn thêm xóa sửa -->
                                <td class="align-middle">
                                    <button class="border-0 button btnEdit"
                                            onclick="window.location.href='<c:url value="/views/admin/edit-product.jsp" />'">
                                        <i class="fas fa-pencil-alt"></i>
                                    </button>
                                    <button class= "button border-0 btnDelete btnDeleteProduct">
                                        <i class="fas fa-minus-circle"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td class="align-middle">AKDN-004</td>
                                <td class="align-middle">CZDN011020MMNA</td>
                                <td class="align-middle">
                                    <a href="<c:url value="/views/web/product-detail.jsp" />">
                                        Áo khoác denim
                                    </a>
                                </td>
                                <td>
                                    <div class="bg-img"
                                         style="background-image: url('<c:url value="/images/products/akymdenim-nau.jpg" />');">
                                    </div>
                                </td>
                                <td class="align-middle">Denim</td>
                                <td class="align-middle">425.000</td>
                                <td class="align-middle">7</td>
                                <!-- các btn thêm xóa sửa -->
                                <td class="align-middle">
                                    <button class="border-0 button btnEdit"
                                            onclick="window.location.href='<c:url value="/views/admin/edit-product.jsp" />'">
                                        <i class="fas fa-pencil-alt"></i>
                                    </button>
                                    <button class= "button border-0 btnDelete btnDeleteProduct">
                                        <i class="fas fa-minus-circle"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td class="align-middle">AKNI-005</td>
                                <td class="align-middle">CZNI011020MMDE</td>
                                <td class="align-middle">
                                    <a href="<c:url value="/views/web/product-detail.jsp" />">
                                        Áo khoác xỏ ngón
                                    </a>
                                </td>
                                <td>
                                    <div class="bg-img"
                                         style="background-image: url('<c:url value="/images/products/akktxongon.jpg" />');">
                                    </div>
                                </td>
                                <td class="align-middle">Nỉ</td>
                                <td class="align-middle">245.000</td>
                                <td class="align-middle">5</td>
                                <!-- các btn thêm xóa sửa -->
                                <td class="align-middle">
                                    <button class="border-0 button btnEdit"
                                            onclick="window.location.href='<c:url value="/views/admin/edit-product.jsp" />'">
                                        <i class="fas fa-pencil-alt"></i>
                                    </button>
                                    <button class= "button border-0 btnDelete btnDeleteProduct">
                                        <i class="fas fa-minus-circle"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td class="align-middle">AKTH-001</td>
                                <td class="align-middle">CZTH011020MMNA</td>
                                <td class="align-middle">
                                    <a href="<c:url value="/views/web/product-detail.jsp" />">
                                        Áo khoác thun đơn giản
                                    </a>
                                </td>
                                <td>
                                    <div class="bg-img"
                                         style="background-image: url('<c:url value="/images/products/akym-akthundongian.jpg" />');">
                                    </div>
                                </td>
                                <td class="align-middle">Nỉ</td>
                                <td class="align-middle">349.000</td>
                                <td class="align-middle">7</td>
                                <!-- các btn thêm xóa sửa -->
                                <td class="align-middle">
                                    <button class="border-0 button btnEdit"
                                            onclick="window.location.href='<c:url value="/views/admin/edit-product.jsp" />'">
                                        <i class="fas fa-pencil-alt"></i>
                                    </button>
                                    <button class= "button border-0 btnDelete btnDeleteProduct">
                                        <i class="fas fa-minus-circle"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td class="align-middle">AKTH-001</td>
                                <td class="align-middle">CZTH011020MMBE</td>
                                <td class="align-middle">
                                    <a href="<c:url value="/views/web/product-detail.jsp" />">
                                        Áo khoác vải thiết kế
                                    </a>
                                </td>
                                <td>
                                    <div class="bg-img"
                                         style="background-image: url('<c:url value="/images/products/akym-akvai.jpg" />');">
                                    </div>
                                </td>
                                <td class="align-middle">Nỉ</td>
                                <td class="align-middle">385.000</td>
                                <td class="align-middle">7</td>
                                <!-- các btn thêm xóa sửa -->
                                <td class="align-middle">
                                    <button class="border-0 button btnEdit"
                                            onclick="window.location.href='<c:url value="/views/admin/edit-product.jsp" />'">
                                        <i class="fas fa-pencil-alt"></i>
                                    </button>
                                    <button class= "button border-0 btnDelete btnDeleteProduct">
                                        <i class="fas fa-minus-circle"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td class="align-middle">AKNI-008</td>
                                <td class="align-middle">CZNI011020MMXA</td>
                                <td class="align-middle">
                                    <a href="<c:url value="/views/web/product-detail.jsp" />">
                                        Áo khoác sát tay
                                    </a>
                                </td>
                                <td>
                                    <div class="bg-img"
                                         style="background-image: url('<c:url value="/images/products/akkt-akst.jpg" />');">
                                    </div>
                                </td>
                                <td class="align-middle">NỈ</td>
                                <td class="align-middle">195.000</td>
                                <td class="align-middle">7</td>
                                <!-- các btn thêm xóa sửa -->
                                <td class="align-middle">
                                    <button class="border-0 button btnEdit"
                                            onclick="window.location.href='<c:url value="/views/admin/edit-product.jsp" />'">
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

            <!-- phân trang -->
            <div class="card-footer py-3">
                <h6 class="m-0 font-weight-bold text-primary">
                    <ul class="p-0 list-unstyled d-none d-flex justify-content-end mb-0">
                        <li class="pagination active">1</li>
                        <li class="pagination">2</li>
                        <li class="pagination">...</li>
                        <li class="pagination">6</li>
                        <li class="pagination">7</li>
                    </ul>
                </h6>
            </div>
        </div>
    </body>
</html>