<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>
<c:url var="APIurl" value="/api-admin-product"/>
<c:url var="ProductURL" value="/admin-quan-ly-san-pham"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Thống kê - Quản lý sản phẩm</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.3.1.min.js" type="text/javascript"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"
            type="text/javascript"></script>
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
                <c:url var="listURL" value="/admin-quan-ly-san-pham">
                    <c:param name="type" value="list"/>
                    <c:param name="page" value="1"/>
                    <c:param name="maxPageItem" value="20"/>
                    <c:param name="sortName" value="id"/>
                    <c:param name="sortBy" value="asc"/>
                </c:url>
                <a id="listAllProductLink" class="mb-0 text-decoration-none" href="${listURL}">
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
                <a href="<c:url value='/admin-quan-ly-san-pham?type=edit' />" id="addNewProductLink"
                   class="mb-0 text-decoration-none">
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
            <h5 class="font-weight-bold text-gray-800 mb-0">Top 20 sản phẩm bán chạy nhất</h5>
            <br>
            <div class="table-responsive">
                <table class="table table-bordered" id="dataBestSelling" width="100%" cellspacing="0">
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
                                    <div class="bg-img" style="background-image: url('<c:url
                                            value="/images/products/${item.categoryCode}/${item.cover}"/>');">
                                    </div>
                                </td>
                                <td class="align-middle">${item.price}</td>
                                    <%-- tamj thoiwf gasn cuwnsg--%>
                                <td class="align-middle">12</td>
                                <td class="align-middle">
                                    <input type="checkbox" checked="checked">
                                </td>
                                <!-- các btn thêm xóa sửa -->
                                <td class="align-middle">
                                    <button class="border-0 button btnEdit" onclick="window.location.href=
                                            '<c:url value="/views/admin/edit-product.jsp"/>'">
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
    <form id="formSubmit" action="<c:url value='/admin-quan-ly-san-pham' />" method="get">
        <div id="listAllProductTab" class="d-none card shadow mb-4">
            <div class="card-header py-3">
                <div class="d-flex justify-content-between align-items-center">
                    <div>
                        <div class="form-inline mb-0">
                            <label for="select-category" class="mb-0">
                                <h6 class="m-0 font-weight-bold text-primary mr-3">Danh mục:</h6>
                            </label>

                            <form action="" style="width: 200px;">
                                <select name="" id="select-category" class="form-control mr-3">
                                    <c:forEach var="item" items="${categories.listResult}">
                                        <option value="${item.code}">${item.name}</option>
                                    </c:forEach>
                                </select>
                                <button type="button" class="btn btn-ms-primary">
                                    <h6 class="font-weight-bold mb-0">Lọc</h6>
                                </button>
                            </form>
                        </div>
                    </div>

                    <div>
                        <button id="btnDeleteMulti" class="btn btn-sm btn-outline-danger" type="button">
                            Xóa nhiều
                        </button>
                    </div>
                </div>
            </div>

            <div class="card-body">
                <c:if test="${not empty messageResponse}">
                    <div class="alert alert-${alert}">
                            ${messageResponse}
                    </div>
                </c:if>
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataListProduct" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th class="align-middle"><input type="checkbox" id="checkAll"></th>
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

                        <tbody>
                            <c:forEach var="item" items="${model.listResult}">
                                <tr>
                                    <td class="checkDeleteTd align-middle checkbox_del" id="checkbox_del">
                                        <input type="checkbox" id="checkbox_${item.id}" value="${item.id}">
                                    </td>
                                    <td class="align-middle">${item.id}</td>
                                    <td class="align-middle">${item.categoryCode}</td>
                                    <td class="align-middle">${item.code}</td>
                                    <td class="align-middle">
                                        <a href="<c:url value='/views/web/product-detail.jsp' />">${item.name}</a>
                                    </td>
                                    <td>
                                        <div class="bg-img" style="background-image: url('<c:url
                                                value="/images/products/${item.categoryCode}/${item.cover}"/>');">
                                        </div>
                                    </td>
                                    <td class="align-middle">${item.price}</td>
                                        <%-- hard coding--%>
                                    <td class="align-middle">12</td>
                                    <td class="align-middle">
                                        <input type="checkbox" checked="checked">
                                    </td>
                                    <!-- các btn thêm xóa sửa -->
                                    <td class="align-middle">
                                        <c:url var="editURL" value="/admin-quan-ly-san-pham">
                                            <c:param name="type" value="edit"/>
                                            <c:param name="id" value="${item.id}"/>
                                        </c:url>
                                        <a href="${editURL}" class="border-0 btn button btnEdit"
                                           data-toggle="tooltip" title="Chỉnh sửa sản phẩm">
                                            <i class="fas fa-pencil-alt"></i>
                                        </a>
                                        <a class="btn button border-0 btnDelete btnDel btn_${item.id}"
                                           data-toggle="tooltip" title="Xóa sản phẩm">
                                            <i class="fas fa-minus-circle"></i>
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>

                <!-- phân trang -->
                <div class="d-flex justify-content-center">
                    <ul class="pagination" id="pagination"></ul>
                    <input type="hidden" value="" id="page" name="page"/>
                    <input type="hidden" value="" id="maxPageItem" name="maxPageItem"/>
                    <input type="hidden" value="" id="sortName" name="sortName"/>
                    <input type="hidden" value="" id="sortBy" name="sortBy"/>
                    <input type="hidden" value="" id="type" name="type"/>
                </div>
            </div>
        </div>
    </form>

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

        bestSellingLink.onclick = function () {
            bestSellingTab.classList.remove('d-none');
            listAllProductTab.classList.add('d-none');
        }

        listAllProductLink.onclick = function (e) {
            e.preventDefault();
            listAllProductTab.classList.remove('d-none');
            bestSellingTab.classList.add('d-none');
        }
    </script>

    <script type="text/javascript">
        var totalPages = ${model.totalPage};
        var currentPage = ${model.page};
        var limit = 20;
        $(function () {
            window.pagObj = $('#pagination').twbsPagination({
                totalPages: totalPages,
                visiblePages: 7,
                startPage: currentPage,
                onPageClick: function (event, page) {
                    bestSellingTab.classList.add('d-none');
                    listAllProductTab.classList.remove('d-none');
                    if (currentPage !== page) {
                        $('#maxPageItem').val(limit);
                        $('#page').val(page);
                        $('#sortName').val("id");
                        $('#sortBy').val("asc");
                        $('#type').val("list")
                        $('#formSubmit').submit();
                    }
                }
            });
        });
    </script>

    <script type="text/javascript">
        $('#btnDeleteMulti').click(function () {
            var data = {};
            var ids = $('tbody tr td.checkDeleteTd input[type=checkbox]:checked').map(function () {
                return $(this).val();
            }).get();
            data['ids'] = ids;
            deleteProduct(data);
        });

        function deleteProduct(data) {
            $.ajax({
                url: '${APIurl}',
                type: 'DELETE',
                contentType: 'application/json',
                data: JSON.stringify(data),
                success: function (result) {
                    window.location.href = '${ProductURL}?type=list&maxPageItem=20&page=1&message=delete_success';
                },
                error: function (error) {
                    window.location.href = '${ProductURL}?type=list&maxPageItem=20&page=1&message=error_system';
                }
            });
        }
    </script>
</body>
</html>