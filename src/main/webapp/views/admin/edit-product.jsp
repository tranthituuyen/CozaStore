<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>
<c:url var="APIurl" value="/api-admin-product"/>
<c:url var="ProductURL" value="/admin-quan-ly-san-pham"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Thông tin sản phẩm</title>
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
                    <c:param name="maxPageItem" value="10"/>
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

    <!-- main content -->
    <div class="card shadow mb-4">
        <div class="card-body">
            <c:if test="${not empty messageResponse}">
                <div class="alert alert-${alert} d-flex justify-content-between">
                        ${messageResponse}
                    <button class="btn btn-sm btn-success">Xem chi tiết</button>
                </div>
            </c:if>
            <form id="formSubmitProduct">
                <div class="row mt-3">
                    <div class="col flex-grow-1">
                        <div class="form-inline mb-2">
                            <label for="categoryCode" class="d-block edit-product-label">Danh mục:</label>
                            <select class="form-control flex-grow-1" name="categoryCode" id="categoryCode">
                                <c:if test="${empty model.categoryCode}">
                                    <option value="">Chọn danh mục</option>
                                    <c:forEach var="item" items="${categories.listResult}">
                                        <option value="${item.code}">${item.name}</option>
                                    </c:forEach>
                                </c:if>
                                <c:if test="${not empty model.categoryCode}">
                                    <c:forEach var="item" items="${categories.listResult}">
                                        <c:if test="">

                                        </c:if>
                                        <option value="${item.code}"
                                                <c:if test="${item.code == model.categoryCode}">selected="selected"</c:if>>
                                                ${item.name}</option>
                                    </c:forEach>
                                </c:if>
                            </select>
                        </div>

                        <div class="form-inline mb-2">
                            <label for="code" class="d-block edit-product-label">Mã sản phẩm:</label>
                            <input type="text" id="code" name="code" value="${model.code}"
                                   class="form-control flex-grow-1"/>
                        </div>

                        <div class="form-inline mb-2">
                            <label for="name" class="d-block edit-product-label">Tên sản phẩm:</label>
                            <input type="text" id="name" name="name" value="${model.name}"
                                   class="form-control flex-grow-1"/>
                        </div>

                        <div class="form-inline mb-2">
                            <label for="price" class="d-block edit-product-label">Giá:</label>
                            <input type="text" id="price" name="price" value="${model.price}"
                                   class="form-control flex-grow-1"/>
                        </div>

                        <div class="form-inline mb-2">
                            <label for="cover" class="d-block edit-product-label">Ảnh bìa:</label>
                            <input type="text" id="cover" name="cover" value="${model.cover}"
                                   class="form-control flex-grow-1"/>
                        </div>

                        <div class="form-inline mb-2">
                            <label for="sex" class="d-block edit-product-label">Dành cho:</label>
                            <input type="text" id="sex" name="sex" value="${model.sex}"
                                   class="form-control flex-grow-1"/>
                        </div>

                        <div class="form-inline mb-2">
                            <label for="status" class="d-block edit-product-label">Trạng thái:</label>
                            <select name="status" id="status" class="form-control flex-grow-1">
                                <c:if test="${empty model.id}">
                                    <option value="true">Mở bán</option>
                                    <option value="false">Tạm hết hàng</option>
                                </c:if>
                                <c:if test="${not empty model.id}">
                                    <c:choose>
                                        <c:when test="${model.status == false}">
                                            <option value="false">Tạm hết hàng</option>
                                            <option value="true">Mở bán</option>
                                        </c:when>
                                        <c:otherwise>
                                            <option value="true">Mở bán</option>
                                            <option value="false">Tạm hết hàng</option>
                                        </c:otherwise>
                                    </c:choose>
                                </c:if>
                            </select>
                        </div>

                        <div class="d-flex justify-content-start">
                            <label class="d-block edit-product-label">Mô tả:</label>
                            <div class="flex-grow-1 mb-2">
                                <textarea class="form-control flex-grow-1" rows="7" id="description" name="description"
                                          type="text">${model.description}</textarea>
                            </div>
                        </div>
                    </div>
                </div>
                <div>
                    <c:if test="${not empty model.id}">
                        <button class="btn btn-ms-primary float-right" id="btnAddOrUpdateProduct">
                            Cập nhật sản phẩm
                        </button>
                    </c:if>
                    <c:if test="${empty model.id}">
                        <button class="btn btn-ms-primary float-right" id="btnAddOrUpdateProduct">
                            Thêm sản phẩm
                        </button>
                    </c:if>
                </div>
                <input type="hidden" value="${model.id}" id="id" name="id"/>
            </form>
        </div>
    </div>

    <script type="text/javascript">
        <%-- set page-heading --%>

        window.onload = function setPageHeading() {
            document.getElementById('page-heading').innerText = "Thông tin sản phẩm"
        }

        var editor = '';
        $(document).ready(function (e) {
            editor = CKEDITOR.replace('description');
        });

    </script>

    <%-- using ajax add, edit product --%>
    <script type="text/javascript">
        $('#btnAddOrUpdateProduct').click(function (e) {
            // console.log($('#btnAddOrUpdateProduct'))
            e.preventDefault();

            // get all gias trij treen fields minfh nhajpa vao deer submit
            var data = {};
            var formData = $('#formSubmitProduct').serializeArray();

            $.each(formData, function (i, v) {
                data["" + v.name + ""] = v.value;
            });

            var id = $('#id').val();
            if (id === "") {
                addProduct(data);
            } else {
                updateProduct(data);
            }
        });

        function addProduct(data) {
            $.ajax({
                url: '${APIurl}',
                type: 'POST',
                contentType: 'application/json',
                data: JSON.stringify(data),
                dataType: 'json',
                success: function (result) {
                    window.location.href = '${ProductURL}?type=edit&id=' + result.id + '&message=insert_success';
                },
                error: function (error) {
                    window.location.href = '${ProductURL}?type=list&maxPageItem=10&page=1&message=error_system';
                }
            });
        }

        function updateProduct(data) {
            $.ajax({
                url: '${APIurl}',
                type: 'PUT',
                contentType: 'application/json',
                data: JSON.stringify(data),
                dataType: 'json',
                success: function (result) {
                    window.location.href = '${ProductURL}?type=edit&id=' + result.id + '&message=update_success';
                },
                error: function (error) {
                    window.location.href = '${ProductURL}?type=list&maxPageItem=10&page=1&message=error_system';
                }
            });
        }
    </script>
</body>
</html>