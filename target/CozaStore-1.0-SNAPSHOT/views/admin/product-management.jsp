<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thống kê - Quản lý sản phẩm</title>
    </head>

    <body>
        <!-- Page Heading -->
        <h1 class="h3 mb-2 text-gray-800">Quản lý sản phẩm</h1>

        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 flex-grow-1 font-weight-bold text-primary d-flex justify-content-between align-items-center">
                    <a href="<c:url value="/views/admin/add-product.jsp" />" type="button" class="btn btn-sm btn-ms-outline-primary">
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
                                         style="background-image: url('<c:url value="/images/products/smkt-vang.jpg" />');">
                                    </div>
                                </td>
                                <td class="align-middle">220.000</td>
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
                                <td class="align-middle">SMN0048</td>
                                <td class="align-middle">SMN0047XLVA</td>
                                <td class="align-middle">
                                    <a href="<c:url value='/views/web/product-detail.jsp' />">
                                        Sơ mi tay ngắn vàng
                                    </a>
                                </td>
                                <td>
                                    <div class="bg-img"
                                         style="background-image: url('<c:url value="/images/products/smkt-vang.jpg" />');">
                                    </div>
                                </td>
                                <td class="align-middle">220.000</td>
                                <td class="align-middle">17</td>

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
                                <td class="align-middle">AKJK-001</td>
                                <td class="align-middle">CZJK011020MMBE</td>
                                <td class="align-middle">
                                    <a href="<c:url value='/views/web/product-detail.jsp' />">
                                        Daily Pocket Jacket
                                    </a>
                                </td>
                                <td>
                                    <div class="bg-img"
                                         style="background-image: url('<c:url value="/images/products/dailypocketjacket-be.jpg" />');">
                                    </div>
                                </td>
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
                                    <a href="<c:url value='/views/web/product-detail.jsp' />">
                                        Fall Blazer
                                    </a>
                                </td>
                                <td>
                                    <div class="bg-img"
                                         style="background-image: url('<c:url value="/images/products/fallblazer-nau.jpg" />');">
                                    </div>
                                </td>
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
                                <td class="align-middle">AKNI-008</td>
                                <td class="align-middle">CZNI011020MMXA</td>
                                <td class="align-middle">
                                    <a href="<c:url value='/views/web/product-detail.jsp' />">
                                        Áo khoác sát tay
                                    </a>
                                </td>
                                <td>
                                    <div class="bg-img"
                                         style="background-image: url('<c:url value="/images/products/akkt-akst.jpg" />');">
                                    </div>
                                </td>
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
                                         style="background-image: url('<c:url value="/images/products/akymdenim-nau.jpg" />');">
                                    </div>
                                </td>
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
                                <td class="align-middle">SMD0057</td>
                                <td class="align-middle">SMD0057SSTI</td>
                                <td class="align-middle">
                                    <a href="<c:url value='/views/web/product-detail.jsp' />">
                                        Sơ mi tay dài tím
                                    </a>
                                </td>
                                <td>
                                    <div class="bg-img"
                                         style="background-image: url('<c:url value="/images/products/smkt-tim.jpg" />');">
                                    </div>
                                </td>
                                <td class="align-middle">280.000</td>
                                <td class="align-middle">17</td>
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
                                <td class="align-middle">SMN0044</td>
                                <td class="align-middle">SMN0044XLHT </td>
                                <td class="align-middle">
                                    <a href="<c:url value='/views/web/product-detail.jsp' />">
                                        Sơ mi họa tiết
                                    </a>
                                </td>
                                <td>
                                    <div class="bg-img"
                                         style="background-image: url('<c:url value="/images/products/smkt-ht.jpg" />')">
                                    </div>
                                </td>
                                <td class="align-middle">245.000</td>
                                <td class="align-middle">0</td>
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
                                <td class="align-middle">SMN0001</td>
                                <td class="align-middle">SMN0047MLXD</td>
                                <td class="align-middle">
                                    <a href="<c:url value='/views/web/product-detail.jsp' />">
                                        Sơ mi đơn giản G01
                                    </a>
                                </td>
                                <td>
                                    <div class="bg-img"
                                         style="background-image: url('<c:url value="/images/products/smym-xd.jpg" />');">
                                    </div>
                                </td>
                                <td class="align-middle">285.000</td>
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
                                <td class="align-middle">SMN2006</td>
                                <td class="align-middle">SMN2006SSTR</td>
                                <td class="align-middle">
                                    <a href="<c:url value='/views/web/product-detail.jsp' />">
                                        Sơ mi đơn giản B2X06
                                    </a>
                                </td>
                                <td>
                                    <div class="bg-img"
                                         style="background-image: url('<c:url value="/images/products/smym-trang.jpg" />');">
                                    </div>
                                </td>
                                <td class="align-middle">285.000</td>
                                <td class="align-middle">6</td>
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
                                    <a href="<c:url value='/views/web/product-detail.jsp' />">
                                        Áo khoác xỏ ngón
                                    </a>
                                </td>
                                <td>
                                    <div class="bg-img"
                                         style="background-image: url('<c:url value="/images/products/akktxongon.jpg" />');">
                                    </div>
                                </td>
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
                                    <a href="<c:url value='/views/web/product-detail.jsp' />">
                                        Áo khoác thun đơn giản
                                    </a>
                                </td>
                                <td>
                                    <div class="bg-img"
                                         style="background-image: url('<c:url value="/images/products/akym-akthundongian.jpg" />');">
                                    </div>
                                </td>
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
                                <td class="align-middle">B1KM13</td>
                                <td class="align-middle">SMNB1KM13</td>
                                <td class="align-middle">
                                    <a href="<c:url value='/views/web/product-detail.jsp' />">
                                        Sơ mi thiết kế B1KM13
                                    </a>
                                </td>
                                <td>
                                    <div class="bg-img"
                                         style="background-image: url('<c:url value="/images/products/smym-soc.jpg" />');">
                                    </div>
                                </td>
                                <td class="align-middle">255.000</td>
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
                                    <a href="<c:url value='/views/web/product-detail.jsp' />">
                                        Áo khoác denim
                                    </a>
                                </td>
                                <td>
                                    <div class="bg-img"
                                         style="background-image: url('<c:url value="/images/products/akymdemin.jpg" />');">
                                    </div>
                                </td>
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
                                <td class="align-middle">AKTH-001</td>
                                <td class="align-middle">CZTH011020MMBE</td>
                                <td class="align-middle">
                                    <a href="<c:url value='/views/web/product-detail.jsp' />">
                                        Áo khoác vải thiết kế
                                    </a>
                                </td>
                                <td>
                                    <div class="bg-img"
                                         style="background-image: url('<c:url value="/images/products/akym-akvai.jpg" />');">
                                    </div>
                                </td>
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
                                <td class="align-middle">SMNN01</td>
                                <td class="align-middle">SMNN01SSDE</td>
                                <td class="align-middle">
                                    <a href="<c:url value='/views/web/product-detail.jsp' />">
                                        Sơ mi đơn giản N01
                                    </a>
                                </td>
                                <td>
                                    <div class="bg-img"
                                         style="background-image: url('<c:url value="/images/products/smym-den.jpg" />');">
                                    </div>
                                </td>
                                <td class="align-middle">285.000</td>
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
    </body>
</html>