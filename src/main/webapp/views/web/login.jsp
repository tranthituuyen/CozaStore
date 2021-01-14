<%@ page language="java" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng nhập</title>
    </head>

    <body class="bg-gradient-primary">
        <div class="container">
            <!-- Outer Row -->
            <div class="row justify-content-center user-select-none">
                <div class="col-xl-10 col-lg-12 col-md-9">
                    <div class="card o-hidden border-0 shadow-lg my-5">
                        <div class="card-body p-0">
                            <!-- Nested Row within Card Body -->
                            <div class="row">
                                <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
                                <div class="col-lg-6">
                                    <div class="p-5">
                                        <div class="text-center">
                                            <h1 class="h4 text-gray-900 mb-4">Đăng nhập</h1>
                                        </div>
                                        <div class="login-form">
                                            <div class="main-div">
<%--                                                <c:if test="${not empty message}">--%>
<%--                                                    <div class="alert alert-${alert}">--%>
<%--                                                            ${message}--%>
<%--                                                    </div>--%>
<%--                                                </c:if>--%>
                                                <form class="user" action="<c:url value="/trang-chu"/> " id="formlogin"
                                                      method="post">
                                                    <div class="form-group">
                                                        <input type="text" class="form-control form-control-user"
                                                               id="tenDangNhap" name="username"
                                                               aria-describedby="tenDangNhap"
                                                               placeholder="Tên đăng nhập..."/>
                                                    </div>
                                                    <div class="form-group">
                                                        <input type="password" name="password" id="matKhau"
                                                               placeholder="Mật khẩu"
                                                               class="form-control form-control-user"/>
                                                    </div>
                                                    <div class="form-group">
                                                        <div class="custom-control custom-checkbox small">
                                                            <input type="checkbox" class="custom-control-input"
                                                                   id="customCheck">
                                                            <label class="custom-control-label" for="customCheck">
                                                                Nhớ mật khẩu
                                                            </label>
                                                        </div>
                                                    </div>

                                                    <input type="hidden" value="login" name="action"/>

                                                    <button type="submit" class="btn btn-primary btn-user btn-block">
                                                        Đăng nhập
                                                    </button>

                                                    <!-- ====== -->
                                                    <hr>
                                                    <a href="<c:url value="/trang-chu" />"
                                                       class="btn btn-google btn-user btn-block">
                                                        <i class="fab fa-google fa-fw"></i> Đăng nhập với Google
                                                    </a>
                                                    <a href="<c:url value="/trang-chu" />"
                                                       class="btn btn-facebook btn-user btn-block">
                                                        <i class="fab fa-facebook-f fa-fw"></i> Đăng nhập với Facebook
                                                    </a>
                                                </form>
                                            </div>
                                        </div>
                                        <hr>
                                        <div class="text-center">
                                            <a class="small" href="forgot-password.jsp">Quên mật khẩu?</a>
                                        </div>
                                        <div class="text-center">
                                            <a class="small" href="register.jsp">Tạo tài khoản!</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>