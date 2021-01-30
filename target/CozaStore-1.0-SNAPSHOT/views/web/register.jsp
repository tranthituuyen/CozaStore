<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>
<c:url var="APIurl" value="/api-admin-ruser"/>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Đăng ký</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.3.1.min.js" type="text/javascript"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"
            type="text/javascript"></script>
</head>

<body class="bg-gradient-primary">
    <div class="container user-select-none">
        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">Tạo tài khoản!</h1>
                            </div>
                            <c:if test="${not empty message}">
                                <div class="alert alert-${alert}">
                                        ${message}
                                </div>
                            </c:if>
                            <form id="formRegister" class="user">
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-user" name="username"
                                           id="username" placeholder="Tên đăng nhập"
                                           value="<%= request.getParameter("username") == null ? "" : request.getParameter("username") %>"/>
                                </div>

                                <div class="form-group">
                                    <input type="text" class="form-control form-control-user" name="email" id="email"
                                           placeholder="Địa chỉ email"
                                           value="<%= request.getParameter("email") == null ? "" : request.getParameter("email") %>" />
                                </div>

                                <div class="form-group">
                                    <input type="text" class="form-control form-control-user" name="fullname"
                                           id="fullname" placeholder="Tên đầy đủ"
                                           value="<%= request.getParameter("fullname") == null ? "" : request.getParameter("fullname") %>" />
                                </div>

                                <div class="form-group">
                                    <input type="password" class="form-control form-control-user" name="password"
                                           id="password" placeholder="Mật khẩu">
                                </div>

                                <div class="form-group">
                                    <input type="hidden" class="form-control form-control-user" name="status"
                                           id="status" value="1">
                                </div>

                                <div class="form-group">
                                    <input type="hidden" class="form-control form-control-user" name="roleId"
                                           id="roleId" value="2">
                                </div>

                                <div class="form-group">
                                    <input type="password" class="form-control form-control-user" id="repeatPassword"
                                           placeholder="Nhập lại mật khẩu">
                                </div>

                                <button type="button" id="btnRegister" class="btn btn-primary btn-user btn-block">
                                    Đăng ký tài khoản
                                </button>
                                <hr>
                                <div class="d-flex justify-content-center">
                                    <a href="#" class="btn btn-google btn-user mr-2 flex-grow-1">
                                        <i class="fab fa-google fa-fw"></i> Đăng ký với Google
                                    </a>
                                    <a href="#" class="btn btn-facebook btn-user flex-grow-1">
                                        <i class="fab fa-facebook-f fa-fw"></i> Đăng ký với Facebook
                                    </a>
                                </div>
                                <input type="hidden" value="" id="id" name="id"/>
                            </form>
                            <hr>
                            <div class="text-center">
                                <span>Bạn đã có tài khoản?<a class="small" href="login.jsp">Đăng nhập ngay!</a></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- script -->
    <script src="<c:url value='/templates/common/jquery/jquery-3.5.1.min.js' />" type="text/javascript"></script>
    <script src="<c:url value='/templates/common/bootstrap/js/bootstrap.bundle.min.js' />"
            type="text/javascript"></script>
    <script src="<c:url value='/templates/web/animation/js/animsition.min.js' />" type="text/javascript"></script>
    <script src="<c:url value='/templates/web/popper.min.js' />" type="text/javascript"></script>
    <script src="<c:url value='/templates/common/bootstrap/js/bootstrap.min.js' />" type="text/javascript"></script>
    <script src="<c:url value='/templates/web/select2/select2.min.js' />" type="text/javascript"></script>
    <script src="<c:url value='/templates/web/slick/slick.min.js' />" type="text/javascript"></script>
    <script src="<c:url value='/templates/web/js/slick-custom.js' />" type="text/javascript"></script>
    <script src="<c:url value='/templates/web/parallax100/parallax100.js' />" type="text/javascript"></script>
    <script src="<c:url value='/templates/web/MagnificPopup/jquery.magnific-popup.min.js' />"
            type="text/javascript"></script>
    <script src="<c:url value='/templates/web/isotope/isotope.pkgd.min.js' />" type="text/javascript"></script>
    <script src="<c:url value='/templates/common/sweetalert/sweetalert.min.js' />" type="text/javascript"></script>
    <script src="<c:url value='/templates/web/perfect-scrollbar/perfect-scrollbar.min.js' />"
            type="text/javascript"></script>
    <script src="<c:url value='/templates/web/js/main.js' />" type="text/javascript"></script>


    <script src="<c:url value="/templates/web/js/validator.js" />"></script>

    <%-- using ajax add, edit product --%>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#username").blur(checkFullName);
            $("#email").blur(checkMail);
            $("#password").blur(checkPass);

            $('#btnRegister').click(function (e) {
                e.preventDefault();
                if (checkMail() && checkPass()) {
                    // get all gias trij treen fields minfh nhajpa vao deer submit
                    var data = {};
                    var formData = $('#formRegister').serializeArray();
                    console.log(1);

                    $.each(formData, function (i, v) {
                        data["" + v.name + ""] = v.value;
                    });
                    addUser(data);
                } else {
                    window.location.href = '<c:url value="/dang-nhap?action=register&message=error_system&alert=danger" />';
                }
            });
        });

        function addUser(data) {
            $.ajax({
                url: '${APIurl}',
                type: 'POST',
                contentType: 'application/json',
                data: JSON.stringify(data),
                dataType: 'json',
                success: function (result) {
                    window.location.href = '<c:url value="/dang-nhap?action=login&message=register_success&alert=success" />';
                },
                error: function (error) {
                    window.location.href = '<c:url value="/dang-nhap?action=register&message=error_system&alert=danger" />';
                }
            });
        }
    </script>

    <script>
        function checkFullName() {
            const check = true;
            const name = $("#name").val();

            if (name === "") {
                $("#name-error").text("* Please enter your name!")
                return (check && false);
            } else {
                $("#name-error").text("")
                $("#name").css("borderColor", "")
                return (check && true);
            }
        }

        function checkMail() {
            const check = true;
            const email = $("#email").val();
            const pattern = /^[a-zA-Z0-9_.]+@[a-zA-Z.]+?\.[a-zA-Z]{2,3}$/;
            if (email === "") {
                $("#email-error").text("* Please enter your email!")
                $("#email-div").css("borderColor", "red")
                return (check && false);
            } else if (email !== "" && !pattern.test(email)) {
                $("#email-error").text("* Invalid email! Please enter again.")
                $("#email-div").css("borderColor", "red")
                return (check && false);
            } else {
                $("#email-error").text("")
                $("#email-div").css("borderColor", "")
                return (check && true);
            }
        }

        function checkPass() {
            const check = true;
            const pass = $("#password").val();
            if (pass === "") {
                $("#pass-error").text("* Please enter your password!")
                $("#password").css("borderColor", "red")
                return (check && false);
            } else if (pass.length < 8) {
                $("#pass-error").text("* Password too short.")
                $("#password").css("borderColor", "red")
                return (check && false);
            } else {
                $("#pass-error").text("")
                $("#password").css("borderColor", "")
                return (check && true);
            }
        }

        function checkPhone() {
            const check = true;
            const vnf_regex = /((09|03|07|08|05)+([0-9]{8})\b)/g;
            const phone = $("#phone").val();
            if (phone === "") {
                $("#phone-msg").text("* Please enter your phone!")
                $("#phone").css("borderColor", "red")
                return (check && false);
            } else if (phone !== "" && !vnf_regex.test(phone)) {
                $("#phone-msg").text("* Invalid phone number!")
                $("#phone").css("borderColor", "red")
                return (check && false);
            } else {
                $("#phone-msg").text("")
                $("#phone").css("borderColor", "")
                return (check && true);
            }
        }
    </script>
</body>
</html>