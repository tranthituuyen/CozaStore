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
        <div class="col-xl-3 col-md-6 mb-4 user-select-none">
            <div class="card shadow h-100">
                <a href="<c:url value="/admin-quan-ly-san-pham?type=best"/>"
                   class="mb-0 text-decoration-none">
                    <div class="card-body m-auto">
                        <h6 class="mb-0 text-center text-danger">
                            <i class="fab fa-hotjar mr-2"></i>
                            Sản phẩm bán chạy
                        </h6>
                    </div>
                </a>
            </div>
        </div>

        <!-- List all product -->
        <div class="col-xl-3 col-md-6 mb-4 user-select-none">
            <div class="card shadow h-100">
                <c:url var="listURL" value="/admin-quan-ly-san-pham">
                    <c:param name="type" value="list"/>
                    <c:param name="page" value="1"/>
                    <c:param name="maxPageItem" value="10"/>
                    <c:param name="sortName" value="id"/>
                    <c:param name="sortBy" value="asc"/>
                </c:url>
                <a id="listAllProductLink" class="mb-0 text-decoration-none" href="${listURL}">
                    <div class="card-body m-auto">
                        <h6 class="mb-0 text-center text-success">
                            <i class="fa fa-cube mr-2"></i>
                            Danh sách sản phẩm
                        </h6>
                    </div>
                </a>
            </div>
        </div>

        <!-- add new product -->
        <div class="col-xl-3 col-md-6 mb-4 user-select-none">
            <div class="card shadow h-100">
                <a href="<c:url value='/admin-quan-ly-san-pham?type=edit' />" id="addNewProductLink"
                   class="mb-0 text-decoration-none">
                    <div class="card-body m-auto">
                        <h6 class="mb-0 text-center">
                            <i class="fas fa-plus-circle mr-2"></i>
                            Thêm sản phẩm mới
                        </h6>
                    </div>
                </a>
            </div>
        </div>
        <!-- delete multi product -->
        <div class="col-xl-3 col-md-6 mb-4 user-select-none" id="deleteMenu">
            <div class="card shadow h-100">
                <div class="card-body m-auto">
                    <h6 class="mb-0 text-center text-danger">
                        <i class="fas fa-minus-circle mr-2"></i>
                        Xóa nhiều
                    </h6>
                </div>
            </div>
        </div>
        <div class="d-none col-xl-3 col-md-6 mb-4 user-select-none" id="cancelMenu">
            <div class="card shadow h-100">
                <div class="card-body m-auto">
                    <h6 class="mb-0 text-center text-danger">
                        <i class="fas fa-times-circle mr-2"></i>
                        Hủy
                    </h6>
                </div>
            </div>
        </div>
    </div>

    <!-- list all product -->
    <form id="formSubmit" action="<c:url value='/admin-quan-ly-san-pham' />" method="get">
        <div class="card shadow mb-4">
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
                        <div class="mb-2">
                            <button id="btnDeleteMulti" class="d-none btn btn-sm btn-outline-danger"
                                    type="button">
                                Xóa
                            </button>
                        </div>
                        <thead>
                            <tr>
                                <th class="align-middle d-none"><input type="checkbox" id="checkAll"></th>
                                <th class="align-middle">STT</th>
                                <th class="align-middle">Danh mục</th>
                                <th class="align-middle">Mã sản phẩm</th>
                                <th class="align-middle">Tên sản phẩm</th>
                                <th class="align-middle">Hình ảnh</th>
                                <th class="align-middle">Dành cho</th>
                                <th class="align-middle">Giá</th>
                                <th class="align-middle">Số lượng</th>
                                <th class="align-middle">Trạng thái</th>
                                <th class="align-middle">Tác vụ</th>
                            </tr>
                        </thead>

                        <tbody>
                            <c:forEach var="item" items="${model.listResult}">
                                <tr>
                                    <td class="d-none checkDeleteTd align-middle">
                                        <input type="checkbox" id="checkbox_${item.id}" value="${item.id}">
                                    </td>
                                    <td class="align-middle product_id">${item.id}</td>
                                    <td class="align-middle">${item.categoryName}</td>
                                    <td class="align-middle">${item.code}</td>
                                    <td class="align-middle">
                                        <a href="<c:url value='/san-pham?type=detail&productcode=${item.code}' />"
                                           class="text-capitalize">
                                                ${item.name}
                                        </a>
                                    </td>
                                    <td>
                                        <div class="bg-img" style="background-image: url('<c:url
                                                value="/images/products/${item.categoryCode}/${item.cover}"/>');">
                                        </div>
                                    </td>
                                    <td class="align-middle text-capitalize">${item.sex}</td>
                                    <td class="align-middle">${item.price}</td>
                                        <%-- hard coding--%>
                                    <td class="align-middle">12</td>
                                    <td class="align-middle">
                                        <c:if test="${item.status == true}">
                                            <input type="checkbox" checked="checked" disabled="disabled"
                                                   class="text-primary">
                                        </c:if>
                                        <c:if test="${item.status == false}">
                                            <input type="checkbox" disabled="disabled" class="text-primary">
                                        </c:if>
                                    </td>
                                    <!-- các btn thêm xóa sửa -->
                                    <td class="align-middle">
                                        <c:url var="editURL" value="/admin-quan-ly-san-pham">
                                            <c:param name="type" value="edit"/>
                                            <c:param name="id" value="${item.id}"/>
                                        </c:url>
                                        <button type="button" onclick="window.location.href='${editURL}'"
                                                class="border-0 btn button btnEdit"
                                                data-toggle="tooltip" title="Chỉnh sửa sản phẩm">
                                            <i class="fas fa-pencil-alt text-white"></i>
                                        </button>
                                        <button type="button" class="btn button border-0 btnDelete"
                                                data-toggle="tooltip" title="Xóa sản phẩm" value="${item.id}"
                                                onclick="">
                                            <i class="fas fa-minus-circle text-white"></i>
                                        </button>
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
        window.onload = function () {
            document.getElementById('page-heading').innerText = "Quản lý sản phẩm"
        }
    </script>

    <script type="text/javascript">
        $('#deleteMenu').click(function () {
            $('#dataListProduct td:nth-child(1), #dataListProduct th:nth-child(1)').removeClass('d-none');
            $('#btnDeleteMulti, #cancelMenu').removeClass('d-none');
            $(this).addClass('d-none');
        });

        $('#cancelMenu').click(function () {
            $('#dataListProduct td:nth-child(1), #dataListProduct th:nth-child(1), #btnDeleteMulti').addClass('d-none');
            $('#deleteMenu').removeClass('d-none');
            $(this).addClass('d-none');
        });
    </script>

    <script type="text/javascript">
        var totalPages = ${model.totalPage};
        var currentPage = ${model.page};
        var limit = 10;
        $(function () {
            window.pagObj = $('#pagination').twbsPagination({
                totalPages: totalPages,
                visiblePages: 7,
                startPage: currentPage,
                onPageClick: function (event, page) {
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
            data['ids'] = $('tbody tr td.checkDeleteTd input[type=checkbox]:checked').map(function () {
                return $(this).val();
            }).get();
            deleteProduct(data);
        });

        function deleteProduct(data) {
            $.ajax({
                url: '${APIurl}',
                type: 'DELETE',
                contentType: 'application/json',
                data: JSON.stringify(data),
                success: function (result) {
                    window.location.href = '${ProductURL}?type=list&maxPageItem=10&page=1&message=delete_success';
                },
                error: function (error) {
                    window.location.href = '${ProductURL}?type=list&maxPageItem=10&page=1&message=error_system';
                }
            });
        }

        $('.btnDelete').click(function () {
            var data = {};
            data['ids'] = $(this).closest("tr").find(".product_id").map(function () {
                return parseInt($(this).text());
            }).get();
            deleteProduct(data);
        });
    </script>
</body>
</html>