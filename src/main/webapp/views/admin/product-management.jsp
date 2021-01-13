<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>

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
                    <a id="listAllProductLink" class="mb-0 text-decoration-none"
                       href="<c:url value='/admin-quan-ly-san-pham?page=1&maxPageItem=20&sortName=tensanpham&sortBy=desc' />">
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
                <h5 class="font-weight-bold text-gray-800 mb-0">Top 20 sản phẩm bán chạy nhất</h5>
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
                    <div class="d-flex justify-content-start align-items-center">
                        <div class="form-inline mb-0 mr-3">
                            <label for="select-category" class="mb-0">
                                <h6 class="m-0 font-weight-bold text-primary mr-3">Danh mục:</h6>
                            </label>

                            <form action="" style="width: 200px;">
                                <select name="" id="select-category" class="form-control">
                                    <c:forEach var="item" items="${categories.listResult}">
                                        <option value="${item.id}">${item.name}</option>
                                    </c:forEach>
                                </select>
                            </form>
                        </div>

                        <button type="button" class="btn btn-ms-primary">
                            <h6 class="font-weight-bold mb-0">Lọc</h6>
                        </button>
                    </div>
                </div>

                <div class="card-body">
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

                            <tbody>
                                <c:forEach var="item" items="${model.listResult}">
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

                    <!-- phân trang -->
                    <div class="d-flex justify-content-center">
                        <ul class="pagination" id="pagination"></ul>
                        <input type="hidden" value="" id="page" name="page"/>
                        <input type="hidden" value="" id="maxPageItem" name="maxPageItem"/>
                        <input type="hidden" value="" id="sortName" name="sortName" />
                        <input type="hidden" value="" id="sortBy" name="sortBy" />
                    </div>
                </div>
            </div>
        </form>

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
                            <label for="danhMuc" class="justify-content-start add-product-label">Mô tả:</label>
                            <select class="form-control flex-grow-1" name="danhMuc" id="danhMuc">
                                <c:forEach var="item" items="${categories.listResult}">
                                    <option value="${item.id}">Sơ mi</option>
                                </c:forEach>
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

            listAllProductLink.onclick = function (e) {
                e.preventDefault();
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
                            $('#sortName').val("tensanpham");
                            $('#sortBy').val("desc");
                            $('#formSubmit').submit();
                        }
                    }
                });
            });
        </script>
    </body>
</html>