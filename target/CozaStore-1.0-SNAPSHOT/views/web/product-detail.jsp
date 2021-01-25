<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Sản phẩm</title>

    <style>
        #mystyle {
            max-height: 600px;
            overflow: auto;
            overflow-y: scroll;
        }

        ::-webkit-scrollbar {
            display: none;
        }
    </style>
</head>

<body class="animsition">

    <!-- Header -->
    <header class="header-v4">
        <%@ include file="/common/web/header.jsp" %>
    </header>

    <!-- cart -->
    <%@ include file="/common/web/cart.jsp" %>

    <!-- breadcrumb -->
    <div class="container">
        <div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
            <a href="<c:url value='/views/web/home.jsp' />" class="stext-109 cl8 hov-cl1 trans-04">Trang chủ
                <i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
            </a>
            <a href="<c:url value='/views/web/product.jsp' />"
               class="stext-109 cl8 hov-cl1 trans-04 text-capitalize">${model.categoryName}
                <i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
            </a>
            <span class="stext-109 cl4 text-capitalize">${model.name}</span>
        </div>
    </div>

    <!-- Product Detail -->
    <section class="sec-product-detail bg0 p-t-65 p-b-60">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-lg-7 p-b-30">
                    <div class="p-l-25 p-r-30 p-lr-0-lg">
                        <div class="wrap-slick3 flex-sb flex-w">
                            <div class="wrap-slick3-dots" id="mystyle"></div>
                            <div class="wrap-slick3-arrows flex-sb-m flex-w"></div>
                            <div class="slick3 gallery-lb">
                                <%-- insert img of product --%>
                                <c:forEach var="item" items="${model.images}">
                                    <div class="item-slick3" data-thumb="<c:url value="/images/products/${model.categoryCode}/${item.img}" />">
                                        <div class="wrap-pic-w pos-relative">
                                            <img src="<c:url value="/images/products/${model.categoryCode}/${item.img}" />"
                                                 alt="IMG-PRODUCT">
                                            <a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
                                               href="<c:url value="/images/products/${model.categoryCode}/${item.img}" />">
                                                <i class="fa fa-expand"></i>
                                            </a>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-5 p-b-30">
                    <div class="p-r-50 p-t-5 p-lr-0-lg">
                        <h4 class="mtext-105 cl2 js-name-detail p-b-14 text-capitalize">${model.name}</h4>
                        <span class="mtext-106 cl2">${model.price}</span>
                        <div class="stext-102 cl3 p-t-23">${model.description}</div>
<%--                        <p class="stext-102 cl3 p-t-23">Chất vải thoáng mát và ít nhăn, thấm hút cực tốt.</p>--%>
                        <!--  -->
                        <div class="p-t-33">
                            <!-- bảng size -->
                            <div class="flex-w flex-r-m p-b-10">
                                <div class="size-203 flex-c-m respon6">Size</div>
                                <div class="size-204 respon6-next">
                                    <div class="rs1-select2 bor8 bg0">
                                        <select class="js-select2" name="time">
                                            <option>Bảng size</option>
                                            <option>Size S</option>
                                            <option>Size M</option>
                                            <option>Size L</option>
                                            <option>Size XL</option>
                                            <option>Freesize</option>
                                        </select>
                                        <div class="dropDownSelect2"></div>
                                    </div>
                                </div>
                            </div>

                            <!-- bảng màu -->
                            <div class="flex-w flex-r-m p-b-10">
                                <div class="size-203 flex-c-m respon6">Màu</div>
                                <div class="size-204 respon6-next">
                                    <div class="rs1-select2 bor8 bg0">
                                        <select class="js-select2" name="time">
                                            <option>Bảng màu</option>
                                            <option>Đỏ</option>
                                            <option>Xanh</option>
                                            <option>Trắng</option>
                                            <option>Xám</option>
                                        </select>
                                        <div class="dropDownSelect2"></div>
                                    </div>
                                </div>
                            </div>

                            <div class="flex-w flex-r-m p-b-10">
                                <div class="size-204 flex-w flex-m respon6-next">
                                    <div class="wrap-num-product flex-w m-r-20 m-tb-10">
                                        <div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
                                            <i class="fs-16 zmdi zmdi-minus"></i>
                                        </div>

                                        <input class="mtext-104 cl3 txt-center num-product" type="number"
                                               name="num-product" value="1">

                                        <div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
                                            <i class="fs-16 zmdi zmdi-plus"></i>
                                        </div>
                                    </div>

                                    <button class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail">
                                        Thêm vào giỏ
                                    </button>
                                </div>
                            </div>
                        </div>

                        <!--  -->
                        <div class="flex-w flex-m p-l-100 p-t-40 respon7">
                            <div class="flex-m bor9 p-r-10 m-r-11">
                                <a href="#"
                                   class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 js-addwish-detail tooltip100"
                                   data-tooltip="Thêm vào danh sách yêu thích">
                                    <i class="zmdi zmdi-favorite"></i>
                                </a>
                            </div>

                            <a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
                               data-tooltip="Facebook">
                                <i class="fa fa-facebook"></i>
                            </a>

                            <a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
                               data-tooltip="Twitter">
                                <i class="fa fa-twitter"></i>
                            </a>

                            <a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
                               data-tooltip="Google+">
                                <i class="fa fa-google-plus"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="bor10 m-t-50 p-t-43 p-b-40">
                <!-- Tab01 -->
                <div class="tab01">
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs" role="tablist">
                        <li class="nav-item p-b-10">
                            <a class="nav-link active" data-toggle="tab" href="#description" role="tab">
                                Thông tin sản phẩm
                            </a>
                        </li>

                        <li class="nav-item p-b-10">
                            <a class="nav-link" data-toggle="tab" href="#information" role="tab">Thông tin chi tiết</a>
                        </li>

                        <li class="nav-item p-b-10">
                            <a class="nav-link" data-toggle="tab" href="#reviews" role="tab">Hướng dẫn chọn size:</a>
                        </li>
                    </ul>

                    <!-- Tab panes -->
                    <div class="tab-content p-t-43">
                        <!-- - -->
                        <div class="tab-pane fade show active" id="description" role="tabpanel">
                            <div class="how-pos2 p-lr-15-md">
                                ${model.description}
                            </div>
                        </div>

                        <!-- - -->
                        <div class="tab-pane fade" id="information" role="tabpanel">
                            <div class="row">
                                <div class="col-sm-10 col-md-8 col-lg-6 m-lr-auto">
                                    <ul class="p-lr-28 p-lr-15-sm">
                                        <li class="flex-w flex-t p-b-7">
                                            <span class="stext-102 cl3 size-205">Trọng lượng</span>
                                            <span class="stext-102 cl6 size-206">0.79 kg</span>
                                        </li>

                                        <li class="flex-w flex-t p-b-7">
                                            <span class="stext-102 cl3 size-205">Kích thước</span>
                                            <span class="stext-102 cl6 size-206">110 x 33 x 100 cm</span>
                                        </li>

                                        <li class="flex-w flex-t p-b-7">
                                            <span class="stext-102 cl3 size-205">Chất liệu</span>
                                            <span class="stext-102 cl6 size-206">60% cotton</span>
                                        </li>

                                        <li class="flex-w flex-t p-b-7">
                                            <span class="stext-102 cl3 size-205">Màu sắc</span>
                                            <span class="stext-102 cl6 size-206">Đen, Xanh dương, Xám, Xanh lá, Đỏ, Trắng</span>
                                        </li>

                                        <li class="flex-w flex-t p-b-7">
                                            <span class="stext-102 cl3 size-205">Size</span>
                                            <span class="stext-102 cl6 size-206">XL, L, M, S</span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <!-- - -->
                        <div class="tab-pane fade" id="reviews" role="tabpanel">
                            <div class="row">
                                <div class="col-sm-10 col-md-8 col-lg-6 m-lr-auto">
                                    <img src="<c:url value="/images/products/size.PNG" />" alt="hướng dẫn chọn size">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="bg6 flex-c-m flex-w size-302 m-t-73 p-tb-15">
            <span class="stext-107 cl6 p-lr-25">Sản phẩm: ${model.name}</span>
            <span class="stext-107 cl6 p-lr-25">Danh mục: ${model.categoryName}</span>
        </div>
    </section>

    <!-- Related Products -->
    <section class="sec-relate-product bg0 p-t-45 p-b-105">
        <div class="container">
            <div class="p-b-45">
                <h3 class="ltext-106 cl5 txt-center">Sản phẩm liên quan</h3>
            </div>

            <!-- Slide2 -->
            <div class="wrap-slick2">
                <div class="slick2">
                    <c:forEach var="item" items="${relatedProducts}">
                        <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item">
                            <!-- Block2 -->
                            <div class="block2">
                                <div class="block2-pic hov-img0">
                                    <img src="<c:url value="/images/products/${item.categoryCode}/${item.cover}" />"
                                         alt="IMG-PRODUCT">
                                    <a class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
                                        Xem nhanh
                                    </a>
                                </div>

                                <div class="block2-txt flex-w flex-t p-t-14">
                                    <div class="block2-txt-child1 flex-col-l ">
                                        <a href="<c:url value='/san-pham?type=detail&productcode=${item.code}' />"
                                           class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6 text-capitalize">
                                                ${item.name}
                                        </a>
                                        <span class="stext-105 cl3">${item.price}</span>
                                    </div>

                                    <div class="block2-txt-child2 flex-r p-t-3">
                                        <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
                                            <img class="icon-heart1 dis-block trans-04"
                                                 src="<c:url value='/templates/web/icons/icon-heart-01.png' />"
                                                 alt="ICON">
                                            <img class="icon-heart2 dis-block trans-04 ab-t-l"
                                                 src="<c:url value='/templates/web/icons/icon-heart-02.png' />"
                                                 alt="ICON">
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </section>

    <!-- xem nhanh modal -->
    <%@ include file="/common/web/quick-view.jsp" %>
</body>
</html>