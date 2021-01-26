<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>
<c:url var="APIurl" value="/api-admin-detail-product"/>
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
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary d-flex justify-content-between align-items-center">
                <button type="button" class="btn btn-sm btn-ms-outline-primary"
                        onclick="window.location.href='<c:url
                                value="/admin-quan-ly-san-pham?type=detail&productcode=${model.code}"/>'">
                    <i class="fas fa-plus-circle"></i>
                    Thêm mẫu mới
                </button>
            </h6>
        </div>
        <div class="card-body">
            <c:if test="${not empty messageResponse}">
                <div class="alert alert-${alert} d-flex justify-content-between">
                        ${messageResponse}
                    <button id="btnXemChiTiet" class="btn btn-sm btn-success">Xem chi tiết</button>
                </div>
            </c:if>
            <form id="formSubmitDetailProduct">
                <div class="row mt-3">
                    <div class="col flex-grow-1">
                        <%-- product code (chua viet) --%>
                        <div class="form-inline mb-2">
                            <label for="code" class="d-block edit-product-label">Mã sản phẩm:</label>
                            <input type="text" id="code" name="code" value="${model.code}"
                                   class="form-control flex-grow-1"/>
                        </div>

                        <%-- size --%>
                        <div class="form-inline mb-2">
                            <label for="size" class="d-block edit-product-label">Size:</label>
                            <input type="text" id="size" name="size" value="${detail.size}"
                                   class="form-control flex-grow-1"/>
                        </div>

                        <%-- mau --%>
                        <div class="form-inline mb-2">
                            <label for="mau" class="d-block edit-product-label">Màu:</label>
                            <input type="text" id="mau" name="mau" value="${detail.mau}"
                                   class="form-control flex-grow-1"/>
                        </div>

                        <%-- trang thai (chua sua) --%>
                        <div class="form-inline mb-2">
                            <label for="trangthai" class="d-block edit-product-label">Trạng thái:</label>
                            <select name="trangthai" id="trangthai" class="form-control flex-grow-1">
                                <c:if test="${empty detail.id}">
                                    <option value="true">Mở bán</option>
                                    <option value="false">Tạm hết hàng</option>
                                </c:if>
                                <c:if test="${not empty detail.id}">
                                    <c:choose>
                                        <c:when test="${detail.trangthai == false}">
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

                        <%-- thong tin chi tiet --%>
                        <div class="d-flex justify-content-start">
                            <label class="d-block edit-product-label">Chi tiết:</label>
                            <div class="flex-grow-1 mb-2">
                                <textarea class="form-control flex-grow-1" rows="7" id="thongtinchitiet"
                                          name="thongtinchitiet" type="text">${detail.thongtinchitiet}</textarea>
                            </div>
                        </div>
                    </div>
                </div>
                <div>
                    <c:if test="${not empty detail.id}">
                        <button class="btn btn-ms-primary float-right" id="btnAddOrUpdateProduct">
                            Cập nhật sản phẩm
                        </button>
                    </c:if>
                    <c:if test="${empty detail.id}">
                        <button class="btn btn-ms-primary float-right" id="btnAddOrUpdateProduct">
                            Thêm sản phẩm
                        </button>
                    </c:if>
                </div>
                <input type="hidden" value="${detail.id}" id="id" name="id"/>
            </form>
        </div>
    </div>

    <!-- script -->
    <script type="text/javascript">
        <%-- set page-heading --%>
        window.onload = function setPageHeading() {
            document.getElementById('page-heading').innerText = "Thông tin sản phẩm"
        }

        var editor = '';
        $(document).ready(function (e) {
            editor = CKEDITOR.replace('thongtinchitiet');
        });
    </script>

    <%-- using ajax add, edit product --%>
    <script type="text/javascript">
        $('#btnAddOrUpdateProduct').click(function (e) {
            e.preventDefault();

            // get all gias trij treen fields minfh nhajpa vao deer submit
            var data = {};
            var formData = $('#formSubmitDetailProduct').serializeArray();

            $.each(formData, function (i, v) {
                data["" + v.name + ""] = v.value;
            });
            data["thongtinchitiet"] = editor.getData();

            var id = $('#id').val();
            if (id === "") {
                console.log(`model.code = ${model.code}`)
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
                    window.location.href = '${ProductURL}?type=edit&id=${model.id}&message=insert_success';
                },
                error: function (error) {
                    window.location.href = '${ProductURL}?type=edit&id=${model.id}&message=error_system';
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
                    console.log(JSON.stringify(data))
                    window.location.href = '${ProductURL}?type=edit&id=' + ${model.id} + '&message=update_success';
                },
                error: function (error) {
                    window.location.href = '${ProductURL}?type=edit&${model.id}=10&message=error_system';
                }
            });
        }
    </script>
</body>
</html>
