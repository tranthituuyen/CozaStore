<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Đăng nhập</title>
        <link rel="icon" type="image/png" href="<c:url value='/templates/web/icons/favicon.png' />" media="all" />
        <link rel="stylesheet" href="<c:url value='/templates/admin/fontawesome-5.15.1/css/all.min.css' />" media="all" />

        <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
              rel="stylesheet">

        <link rel="stylesheet" href="<c:url value='/templates/admin/css/sb-admin-2.min.css' />" media="all" />
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
                                        <form class="user">
                                            <div class="form-group">
                                                <input type="email" class="form-control form-control-user"
                                                       id="tenDangNhap" aria-describedby="emailHelp"
                                                       placeholder="Tên đăng nhập...">
                                            </div>
                                            <div class="form-group">
                                                <input type="password" class="form-control form-control-user"
                                                       id="matKhau" placeholder="Mật khẩu" />
                                            </div>
                                            <div class="form-group">
                                                <div class="custom-control custom-checkbox small">
                                                    <input type="checkbox" class="custom-control-input" id="customCheck">
                                                    <label class="custom-control-label" for="customCheck">
                                                        Nhớ mật khẩu
                                                    </label>
                                                </div>
                                            </div>
                                            <a href="home.jsp" class="btn btn-primary btn-user btn-block">
                                                Đăng nhập
                                            </a>
                                            <hr>
                                            <a href="home.jsp" class="btn btn-google btn-user btn-block">
                                                <i class="fab fa-google fa-fw"></i> Đăng nhập với Google
                                            </a>
                                            <a href="home.jsp" class="btn btn-facebook btn-user btn-block">
                                                <i class="fab fa-facebook-f fa-fw"></i> Đăng nhập với Facebook
                                            </a>
                                        </form>
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

        <script src="<c:url value='/templates/admin/fontawesome-5.15.1/js/all.min.js' />" type="text/javascript"></script>
        <script src="<c:url value='/templates/common/jquery/jquery-3.2.1.min.js' />" type="text/javascript"></script>
        <script src="<c:url value='/templates/common/bootstrap/js/bootstrap.bundle.min.js' />" type="text/javascript"></script>
        <script src="<c:url value='/templates/admin/jquery/jquery.easing.min.js' />" type="text/javascript"></script>
        <script src="<c:url value='/templates/admin/jquery/sb-admin-2.min.js' />" type="text/javascript"></script>
    </body>

</html>