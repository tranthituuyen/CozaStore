<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Trang chủ</title>

    <style type="text/css">
        * {
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</head>

<body class="animsition">
    <%-- header --%>
    <header>
        <%@ include file="/common/web/header.jsp" %>
    </header>

    <!-- cart -->
    <%@ include file="/common/web/cart.jsp" %>

    <!-- Slider -->
    <section class="section-slide">
        <div class="wrap-slick1">
            <div class="slick1">
                <div class="item-slick1"
                     style="background-image: url('<c:url value="/images/banners/slide-01.jpg"/>');">
                    <div class="container h-full">
                        <div class="flex-col-l-m h-full p-t-100 p-b-30 respon5">
                            <div class="layer-slick1 animated visible-false"
                                 data-appear="fadeInDown" data-delay="0">
								<span class="ltext-101 cl2 respon2">
									BTS thời trang nữ 2020
								</span>
                            </div>

                            <div class="layer-slick1 animated visible-false"
                                 data-appear="fadeInUp" data-delay="800">
                                <h2 class="ltext-201 cl2 p-t-19 p-b-43 respon1">
                                    PHIÊN BẢN MỚI
                                </h2>
                            </div>

                            <div class="layer-slick1 animated visible-false"
                                 data-appear="zoomIn" data-delay="1600">
                                <a href="<c:url value='/san-pham?type=filter&find=thoitrangnu' />"
                                   class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04">
                                    Mua ngay
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="item-slick1"
                     style="background-image: url('<c:url value="/images/banners/slide-02.jpg"/>');">
                    <div class="container h-full">
                        <div class="flex-col-l-m h-full p-t-100 p-b-30 respon5">
                            <div class="layer-slick1 animated visible-false"
                                 data-appear="rollIn" data-delay="0">
								<span class="ltext-101 cl2 respon2">
									Thời trang nam - Phiên bản mới
								</span>
                            </div>

                            <div class="layer-slick1 animated visible-false"
                                 data-appear="lightSpeedIn" data-delay="800">
                                <h2 class="ltext-201 cl2 p-t-19 p-b-43 respon1">
                                    Jackets & Coats
                                </h2>
                            </div>

                            <div class="layer-slick1 animated visible-false"
                                 data-appear="slideInUp" data-delay="1600">
                                <a href="<c:url value='/san-pham?type=filter&find=thoitrangnam' />"
                                   class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04">
                                    Mua ngay
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="item-slick1"
                     style="background-image: url('<c:url value="/images/banners/slide-01.jpg"/>');">
                    <div class="container h-full">
                        <div class="flex-col-l-m h-full p-t-100 p-b-30 respon5">
                            <div class="layer-slick1 animated visible-false"
                                 data-appear="rotateInDownLeft" data-delay="0">
								<span class="ltext-101 cl2 respon2">
									BTS thời trang nam 2020
								</span>
                            </div>

                            <div class="layer-slick1 animated visible-false"
                                 data-appear="rotateInUpRight" data-delay="800">
                                <h2 class="ltext-201 cl2 p-t-19 p-b-43 respon1">
                                    HÀNG MỚI VỀ
                                </h2>
                            </div>

                            <div class="layer-slick1 animated visible-false"
                                 data-appear="rotateIn" data-delay="1600">
                                <a href="<c:url value='/san-pham?type=filter&find=thoitrangnam' />"
                                   class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04">
                                    Mua ngay
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Banner -->
    <div class="sec-banner bg0 p-t-80 p-b-50">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-xl-4 p-b-30 m-lr-auto">
                    <!-- Block1 -->
                    <div class="block1 wrap-pic-w">
                        <img src="<c:url value='/images/banners/banner-01.jpg' />" alt="IMG-BANNER">
                        <a href="<c:url value='/san-pham?type=filter&find=thoitrangnu' />"
                           class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3">
                            <div class="block1-txt-child1 flex-col-l">
                                <span class="block1-name ltext-102 trans-04 p-b-8">Thời trang nữ</span>
                                <span class="block1-info stext-102 trans-04">Xuân 2020</span>
                            </div>

                            <div class="block1-txt-child2 p-b-4 trans-05">
                                <div class="block1-link stext-101 cl0 trans-09">Mua ngay</div>
                            </div>
                        </a>
                    </div>
                </div>

                <div class="col-md-6 col-xl-4 p-b-30 m-lr-auto">
                    <!-- Block1 -->
                    <div class="block1 wrap-pic-w">
                        <img src="<c:url value='/images/banners/banner-02.jpg' />" alt="IMG-BANNER">
                        <a class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3"
                           href="<c:url value='/san-pham?type=filter&find=thoitrangnam' />">
                            <div class="block1-txt-child1 flex-col-l">
                                <span class="block1-name ltext-102 trans-04 p-b-8">Thời trang nam</span>
                                <span class="block1-info stext-102 trans-04">Xuân 2020</span>
                            </div>

                            <div class="block1-txt-child2 p-b-4 trans-05">
                                <div class="block1-link stext-101 cl0 trans-09">Mua ngay</div>
                            </div>
                        </a>
                    </div>
                </div>

                <div class="col-md-6 col-xl-4 p-b-30 m-lr-auto">
                    <!-- Block1 -->
                    <div class="block1 wrap-pic-w">
                        <img src="<c:url value='/images/banners/banner-03.jpg' />" alt="IMG-BANNER">

                        <!-- link tới trang phụ kiện -->
                        <a href="<c:url value='/san-pham?type=filter&find=phukien' />"
                           class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3">
                            <div class="block1-txt-child1 flex-col-l">
                                <span class="block1-name ltext-102 trans-04 p-b-8">Phụ kiện</span>
                                <span class="block1-info stext-102 trans-04">Xu hướng</span>
                            </div>

                            <div class="block1-txt-child2 p-b-4 trans-05">
                                <div class="block1-link stext-101 cl0 trans-09">Mua ngay</div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Product -->
    <section class="bg0 p-t-23 p-b-140">
        <div class="container">
            <div class="p-b-10">
                <h3 class="ltext-103 cl5">
                    Tổng quan
                </h3>
            </div>

            <div class="flex-w flex-sb-m p-b-52">
                <div class="flex-w flex-l-m filter-tope-group m-tb-10">
                    <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5 how-active1" data-filter="*">Tất
                        cả
                    </button>
                    <c:forEach var="item" items="${categories.listResult}">
                        <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".${item.code}">
                                ${item.name}
                        </button>
                    </c:forEach>
                </div>

                <div class="flex-w flex-c-m m-tb-10">
                    <div class="flex-c-m stext-106 cl6 size-104 bor4 pointer hov-btn3 trans-04 m-r-8 m-tb-4 js-show-filter">
                        <i class="icon-filter cl2 m-r-6 fs-15 trans-04 zmdi zmdi-filter-list"></i>
                        <i class="icon-close-filter cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i>Lọc
                    </div>

                    <div class="flex-c-m stext-106 cl6 size-105 bor4 pointer hov-btn3 trans-04 m-tb-4 js-show-search">
                        <i class="icon-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-search"></i>
                        <i class="icon-close-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i>Tìm kiếm
                    </div>
                </div>

                <!-- Search product -->
                <div class="dis-none panel-search w-full p-t-10 p-b-15">
                    <div class="bor8 dis-flex p-l-15">
                        <button class="size-113 flex-c-m fs-16 cl2 hov-cl1 trans-04"><i
                                class="zmdi zmdi-search"></i></button>
                        <input class="mtext-107 cl2 size-114 plh2 p-r-15" type="text" name="search-product"
                               placeholder="Tìm kiếm">
                    </div>
                </div>

                <!-- Filter -->
                <div class="dis-none panel-filter w-full p-t-10">
                    <div class="wrap-filter flex-w bg6 w-full p-lr-40 p-t-27 p-lr-15-sm">
                        <div class="filter-col1 p-r-15 p-b-27">
                            <div class="mtext-102 cl2 p-b-15">Sắp xếp theo</div>
                            <ul>
                                <li class="p-b-6"><a href="#" class="filter-link stext-106 trans-04">Mặc định</a>
                                </li>
                                <li class="p-b-6"><a href="#" class="filter-link stext-106 trans-04">Phổ biến</a>
                                </li>
                                <li class="p-b-6"><a href="#" class="filter-link stext-106 trans-04">Đánh giá trung
                                    bình</a></li>
                                <li class="p-b-6"><a href="#"
                                                     class="filter-link stext-106 trans-04 filter-link-active">Mới
                                    nhất</a></li>
                                <li class="p-b-6"><a href="#" class="filter-link stext-106 trans-04">Giá: Thấp đến
                                    cao</a></li>
                                <li class="p-b-6"><a href="#" class="filter-link stext-106 trans-04">Giá: Cao đến
                                    thấp</a></li>
                            </ul>
                        </div>

                        <div class="filter-col2 p-r-15 p-b-27">
                            <div class="mtext-102 cl2 p-b-15">Giá</div>
                            <ul>
                                <li class="p-b-6"><a href="#"
                                                     class="filter-link stext-106 trans-04 filter-link-active">Tất
                                    cả</a></li>
                                <li class="p-b-6"><a href="#" class="filter-link stext-106 trans-04">0đ -
                                    200.000đ</a></li>
                                <li class="p-b-6"><a href="#" class="filter-link stext-106 trans-04">200.000đ -
                                    400.000đ</a></li>
                                <li class="p-b-6"><a href="#" class="filter-link stext-106 trans-04">400.000đ -
                                    600.000đ</a></li>
                                <li class="p-b-6"><a href="#" class="filter-link stext-106 trans-04">600.000đ -
                                    800.000đ</a></li>
                                <li class="p-b-6"><a href="#" class="filter-link stext-106 trans-04">> 800.000đ</a>
                                </li>
                            </ul>
                        </div>

                        <div class="filter-col3 p-r-15 p-b-27">
                            <div class="mtext-102 cl2 p-b-15">Màu sắc</div>
                            <ul>
                                <li class="p-b-6">
                                        <span class="fs-15 lh-12 m-r-6" style="color: #222;"><i
                                                class="zmdi zmdi-circle"></i></span>
                                    <a href="#" class="filter-link stext-106 trans-04">Đen</a>
                                </li>

                                <li class="p-b-6">
                                        <span class="fs-15 lh-12 m-r-6" style="color: #4272d7;"><i
                                                class="zmdi zmdi-circle"></i></span>
                                    <a href="#" class="filter-link stext-106 trans-04 filter-link-active">Xanh
                                        dương</a>
                                </li>

                                <li class="p-b-6">
                                        <span class="fs-15 lh-12 m-r-6" style="color: #b3b3b3;"><i
                                                class="zmdi zmdi-circle"></i></span>
                                    <a href="#" class="filter-link stext-106 trans-04">Xám</a>
                                </li>

                                <li class="p-b-6">
                                        <span class="fs-15 lh-12 m-r-6" style="color: #00ad5f;"><i
                                                class="zmdi zmdi-circle"></i></span>
                                    <a href="#" class="filter-link stext-106 trans-04">Xanh rêu</a>
                                </li>

                                <li class="p-b-6">
                                        <span class="fs-15 lh-12 m-r-6" style="color: #fa4251;"><i
                                                class="zmdi zmdi-circle"></i></span>
                                    <a href="#" class="filter-link stext-106 trans-04">Đỏ</a>
                                </li>

                                <li class="p-b-6">
                                        <span class="fs-15 lh-12 m-r-6" style="color: #aaa;"><i
                                                class="zmdi zmdi-circle-o"></i></span>
                                    <a href="#" class="filter-link stext-106 trans-04">Trắng</a>
                                </li>
                            </ul>
                        </div>

                        <div class="filter-col4 p-b-27">
                            <div class="mtext-102 cl2 p-b-15">Tags</div>
                            <div class="flex-w p-t-4 m-r--5">
                                <a class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5"
                                   href="#">Fashion</a>
                                <a href="#"
                                   class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">Lifestyle</a>
                                <a href="#"
                                   class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">Denim</a>
                                <a href="#"
                                   class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">Streetstyle</a>
                                <a href="#"
                                   class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">Crafts</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row isotope-grid">
                <c:forEach var="item" items="${products.listResult}">
                    <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item ${item.categoryCode}">
                        <!-- Block2 -->
                        <div class="block2">
                            <div class="block2-pic hov-img0">
                                <img src="<c:url value='/images/products/${item.categoryCode}/${item.cover}' />"
                                     alt="hình ảnh sản phẩm ${item.name}">
                                <a class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1"
                                   href="#">Xem nhanh
                                </a>
                            </div>

                            <div class="block2-txt flex-w flex-t p-t-14">
                                <div class="block2-txt-child1 flex-col-l ">
                                    <a href="<c:url value='/san-pham?type=detail&productcode=${item.code}' />"
                                       class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6 text-uppercase">${item.name}
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

            <%-- pagination --%>
            <ul class="pagination" id="pagination"></ul>

            <!-- Load more -->
            <div class="flex-c-m flex-w w-full p-t-45">
                <a href="<c:url value="/san-pham" />"
                   class="flex-c-m stext-101 cl5 size-103 bg2 bor1 hov-btn1 p-lr-15 trans-04">Xem thêm</a>
            </div>
        </div>
    </section>

    <!-- xem nhanh modal -->
    <%@ include file="/common/web/quick-view.jsp" %>
</body>
</html>
