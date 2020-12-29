<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Lấy lại mật khẩu</title>

        <link rel="icon" type="image/png" href="<c:url value='/templates/web/icons/favicon.png' />" media="all" />
        <link rel="stylesheet" href="<c:url value='/templates/admin/fontawesome-5.15.1/css/all.min.css' />" media="all" />

        <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
              rel="stylesheet">

        <link rel="stylesheet" href="<c:url value='/templates/admin/css/sb-admin-2.min.css' />" media="all" />
    </head>

    <body class="bg-gradient-primary">
        <div class="container">
            <!-- Outer Row -->
            <div class="row justify-content-center">
                <div class="col-xl-10 col-lg-12 col-md-9">
                    <div class="card o-hidden border-0 shadow-lg my-5">
                        <div class="card-body p-0">

                            <!-- Nested Row within Card Body -->
                            <div class="row">
                                <div class="col-lg-6 d-none d-lg-block bg-password-image"></div>
                                <div class="col-lg-6">
                                    <div class="p-5">
                                        <div class="text-center">
                                            <h1 class="h4 text-gray-900 mb-2">Bạn quên mật khẩu rồi?</h1>
                                            <p class="mb-4">
                                                Chỉ cần nhập địa chỉ email của bạn vào ô dưới đây,
                                                chúng tôi sẽ gửi cho bạn liên kết để bạn đặt lại mật khẩu!
                                            </p>
                                        </div>
                                        <form class="user">
                                            <div class="form-group">
                                                <input type="email" class="form-control form-control-user"
                                                       id="exampleInputEmail" aria-describedby="emailHelp"
                                                       placeholder="Nhập địa chỉ email...">
                                            </div>
                                            <a href="<c:url value='/trang-chu' />" class="btn btn-primary btn-user btn-block">
                                                Đặt lại mật khẩu
                                            </a>
                                        </form>
                                        <hr>
                                        <div class="text-center">
                                            <a class="small" href="<c:url value='/dang-nhap' />">Quay lại trang đăng nhập</a>
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