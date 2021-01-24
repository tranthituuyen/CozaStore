<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>
<c:url var="APIurl" value="/api-admin-category"/>
<c:url var="CategoryURL" value="/admin-quan-ly-danh-muc"/>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Thông tin danh mục</title>
</head>
<body>
    <!-- main content -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary d-flex justify-content-between align-items-center">
                <button type="button" class="btn btn-sm btn-ms-outline-primary"
                        onclick="window.location.href='<c:url value="/admin-quan-ly-danh-muc"/>'">
                    <i class="fas fa-arrow-circle-left"></i>
                    Quay lại
                </button>
            </h6>
        </div>
        <div class="card-body">
            <c:if test="${not empty messageResponse}">
                <div class="alert alert-${alert} d-flex justify-content-between">
                        ${messageResponse}
                    <button class="btn btn-sm btn-success">Xem chi tiết</button>
                </div>
            </c:if>
            <form id="formSubmitCategory">
                <div class="row mt-3">
                    <div class="col flex-grow-1">
                        <div class="form-inline mb-2">
                            <label for="code" class="d-block edit-product-label">Mã danh mục:</label>
                            <input type="text" id="code" name="code" value="${category.code}"
                                   class="form-control flex-grow-1"/>
                        </div>
                        <div class="form-inline mb-2">
                            <label for="name" class="d-block edit-product-label">Tên danh mục:</label>
                            <input type="text" id="name" name="name" value="${category.name}"
                                   class="form-control flex-grow-1"/>
                        </div>
                    </div>
                </div>

                <div>
                    <c:if test="${not empty category.id}">
                        <button class="btn btn-ms-primary float-right" id="btnAddOrUpdateCategory">
                            Cập nhật danh mục
                        </button>
                    </c:if>
                    <c:if test="${empty category.id}">
                        <button class="btn btn-ms-primary float-right" id="btnAddOrUpdateCategory">
                            Thêm danh mục
                        </button>
                    </c:if>
                </div>
                <input type="hidden" value="${category.id}" id="id" name="id"/>
            </form>
        </div>
    </div>

    <%-- script --%>
    <script type="text/javascript">
        window.onload = function () {
            $('#page-heading').text('thông tin danh mục');
        }
    </script>

    <%-- using ajax add, edit category --%>
    <script type="text/javascript">
        $('#btnAddOrUpdateCategory').click(function (e) {
            e.preventDefault();
            // get all gias trij treen fields minfh nhajpa vao deer submit
            var data = {};
            var formData = $('#formSubmitCategory').serializeArray();
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
                    window.location.href = '${CategoryURL}?type=edit&id=' + result.id + '&message=insert_success';
                },
                error: function (error) {
                    window.location.href = '${CategoryURL}?message=error_system';
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
                    window.location.href = '${CategoryURL}?type=edit&id=' + result.id + '&message=update_success';
                },
                error: function (error) {
                    window.location.href = '${CategoryURL}?message=error_system';
                }
            });
        }
    </script>
</body>
</html>