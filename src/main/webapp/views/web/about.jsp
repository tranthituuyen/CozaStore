<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Về chúng tôi</title>
</head>

<body class="animsition">
    <!-- Header -->
    <header class="header-v4">
        <%@ include file="/common/web/header.jsp"%>
    </header>

    <!-- cart -->
    <%@ include file="/common/web/cart.jsp" %>

    <!-- Title page -->
    <section style="background-image: url('<c:url value="/images/background/bg-01.jpg" />');"
             class="bg-img1 txt-center p-lr-15 p-tb-92" >
        <h2 class="ltext-105 cl0 txt-center">CozaStore</h2>
    </section>

    <!-- Content page -->
    <section class="bg0 p-t-75 p-b-120">
        <div class="container">
            <div class="row p-b-148">
                <div class="col-md-7 col-lg-8">
                    <div class="p-t-7 p-r-85 p-r-15-lg p-r-0-md">
                        <h3 class="mtext-111 cl2 p-b-16">
                            Câu chuyện về Coza
                        </h3>

                        <p class="stext-113 cl6 p-b-26">
                            Coza với thông điệp “Refined from Inside - Bảnh bao từ bên trong” - đó là khi bạn không chỉ
                            ăn mặc đẹp, mà còn có một lối sống “Tinh gọn” - Tinh tế và Gọn gàng hơn bất cứ ai khác.
                        </p>
                        <p class="stext-113 cl6 p-b-26">
                            Coza luôn tin rằng: Mặc đẹp là chuyện ai cũng có thể làm, nhưng chưa chắc đã được người
                            đối diện tôn trọng. Muốn được tôn trọng, bạn phải kết hợp được 2 tiêu chí:
                            “Ăn Mặc Bảnh Bao - là khi bạn mặc những gì phù hợp với bản thân,
                            và phải Thay đổi bản thân từ bên trong - từ Thói Quen Sống Tinh Tế cho đến cách Cư Xử Chuẩn Mực.
                        </p>
                        <p class="stext-113 cl6 p-b-26">
                            Với niềm tin đó, Coza gửi gắm vào từng sản phẩm của chúng tôi một phong cách,
                            một lối sống “Tinh gọn” của riêng mình. Để bạn khi khoác lên mình một bộ đồ sẽ là
                            một lời nhắc nhở, một niềm tự hào về chính bản thân bạn, không chỉ vì ăn mặc đẹp,
                            mà còn vì lối sống luôn hoàn thiện bản thân mình mỗi ngày.
                        </p>
                        <p class="stext-113 cl6 p-b-26">
                            Và mong rằng, bạn sẽ đồng hành cùng chúng tôi, để Coza phát triển ngày một lớn mạnh và
                            hoàn thành sứ mệnh cao cả của mình.
                        </p>
                        <p>
                            Coza - Refined from Inside
                        </p>
                    </div>
                </div>

                <div class="col-11 col-md-5 col-lg-4 m-lr-auto">
                    <div class="how-bor1 ">
                        <div class="hov-img0">
                            <img src="<c:url value='/images/background/about-01.jpg' />" alt="IMG">
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="order-md-2 col-md-7 col-lg-8 p-b-30">
                    <div class="p-t-7 p-l-85 p-l-15-lg p-l-0-md">
                        <h3 class="mtext-111 cl2 p-b-16">
                            Sứ mệnh của Coza
                        </h3>

                        <p class="stext-113 cl6 p-b-26">
                            Sáng tạo và trẻ trung là yếu tố tiên phong khiến cho các thiết kế của Coza luôn tạo sự thu hút
                            và đón nhận nhiệt tình từ giới trẻ. Không chỉ thể hiện tinh tế và sang trọng đối với
                            dòng sản phẩm Vestton, guu thời trang Coza còn khơi dậy chất trẻ trung, năng động và đa dạng
                            trên các dòng sản phẩm hằng ngày từ Áo sơ mi, áo thun, áo khoác, jeans, kaki, quần tây, short,...
                            Cho đến vô số các phụ kiện đi kèm, giúp phái mạnh có thêm nhiều lựa chọn và kết hợp phong phú
                            trong phong cách thời trang của chính mình.
                        </p>

                        <div class="bor16 p-l-29 p-b-9 m-t-22">
                            <p class="stext-114 cl6 p-r-40 p-b-11">
                                Creativity is just connecting things. When you ask creative people how they did something,
                                they feel a little guilty because they didn't really do it, they just saw something.
                                It seemed obvious to them after a while.
                            </p>

                            <span class="stext-111 cl8">
                                - Steve Job’s
                            </span>
                        </div>
                    </div>
                </div>

                <div class="order-md-1 col-11 col-md-5 col-lg-4 m-lr-auto p-b-30">
                    <div class="how-bor2">
                        <div class="hov-img0">
                            <img src="<c:url value='/images/background/about-01.jpg' />" alt="IMG">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>
</html>