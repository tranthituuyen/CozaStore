<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Thống kê - Danh mục sản phẩm</title>
</head>

<body>
    <!-- list categories -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary d-flex justify-content-between align-items-center">
                <button type="button" class="btn btn-sm btn-ms-outline-primary"
                        onclick="window.location.href='<c:url value="/admin-quan-ly-danh-muc?type=edit"/>'">
                    <i class="fas fa-plus-circle"></i>
                    Thêm danh mục mới
                </button>
            </h6>
        </div>

        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th class="align-middle">Mã danh mục</th>
                            <th class="align-middle">Tên danh mục</th>
                            <th class="align-middle">SLSP</th>
                            <th class="align-middle">Tác vụ</th>
                        </tr>
                    </thead>

                    <tbody>
                        <c:forEach var="item" items="${model.listResult}">
                            <tr>
                                <td class="align-middle">${item.code}</td>
                                <td class="align-middle">
                                    <c:url var="editURL" value="/admin-quan-ly-danh-muc">
                                        <c:param name="type" value="edit"/>
                                        <c:param name="id" value="${item.id}"/>
                                    </c:url>
                                    <a href="${editURL}">${item.name}</a>
                                </td>
                                <td class="align-middle">${item.numberOfProduct}</td>
                                <!-- các btn thêm xóa sửa -->
                                <td class="align-middle">
                                    <c:url var="addURL" value="/admin-quan-ly-danh-muc">
                                        <c:param name="type" value="edit"/>
                                    </c:url>
                                    <button class="border-0 button btnAdd"
                                            onclick="window.location.href='${addURL}'">
                                        <i class="fas fa-plus"></i>
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

    <%-- script --%>
    <script type="text/javascript">
        window.onload = function () {
            document.getElementById('page-heading').innerText = "Quản lý danh mục"
        }
    </script>
</body>
</html>