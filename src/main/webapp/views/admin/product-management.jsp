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
                                <c:forEach var="item" items="${categories.listResult}">
                                    <option value="${item.code}">${item.name}</option>
                                </c:forEach>
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
                            <c:forEach var="item" items="${products.listResult}">
                                <tr>
                                    <td class="align-middle">${item.categoryCode}</td>
                                    <td class="align-middle">${item.code}</td>
                                    <td class="align-middle">
                                        <!-- suwra laji choox nafy daaxn nos twois trang chi tiest cuar nos-->
                                        <a href="<c:url value='/views/web/product-detail.jsp' />">${item.name}</a>
                                    </td>
                                    <td>
                                        <div class="bg-img"
                                             style="background-image: url('<c:url value="/images/products/${item.categoryCode}/${item.cover}" />');">
                                        </div>
                                    </td>

                                    <td class="align-middle">${item.price}</td>
                                    <!-- ddang gasn cunwg -->
                                    <td class="align-middle">12</td>
                                    <td class="align-middle">
                                        <input type="checkbox" checked>
                                    </td>

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
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>

            <div class="card-footer">
                <!-- phân trang -->
                <h6 class="m-0 flex-grow-1 font-weight-bold text-primary d-flex justify-content-between align-items-center">
                    <!-- phân trang -->
<%--                    <ul class="p-0 list-unstyled float-r mb-0">--%>
<%--                        <li class="pagination active">1</li>--%>
<%--                        <li class="pagination">2</li>--%>
<%--                        <li class="pagination">...</li>--%>
<%--                        <li class="pagination">6</li>--%>
<%--                        <li class="pagination">7</li>--%>
<%--                    </ul>--%>
                </h6>
            </div>
        </div>
    </body>
</html>