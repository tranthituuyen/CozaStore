<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Liên hệ</title>
</head>

<body class="animsition" onload='document.form1.email.focus()'>

    <!-- Header -->
    <header class="header-v4">
        <%@ include file="/common/web/header.jsp" %>
    </header>

    <!-- cart -->
    <%@ include file="/common/web/cart.jsp" %>

    <!-- Title page -->
    <section style="background-image: url('<c:url value="/images/background/bg-01.jpg"/>');"
             class="bg-img1 txt-center p-lr-15 p-tb-92">
        <h2 class="ltext-105 cl0 txt-center">Liên hệ</h2>
    </section>

    <!-- Content page -->
    <section class="bg0 p-t-104 p-b-116">
        <div class="container">
            <div class="flex-w flex-tr">
                <div class="size-210 bor10 p-lr-70 p-t-55 p-b-70 p-lr-15-lg w-full-md">
                    <form id="from-lienhe" action="./lien-he" name="form1" method="post">
                        <h4 class="mtext-105 cl2 txt-center p-b-30">Đóng góp ý kiến</h4>
                        <div class="bor8 m-b-20 how-pos4-parent">
                            <input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30" type="text"
                                   name="email" placeholder="Email..." onchange="ValidateEmail(document.form1.email)">
                            <img class="how-pos4 pointer-none"
                                 src="<c:url value='/templates/web/icons/icon-email.png' />" alt="ICON">
                        </div>

                        <div class="bor8 m-b-30">
                                <textarea class="stext-111 cl2 plh3 size-120 p-lr-28 p-tb-25"
                                          name="content" placeholder="Chúng tôi có thể giúp gì cho bạn?"></textarea>
                        </div>

                        <button type="submit" name="submit" onclick="return gui();"
                                class="flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer">Gửi
                        </button>
                    </form>
                </div>

                <div class="size-210 bor10 flex-w flex-col-m p-lr-93 p-tb-30 p-lr-15-lg w-full-md">
                    <div class="flex-w w-full p-b-42">
                        <span class="fs-18 cl5 txt-center size-211"><span class="lnr lnr-map-marker"></span></span>
                        <div class="size-212 p-t-2">
                            <span class="mtext-110 cl2">Địa chỉ</span>
                            <p class="stext-115 cl6 size-213 p-t-18">CozaStore, KP.6, P.Linh Trung, Q.Thủ Đức,
                                TP.HCM</p>
                        </div>
                    </div>

                    <div class="flex-w w-full p-b-42">
                        <span class="fs-18 cl5 txt-center size-211"><span class="lnr lnr-phone-handset"></span></span>
                        <div class="size-212 p-t-2">
                            <span class="mtext-110 cl2">Điện thoại</span>
                            <p class="stext-115 cl1 size-213 p-t-18">(+84) 34 374 xxxx</p>
                        </div>
                    </div>

                    <div class="flex-w w-full">
                        <span class="fs-18 cl5 txt-center size-211"><span class="lnr lnr-envelope"></span></span>
                        <div class="size-212 p-t-2">
                            <span class="mtext-110 cl2">Hỗ trợ bán hàng</span>
                            <p class="stext-115 cl1 size-213 p-t-18">st.giangiang2016@gmail.com</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Map -->
    <div class="map">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.2588533438725!2d106.78567241425704!3d10.867905960471578!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175276398969f7b%3A0x9672b7efd0893fc4!2zxJDhuqFpIEjhu41jIE7DtG5nIEzDom0!5e0!3m2!1svi!2s!4v1605351787934!5m2!1svi!2s"
                width="100%"
                height="450"
                frameborder="0"
                style="border:0;"
                allowfullscreen="false"
                aria-hidden="false"
                tabindex="0">
        </iframe>
    </div>
    <script type="text/javascript">
        function ValidateEmail(inputText) {
            var mailformat = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
            if (inputText.value.match(mailformat)) {
                document.form1.email.focus();
                return true;
            } else {
                alert("bạn nhập sai địa chỉ email, mời bạn nhập lại !");
                document.form1.email.focus();
                return false;
            }
        }

        function gui() {
            alert("Gửi thành công !");
            return true;
        }
    </script>

    <%-- script --%>
    <script type="text/javascript">
        window.onload = function () {
            $('ul.main-menu li').each((_, element) => {
                $(element).removeClass('active-menu')
            })
            $('li#contact').addClass('active-menu');
        }
    </script>
</body>
</html>