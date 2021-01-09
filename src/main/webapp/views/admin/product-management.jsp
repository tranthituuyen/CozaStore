<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thống kê - Quản lý sản phẩm</title>
    </head>

    <body>
        <!-- main tabs -->
        <div class="row">

            <!-- Best seller -->
            <div class="col-xl-4 col-md-6 mb-4 user-select-none">
                <div class="card shadow h-100">
                    <a href="#" id="bestSellingLink" class="mb-0 text-decoration-none">
                        <div class="card-body m-auto">
                            <h5 class="mb-0 text-center text-danger">
                                <i class="fab fa-hotjar mr-2"></i>
                                Sản phẩm bán chạy
                            </h5>
                        </div>
                    </a>
                </div>
            </div>

            <!-- List all product -->
            <div class="col-xl-4 col-md-6 mb-4 user-select-none">
                <div class="card shadow h-100">
                    <a href="#" id="listAllProductLink" class="mb-0 text-decoration-none">
                        <div class="card-body m-auto">
                            <h5 class="mb-0 text-center text-success">
                                <i class="fa fa-cube mr-2"></i>
                                Danh sách sản phẩm
                            </h5>
                        </div>
                    </a>
                </div>
            </div>

            <!-- add new product -->
            <div class="col-xl-4 col-md-6 mb-4 user-select-none">
                <div class="card shadow h-100">
                    <a href="#" id="addNewProductLink" class="mb-0 text-decoration-none">
                        <div class="card-body m-auto">
                            <h5 class="mb-0 text-center">
                                <i class="fas fa-plus-circle mr-2"></i>
                                Thêm sản phẩm mới
                            </h5>
                        </div>
                    </a>
                </div>
            </div>
        </div>

        <!-- best seller tab -->
        <div id="bestSellingTab" class="card shadow mb-4">
            <div class="card-body">
                <div class="d-flex justify-content-start">
                    <div class="form-group d-flex mb-0 mr-3">
                        <p>các sản phẩm bán chạy nhất của coza</p>
                        <form action="" style="width: 200px;">
                            <select name="" id="select-category" class="form-control">
                                <c:forEach var="c" items="${categories.listResult}">
                                    <option value="${c.id}">${c.name}</option>
                                </c:forEach>
                            </select>
                        </form>
                    </div>
                    <button class="btn btn-ms-primary">
                        <h6 class="font-weight-bold py-0">Lọc</h6>
                    </button>
                </div>
                <br>
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th class="align-middle">Id</th>
                                <th class="align-middle">Danh mục</th>
                                <th class="align-middle">Mã sản phẩm</th>
                                <th class="align-middle">Tên sản phẩm</th>
                                <th class="align-middle">Hình ảnh</th>
                                <th class="align-middle">Giá</th>
                                <th class="align-middle">Số lượng</th>
                                <th class="align-middle">Trạng thái</th>
                                <th class="align-middle">Tác vụ</th>
                            </tr>
                        </thead>

                        <tfoot>
                            <tr>
                                <th class="align-middle">Id</th>
                                <th class="align-middle">Danh mục</th>
                                <th class="align-middle">Mã sản phẩm</th>
                                <th class="align-middle">Tên sản phẩm</th>
                                <th class="align-middle">Hình ảnh</th>
                                <th class="align-middle">Giá</th>
                                <th class="align-middle">Số lượng</th>
                                <th class="align-middle">Trạng thái</th>
                                <th class="align-middle">Tác vụ</th>
                            </tr>
                        </tfoot>

                        <tbody>
                            <c:forEach var="item" items="${bestSelling}">
                                <tr>
                                    <td class="align-middle">${item.id}</td>
                                    <td class="align-middle">${item.categoryCode}</td>
                                    <td class="align-middle">${item.code}</td>
                                    <td class="align-middle">
                                        <a href="<c:url value='/views/web/product-detail.jsp' />">${item.name}</a>
                                    </td>
                                    <td>
                                        <div class="bg-img"
                                             style="background-image: url('<c:url
                                                     value="/images/products/${item.categoryCode}/${item.cover}"/>');">
                                        </div>
                                    </td>
                                    <td class="align-middle">${item.price}</td>
                                        <%-- tamj thoiwf gasn cuwnsg--%>
                                    <td class="align-middle">12</td>
                                    <td class="align-middle">
                                        <input type="checkbox" checked>
                                    </td>
                                    <!-- các btn thêm xóa sửa -->
                                    <td class="align-middle">
                                        <button class="border-0 button btnEdit"
                                                onclick="window.location.href='<c:url
                                                        value="/views/admin/edit-product.jsp"/>'">
                                            <i class="fas fa-pencil-alt"></i>
                                        </button>
                                        <button class="button border-0 btnDelete btnDeleteProduct">
                                            <i class="fas fa-minus-circle"></i>
                                        </button>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <!-- list all product -->
        <div id="listAllProductTab" class="d-none card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 flex-grow-1 font-weight-bold text-primary d-flex justify-content-between align-items-center">
                    <a href="<c:url value="/views/admin/add-product.jsp" />" type="button"
                       class="btn btn-sm btn-ms-outline-primary">
                        <i class="fas fa-plus-circle"></i>
                        Thêm sản phẩm mới
                    </a>
                    <!-- phân trang -->
                    <ul class="p-0 list-unstyled d-flex justify-content-end mb-0">
                        <li class="pagination active">1</li>
                        <li class="pagination">2</li>
                        <li class="pagination">...</li>
                        <li class="pagination">6</li>
                        <li class="pagination">7</li>
                    </ul>
                </h6>
            </div>

            <div class="card-body">
                <div class="d-flex justify-content-start">
                    <div class="form-group d-flex mb-0 mr-3">
                        <label for="select-category" class="mb-0 d-flex align-items-center">
                            <h6 class="m-0 font-weight-bold text-primary justify-content-start mr-3">Danh mục:</h6>
                        </label>

                        <form action="" style="width: 200px;">
                            <select name="" id="select-category" class="form-control">
                                <option value="Áo khoác">Sơ mi</option>
                                <option value="Áo khoác">Áo khoác</option>
                                <option value="Áo khoác">Áo thun</option>
                                <option value="Áo khoác">Quần dài</option>
                                <option value="Áo khoác">Quần short</option>
                                <option value="Áo khoác">Balo</option>
                                <option value="Áo khoác">Đồng hồ</option>
                            </select>
                        </form>
                    </div>

                    <div class="form-group d-flex mb-0 mr-3">
                        <label for="select-product-category" class="mb-0 d-flex align-items-center">
                            <h6 class="m-0 font-weight-bold text-primary justify-content-start mr-3">Phân loại:</h6>
                        </label>
                        <form action="" style="width: 200px;">
                            <select name="" id="select-product-category" class="form-control">
                                <option value="Áo khoác">Tất cả</option>
                                <option value="Áo khoác">Sơ mi tay ngắn</option>
                                <option value="Áo khoác">Sơ mi tay dài</option>
                            </select>
                        </form>
                    </div>

                    <button class="btn btn-ms-primary">
                        <h6 class="font-weight-bold mb-0">Lọc</h6>
                    </button>
                </div>
                <br>
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th class="align-middle">Mã sản phẩm</th>
                                <th class="align-middle">Mã SKU</th>
                                <th class="align-middle">Tên sản phẩm</th>
                                <th class="align-middle">Hình ảnh</th>
                                <th class="align-middle">Giá</th>
                                <th class="align-middle">Số lượng</th>
                                <th class="align-middle">#</th>
                            </tr>
                        </thead>

                        <tfoot>
                            <tr>
                                <th class="align-middle">Mã sản phẩm</th>
                                <th class="align-middle">Mã SKU</th>
                                <th class="align-middle">Tên sản phẩm</th>
                                <th class="align-middle">Hình ảnh</th>
                                <th class="align-middle">Giá</th>
                                <th class="align-middle">Số lượng</th>
                                <th class="align-middle">#</th>
                            </tr>
                        </tfoot>

                        <tbody>
                            <tr>
                                <td class="align-middle">SMN0047</td>
                                <td class="align-middle">SMN0047SSVA</td>
                                <td class="align-middle">
                                    <a href="<c:url value='/views/web/product-detail.jsp' />">Sơ mi tay ngắn vàng</a>
                                </td>
                                <td>
                                    <div class="bg-img"
                                         style="background-image: url('<c:url
                                                 value="/images/products/smkt-vang.jpg"/>');">
                                    </div>
                                </td>
                                <td class="align-middle">220.000</td>
                                <td class="align-middle">12</td>

                                <!-- các btn thêm xóa sửa -->
                                <td class="align-middle">
                                    <button class="border-0 button btnEdit"
                                            onclick="window.location.href='<c:url
                                                    value="/views/admin/edit-product.jsp"/>'">
                                        <i class="fas fa-pencil-alt"></i>
                                    </button>
                                    <button class="button border-0 btnDelete btnDeleteProduct">
                                        <i class="fas fa-minus-circle"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td class="align-middle">SMN0048</td>
                                <td class="align-middle">SMN0047XLVA</td>
                                <td class="align-middle">
                                    <a href="<c:url value='/views/web/product-detail.jsp' />">
                                        Sơ mi tay ngắn vàng
                                    </a>
                                </td>
                                <td>
                                    <div class="bg-img"
                                         style="background-image: url('<c:url
                                                 value="/images/products/smkt-vang.jpg"/>');">
                                    </div>
                                </td>
                                <td class="align-middle">220.000</td>
                                <td class="align-middle">17</td>

                                <!-- các btn thêm xóa sửa -->
                                <td class="align-middle">
                                    <button class="border-0 button btnEdit"
                                            onclick="window.location.href='<c:url
                                                    value="/views/admin/edit-product.jsp"/>'">
                                        <i class="fas fa-pencil-alt"></i>
                                    </button>
                                    <button class="button border-0 btnDelete btnDeleteProduct">
                                        <i class="fas fa-minus-circle"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td class="align-middle">AKJK-001</td>
                                <td class="align-middle">CZJK011020MMBE</td>
                                <td class="align-middle">
                                    <a href="<c:url value='/views/web/product-detail.jsp' />">
                                        Daily Pocket Jacket
                                    </a>
                                </td>
                                <td>
                                    <div class="bg-img"
                                         style="background-image: url('<c:url
                                                 value="/images/products/dailypocketjacket-be.jpg"/>');">
                                    </div>
                                </td>
                                <td class="align-middle">849.000</td>
                                <td class="align-middle">7</td>
                                <!-- các btn thêm xóa sửa -->
                                <td class="align-middle">
                                    <button class="border-0 button btnEdit"
                                            onclick="window.location.href='<c:url
                                                    value="/views/admin/edit-product.jsp"/>'">
                                        <i class="fas fa-pencil-alt"></i>
                                    </button>
                                    <button class="button border-0 btnDelete btnDeleteProduct">
                                        <i class="fas fa-minus-circle"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td class="align-middle">AKBZ-002</td>
                                <td class="align-middle">CZBZ011020MMXA</td>
                                <td class="align-middle">
                                    <a href="<c:url value='/views/web/product-detail.jsp' />">
                                        Fall Blazer
                                    </a>
                                </td>
                                <td>
                                    <div class="bg-img"
                                         style="background-image: url('<c:url
                                                 value="/images/products/fallblazer-nau.jpg"/>');">
                                    </div>
                                </td>
                                <td class="align-middle">1.119.000</td>
                                <td class="align-middle">12</td>
                                <!-- các btn thêm xóa sửa -->
                                <td class="align-middle">
                                    <button class="border-0 button btnEdit"
                                            onclick="window.location.href='<c:url
                                                    value="/views/admin/edit-product.jsp"/>'">
                                        <i class="fas fa-pencil-alt"></i>
                                    </button>
                                    <button class="button border-0 btnDelete btnDeleteProduct">
                                        <i class="fas fa-minus-circle"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td class="align-middle">AKNI-008</td>
                                <td class="align-middle">CZNI011020MMXA</td>
                                <td class="align-middle">
                                    <a href="<c:url value='/views/web/product-detail.jsp' />">
                                        Áo khoác sát tay
                                    </a>
                                </td>
                                <td>
                                    <div class="bg-img"
                                         style="background-image: url('<c:url
                                                 value="/images/products/akkt-akst.jpg"/>');">
                                    </div>
                                </td>
                                <td class="align-middle">195.000</td>
                                <td class="align-middle">7</td>
                                <!-- các btn thêm xóa sửa -->
                                <td class="align-middle">
                                    <button class="border-0 button btnEdit"
                                            onclick="window.location.href='<c:url
                                                    value="/views/admin/edit-product.jsp"/>'">
                                        <i class="fas fa-pencil-alt"></i>
                                    </button>
                                    <button class="button border-0 btnDelete btnDeleteProduct">
                                        <i class="fas fa-minus-circle"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td class="align-middle">AKDN-004</td>
                                <td class="align-middle">CZDN011020MMNA</td>
                                <td class="align-middle">
                                    <a href="<c:url value='/views/web/product-detail.jsp' />">
                                        Áo khoác denim
                                    </a>
                                </td>
                                <td>
                                    <div class="bg-img"
                                         style="background-image: url('<c:url
                                                 value="/images/products/akymdenim-nau.jpg"/>');">
                                    </div>
                                </td>
                                <td class="align-middle">425.000</td>
                                <td class="align-middle">7</td>
                                <!-- các btn thêm xóa sửa -->
                                <td class="align-middle">
                                    <button class="border-0 button btnEdit"
                                            onclick="window.location.href='<c:url
                                                    value="/views/admin/edit-product.jsp"/>'">
                                        <i class="fas fa-pencil-alt"></i>
                                    </button>
                                    <button class="button border-0 btnDelete btnDeleteProduct">
                                        <i class="fas fa-minus-circle"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td class="align-middle">SMD0057</td>
                                <td class="align-middle">SMD0057SSTI</td>
                                <td class="align-middle">
                                    <a href="<c:url value='/views/web/product-detail.jsp' />">
                                        Sơ mi tay dài tím
                                    </a>
                                </td>
                                <td>
                                    <div class="bg-img"
                                         style="background-image: url('<c:url
                                                 value="/images/products/smkt-tim.jpg"/>');">
                                    </div>
                                </td>
                                <td class="align-middle">280.000</td>
                                <td class="align-middle">17</td>
                                <!-- các btn thêm xóa sửa -->
                                <td class="align-middle">
                                    <button class="border-0 button btnEdit"
                                            onclick="window.location.href='<c:url
                                                    value="/views/admin/edit-product.jsp"/>'">
                                        <i class="fas fa-pencil-alt"></i>
                                    </button>
                                    <button class="button border-0 btnDelete btnDeleteProduct">
                                        <i class="fas fa-minus-circle"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td class="align-middle">SMN0044</td>
                                <td class="align-middle">SMN0044XLHT</td>
                                <td class="align-middle">
                                    <a href="<c:url value='/views/web/product-detail.jsp' />">
                                        Sơ mi họa tiết
                                    </a>
                                </td>
                                <td>
                                    <div class="bg-img"
                                         style="background-image: url('<c:url value="/images/products/smkt-ht.jpg"/>')">
                                    </div>
                                </td>
                                <td class="align-middle">245.000</td>
                                <td class="align-middle">0</td>
                                <!-- các btn thêm xóa sửa -->
                                <td class="align-middle">
                                    <button class="border-0 button btnEdit"
                                            onclick="window.location.href='<c:url
                                                    value="/views/admin/edit-product.jsp"/>'">
                                        <i class="fas fa-pencil-alt"></i>
                                    </button>
                                    <button class="button border-0 btnDelete btnDeleteProduct">
                                        <i class="fas fa-minus-circle"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td class="align-middle">SMN0001</td>
                                <td class="align-middle">SMN0047MLXD</td>
                                <td class="align-middle">
                                    <a href="<c:url value='/views/web/product-detail.jsp' />">
                                        Sơ mi đơn giản G01
                                    </a>
                                </td>
                                <td>
                                    <div class="bg-img"
                                         style="background-image: url('<c:url
                                                 value="/images/products/smym-xd.jpg"/>');">
                                    </div>
                                </td>
                                <td class="align-middle">285.000</td>
                                <td class="align-middle">12</td>
                                <!-- các btn thêm xóa sửa -->
                                <td class="align-middle">
                                    <button class="border-0 button btnEdit"
                                            onclick="window.location.href='<c:url
                                                    value="/views/admin/edit-product.jsp"/>'">
                                        <i class="fas fa-pencil-alt"></i>
                                    </button>
                                    <button class="button border-0 btnDelete btnDeleteProduct">
                                        <i class="fas fa-minus-circle"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td class="align-middle">SMN2006</td>
                                <td class="align-middle">SMN2006SSTR</td>
                                <td class="align-middle">
                                    <a href="<c:url value='/views/web/product-detail.jsp' />">
                                        Sơ mi đơn giản B2X06
                                    </a>
                                </td>
                                <td>
                                    <div class="bg-img"
                                         style="background-image: url('<c:url
                                                 value="/images/products/smym-trang.jpg"/>');">
                                    </div>
                                </td>
                                <td class="align-middle">285.000</td>
                                <td class="align-middle">6</td>
                                <!-- các btn thêm xóa sửa -->
                                <td class="align-middle">
                                    <button class="border-0 button btnEdit"
                                            onclick="window.location.href='<c:url
                                                    value="/views/admin/edit-product.jsp"/>'">
                                        <i class="fas fa-pencil-alt"></i>
                                    </button>
                                    <button class="button border-0 btnDelete btnDeleteProduct">
                                        <i class="fas fa-minus-circle"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td class="align-middle">AKNI-005</td>
                                <td class="align-middle">CZNI011020MMDE</td>
                                <td class="align-middle">
                                    <a href="<c:url value='/views/web/product-detail.jsp' />">
                                        Áo khoác xỏ ngón
                                    </a>
                                </td>
                                <td>
                                    <div class="bg-img"
                                         style="background-image: url('<c:url
                                                 value="/images/products/akktxongon.jpg"/>');">
                                    </div>
                                </td>
                                <td class="align-middle">245.000</td>
                                <td class="align-middle">5</td>
                                <!-- các btn thêm xóa sửa -->
                                <td class="align-middle">
                                    <button class="border-0 button btnEdit"
                                            onclick="window.location.href='<c:url
                                                    value="/views/admin/edit-product.jsp"/>'">
                                        <i class="fas fa-pencil-alt"></i>
                                    </button>
                                    <button class="button border-0 btnDelete btnDeleteProduct">
                                        <i class="fas fa-minus-circle"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td class="align-middle">AKTH-001</td>
                                <td class="align-middle">CZTH011020MMNA</td>
                                <td class="align-middle">
                                    <a href="<c:url value='/views/web/product-detail.jsp' />">
                                        Áo khoác thun đơn giản
                                    </a>
                                </td>
                                <td>
                                    <div class="bg-img"
                                         style="background-image: url('<c:url
                                                 value="/images/products/akym-akthundongian.jpg"/>');">
                                    </div>
                                </td>
                                <td class="align-middle">349.000</td>
                                <td class="align-middle">7</td>
                                <!-- các btn thêm xóa sửa -->
                                <td class="align-middle">
                                    <button class="border-0 button btnEdit"
                                            onclick="window.location.href='<c:url
                                                    value="/views/admin/edit-product.jsp"/>'">
                                        <i class="fas fa-pencil-alt"></i>
                                    </button>
                                    <button class="button border-0 btnDelete btnDeleteProduct">
                                        <i class="fas fa-minus-circle"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td class="align-middle">B1KM13</td>
                                <td class="align-middle">SMNB1KM13</td>
                                <td class="align-middle">
                                    <a href="<c:url value='/views/web/product-detail.jsp' />">
                                        Sơ mi thiết kế B1KM13
                                    </a>
                                </td>
                                <td>
                                    <div class="bg-img"
                                         style="background-image: url('<c:url
                                                 value="/images/products/smym-soc.jpg"/>');">
                                    </div>
                                </td>
                                <td class="align-middle">255.000</td>
                                <td class="align-middle">12</td>
                                <!-- các btn thêm xóa sửa -->
                                <td class="align-middle">
                                    <button class="border-0 button btnEdit"
                                            onclick="window.location.href='<c:url
                                                    value="/views/admin/edit-product.jsp"/>'">
                                        <i class="fas fa-pencil-alt"></i>
                                    </button>
                                    <button class="button border-0 btnDelete btnDeleteProduct">
                                        <i class="fas fa-minus-circle"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td class="align-middle">AKDM-003</td>
                                <td class="align-middle">CZDN011020MMXD</td>
                                <td class="align-middle">
                                    <a href="<c:url value='/views/web/product-detail.jsp' />">
                                        Áo khoác denim
                                    </a>
                                </td>
                                <td>
                                    <div class="bg-img"
                                         style="background-image: url('<c:url
                                                 value="/images/products/akymdemin.jpg"/>');">
                                    </div>
                                </td>
                                <td class="align-middle">425.000</td>
                                <td class="align-middle">7</td>
                                <!-- các btn thêm xóa sửa -->
                                <td class="align-middle">
                                    <button class="border-0 button btnEdit"
                                            onclick="window.location.href='<c:url
                                                    value="/views/admin/edit-product.jsp"/>'">
                                        <i class="fas fa-pencil-alt"></i>
                                    </button>
                                    <button class="button border-0 btnDelete btnDeleteProduct">
                                        <i class="fas fa-minus-circle"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td class="align-middle">AKTH-001</td>
                                <td class="align-middle">CZTH011020MMBE</td>
                                <td class="align-middle">
                                    <a href="<c:url value='/views/web/product-detail.jsp' />">
                                        Áo khoác vải thiết kế
                                    </a>
                                </td>
                                <td>
                                    <div class="bg-img"
                                         style="background-image: url('<c:url
                                                 value="/images/products/akym-akvai.jpg"/>');">
                                    </div>
                                </td>
                                <td class="align-middle">385.000</td>
                                <td class="align-middle">7</td>
                                <!-- các btn thêm xóa sửa -->
                                <td class="align-middle">
                                    <button class="border-0 button btnEdit"
                                            onclick="window.location.href='<c:url
                                                    value="/views/admin/edit-product.jsp"/>'">
                                        <i class="fas fa-pencil-alt"></i>
                                    </button>
                                    <button class="button border-0 btnDelete btnDeleteProduct">
                                        <i class="fas fa-minus-circle"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td class="align-middle">SMNN01</td>
                                <td class="align-middle">SMNN01SSDE</td>
                                <td class="align-middle">
                                    <a href="<c:url value='/views/web/product-detail.jsp' />">
                                        Sơ mi đơn giản N01
                                    </a>
                                </td>
                                <td>
                                    <div class="bg-img"
                                         style="background-image: url('<c:url
                                                 value="/images/products/smym-den.jpg"/>');">
                                    </div>
                                </td>
                                <td class="align-middle">285.000</td>
                                <td class="align-middle">12</td>
                                <!-- các btn thêm xóa sửa -->
                                <td class="align-middle">
                                    <button class="border-0 button btnEdit"
                                            onclick="window.location.href='<c:url
                                                    value="/views/admin/edit-product.jsp"/>'">
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
            <div class="card-footer py-3">
                <h6 class="m-0 font-weight-bold text-primary">
                    <ul class=" p-0 list-unstyled d-none justify-content-end mb-0">
                        <li class="pagination active">1</li>
                        <li class="pagination">2</li>
                        <li class="pagination">...</li>
                        <li class="pagination">6</li>
                        <li class="pagination">7</li>
                    </ul>
                </h6>
            </div>
        </div>

        <!-- add new product -->
        <div id="addNewProductTab" class="d-none">
            <div class="card shadow-sm px-0 mb-4">
                <div class="px-0 card-header d-flex justify-content-center">
                    <h5 class="text-primary font-weight-bold mb-0">Thông tin sản phẩm</h5>
                </div>

                <div class="card-body d-flex justify-content-around">
                    <div class="col-md-6 flex-grow-1">
                        <div class="form-inline mb-2">
                            <label for="maSanPham" class="justify-content-start add-product-label">Mã sản phẩm:</label>
                            <input class="form-control flex-grow-1" id="maSanPham" type="text"/>
                        </div>

                        <div class="form-inline mb-2">
                            <label for="maSKU" class="justify-content-start add-product-label">Mã SKU</label>
                            <input class="form-control flex-grow-1" id="maSKU" type="text"/>
                        </div>

                        <div class="form-inline mb-2">
                            <label for="tenSanPham" class="justify-content-start add-product-label">Tên sản
                                phẩm:</label>
                            <input class="form-control flex-grow-1" id="tenSanPham" type="text"/>
                        </div>

                        <div class="form-inline mb-2">
                            <label for="gia" class="justify-content-start add-product-label">Giá:</label>
                            <input class="form-control flex-grow-1" id="gia" type="text"/>
                        </div>
                    </div>

                    <div class="col-md-5 flex-grow-1">
                        <div class="form-inline mb-2">
                            <label for="danhMuc" class="justify-content-start add-product-label">Danh mục:</label>
                            <select class="form-control flex-grow-1" name="danhMuc" id="danhMuc">
                                <option value="Sơ mi">Sơ mi</option>
                                <option value="Áo khoác">Áo khoác</option>
                                <option value="Áo thun">Áo thun</option>
                            </select>
                        </div>

                        <div class="form-inline mb-2">
                            <label for="phanLoai" class="justify-content-start add-product-label">Phân loại:</label>
                            <select class="form-control flex-grow-1" name="danhMuc" id="phanLoai">
                                <option value="1">Sơ mi tay ngắn</option>
                                <option value="2">Sơ mi tay dài</option>
                                <option value="3">Sơ mi họa tiết</option>
                                <option value="4">Sơ mi kẻ sọc</option>
                            </select>
                        </div>

                        <div class="form-inline mb-3">
                            <label for="moTa" class="justify-content-start add-product-label">Mô tả:</label>
                            <textarea class="form-control flex-grow-1" rows="4" id="moTa" type="text"></textarea>
                        </div>

                        <button class="btn btn-ms-primary ml-auto btn-add-product float-right">Tạo</button>
                    </div>
                </div>
            </div>

            <div class="card shadow-sm px-0 mb-4">
                <div class="px-0 card-header d-flex justify-content-center">
                    <h5 class="text-primary font-weight-bold mb-0">Chi tiết sản phẩm</h5>
                </div>

                <div class="card-body d-flex justify-content-around">
                    <div class="col-md-6">
                        <div class="form-inline mb-2">
                            <label for="maSanPhamDetail" class="justify-content-start add-product-label">Mã sản
                                phẩm:</label>
                            <input class="form-control flex-grow-1" id="maSanPhamDetail" type="text"/>
                        </div>

                        <div class="form-inline mb-2">
                            <label for="size" class="justify-content-start add-product-label">Size:</label>
                            <select class="form-control flex-grow-1" name="size" id="size">
                                <option value="S">S</option>
                                <option value="M">M</option>
                                <option value="L">L</option>
                                <option value="XL">XL</option>
                            </select>
                        </div>

                        <div class="form-inline mb-2">
                            <label for="mau" class="justify-content-start add-product-label">Màu:</label>
                            <select class="form-control flex-grow-1" name="mau" id="mau">
                                <option value="Đen">Đen</option>
                                <option value="Trắng">Trắng</option>
                                <option value="Xanh dương">Xanh dương</option>
                                <option value="Xanh lá">Xanh lá</option>
                            </select>
                        </div>

                        <div class="form-inline mb-3">
                            <label for="product-imgs" class="justify-content-start add-product-label">Hình ảnh sản
                                phẩm:</label>
                            <div class="form-group mb-2 d-flex justify-content-between">
                                <input class="d-none" type="file" id="product-imgs">
                                <label for="product-imgs">
                                    <a class="btn btn-sm btn-outline-primary">
                                        <i class="fas fa-upload"></i>Tải ảnh lên
                                    </a>
                                </label>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-5">
                        <div class="form-inline mb-2">
                            <label for="soLuong" class="justify-content-start add-product-label">Số lượng:</label>
                            <input class="form-control flex-grow-1" id="soLuong" type="text"/>
                        </div>

                        <div class="form-inline mb-2">
                            <label for="danhcho" class="justify-content-start add-product-label">Dành cho:</label>
                            <select class="form-control flex-grow-1" name="danhcho" id="danhcho">
                                <option value="Nam">Nam</option>
                                <option value="Nữ">Nữ</option>
                                <option value="Unisex">Unisex</option>
                            </select>
                        </div>

                        <div class="form-inline mb-2">
                            <label for="ngayNhap" class="justify-content-start add-product-label">Ngày nhập:</label>
                            <input class="form-control flex-grow-1" id="ngayNhap" type="date"/>
                        </div>

                        <button class="btn btn-ms-primary ml-auto btn-add-product-detail float-right">Tạo</button>
                    </div>
                </div>
            </div>
        </div>


        <%-- ============================ SCRIPT ============================= --%>

        <script type="text/javascript">
            function setPageHeading() {
                document.getElementById('page-heading').innerText = "Quản lý sản phẩm"
            }
        </script>

        <script type="text/javascript">
            const bestSellingLink = document.getElementById('bestSellingLink'),
                bestSellingTab = document.getElementById('bestSellingTab');
            const listAllProductLink = document.getElementById('listAllProductLink'),
                listAllProductTab = document.getElementById('listAllProductTab');
            const addNewProductLink = document.getElementById('addNewProductLink'),
                addNewProductTab = document.getElementById('addNewProductTab');

            bestSellingLink.onclick = function () {
                bestSellingTab.classList.remove('d-none');
                listAllProductTab.classList.add('d-none');
                addNewProductTab.classList.add('d-none');
            }

            listAllProductLink.onclick = function () {
                listAllProductTab.classList.remove('d-none');
                bestSellingTab.classList.add('d-none');
                addNewProductTab.classList.add('d-none');
            }

            addNewProductLink.onclick = function () {
                addNewProductTab.classList.remove('d-none');
                bestSellingTab.classList.add('d-none');
                listAllProductTab.classList.add('d-none');
            }
        </script>
    </body>
</html>