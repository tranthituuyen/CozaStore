<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>
<c:url var="APIurl" value="/api-admin-product"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Chỉnh sửa thông tin</title>
</head>

<body>
    <!-- main content -->
    <div class="card shadow mb-4">
        <div class="card-body">
            <form id="formSubmitProduct">
                <div class="row mt-3">
                    <div class="col col-md-6 flex-grow-1">
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
                            <label for="status" class="d-block edit-product-label">Trạng thái:</label>
                            <input type="text" id="status" name="status" value="${model.status}"
                                   class="form-control flex-grow-1"/>
                        </div>
                    </div>

                    <div class="col col-md-6 flex-grow-1">
                        <div class="form-group mb-2">
                            <label for="description" class="d-block edit-product-label">Mô tả:</label>
                            <textarea class="form-control flex-grow-1" rows="7" id="description" name="description"
                                      type="text">${model.description}</textarea>
                        </div>

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
                </div>
                <input type="hidden" value="${model.id}" id="id" name="id"/>
            </form>
        </div>
    </div>

    <script type="text/javascript">
        function setPageHeading() {
            document.getElementById('page-heading').innerText = "Thông tin sản phẩm"
        }
    </script>

    <script>
        $('#btnAddOrUpdateProduct').click(function (e) {
            console.log($('#btnAddOrUpdateProduct'))
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
                    console.log(result)
                },
                error: function (error) {
                    console.log(error)
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
                    console.log(result)
                },
                error: function (error) {
                    console.log(error)
                }
            });
        }
    </script>
</body>
</html>