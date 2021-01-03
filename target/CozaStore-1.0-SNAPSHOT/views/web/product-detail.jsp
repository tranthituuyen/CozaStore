<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chi tiết sản phẩm</title>
    </head>

    <body class="animsition">

        <!-- Header -->
        <header class="header-v4">
            <%@ include file="/common/web/header.jsp"%>
        </header>

        <!-- cart -->
        <%@ include file="/common/web/cart.jsp" %>

        <!-- breadcrumb -->
        <div class="container">
            <div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
                <a href="<c:url value='/views/web/home.jsp' />" class="stext-109 cl8 hov-cl1 trans-04">Trang chủ
                    <i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
                </a>
                <a href="<c:url value='/views/web/product.jsp' />" class="stext-109 cl8 hov-cl1 trans-04">Thời trang nam
                    <i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
                </a>
                <span class="stext-109 cl4">Áo sơ mi tay ngắn vàng</span>
            </div>
        </div>

        <!-- Product Detail -->
        <section class="sec-product-detail bg0 p-t-65 p-b-60">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-lg-7 p-b-30">
                        <div class="p-l-25 p-r-30 p-lr-0-lg">
                            <div class="wrap-slick3 flex-sb flex-w">
                                <div class="wrap-slick3-dots"></div>
                                <div class="wrap-slick3-arrows flex-sb-m flex-w"></div>
                                <div class="slick3 gallery-lb">
                                    <div class="item-slick3" data-thumb="<c:url value="/images/products/smkt-vang.jpg" />">
                                        <div class="wrap-pic-w pos-relative">
                                            <img src="<c:url value="/images/products/smkt-vang.jpg" />" alt="IMG-PRODUCT">
                                            <a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
                                               href="<c:url value="/images/products/smkt-vang.jpg" />">
                                                <i class="fa fa-expand"></i>
                                            </a>
                                        </div>
                                    </div>

                                    <div class="item-slick3" data-thumb="<c:url value="/images/products/smkt-vang-2.jpg" />">
                                        <div class="wrap-pic-w pos-relative">
                                            <img src="<c:url value="/images/products/smkt-vang-2.jpg" />" alt="IMG-PRODUCT">
                                            <a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
                                               href="<c:url value="/images/products/smkt-vang-2.jpg" />">
                                                <i class="fa fa-expand"></i>
                                            </a>
                                        </div>
                                    </div>

                                    <div class="item-slick3" data-thumb="<c:url value="/images/products/smkt-vang-3.jpg" />">
                                        <div class="wrap-pic-w pos-relative">
                                            <img src="<c:url value="/images/products/smkt-vang-2.jpg" />" alt="IMG-PRODUCT">
                                            <a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
                                               href="<c:url value="/images/products/smkt-vang-2.jpg" />">
                                                <i class="fa fa-expand"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-5 p-b-30">
                        <div class="p-r-50 p-t-5 p-lr-0-lg">
                            <h4 class="mtext-105 cl2 js-name-detail p-b-14">Áo sơ mi tay ngắn</h4>
                            <span class="mtext-106 cl2">220.000đ</span>
                            <p class="stext-102 cl3 p-t-23">Sơ mi tay ngắn luôn sang trọng, thoải mái.</p>
                            <p class="stext-102 cl3 p-t-23">Chất vải thoáng mát và ít nhăn, thấm hút cực tốt.</p>
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

                                            <input class="mtext-104 cl3 txt-center num-product" type="number" name="num-product" value="1">

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
                                    <a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 js-addwish-detail tooltip100"
                                       data-tooltip="Thêm vào danh sách yêu thích">
                                        <i class="zmdi zmdi-favorite"></i>
                                    </a>
                                </div>

                                <a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100" data-tooltip="Facebook">
                                    <i class="fa fa-facebook"></i>
                                </a>

                                <a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100" data-tooltip="Twitter">
                                    <i class="fa fa-twitter"></i>
                                </a>

                                <a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100" data-tooltip="Google+">
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
                                <a class="nav-link active" data-toggle="tab" href="#description" role="tab">Hướng dẫn sử dụng</a>
                            </li>

                            <li class="nav-item p-b-10">
                                <a class="nav-link" data-toggle="tab" href="#information" role="tab">Thông tin chi tiết</a>
                            </li>

                            <li class="nav-item p-b-10">
                                <a class="nav-link" data-toggle="tab" href="#reviews" role="tab">Đánh giá (1)</a>
                            </li>
                        </ul>

                        <!-- Tab panes -->
                        <div class="tab-content p-t-43">
                            <!-- - -->
                            <div class="tab-pane fade show active" id="description" role="tabpanel">
                                <div class="how-pos2 p-lr-15-md">
                                    <p class="stext-102 cl3 p-t-23">Hướng dẫn bảo quản:</p>
                                    <p class="stext-102 cl3 p-t-23">- Không dùng hóa chất tẩy.</p>
                                    <p class="stext-102 cl3 p-t-23">- Ủi ở nhiệt độ thích hợp, hạn chế dùng máy sấy.</p>
                                    <p class="stext-102 cl3 p-t-23">- Giặt ở chế độ bình thường, với đồ có màu tương tự.</p>
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
                                        <div class="p-b-30 m-lr-15-sm">
                                            <!-- Review -->
                                            <div class="flex-w flex-t p-b-68">
                                                <div class="wrap-pic-s size-109 bor0 of-hidden m-r-18 m-t-6">
                                                    <img src="<c:url value="/images/avt/avatar-01.jpg" />" alt="AVATAR">
                                                </div>

                                                <div class="size-207">
                                                    <div class="flex-w flex-sb-m p-b-17">
													    <span class="mtext-107 cl2 p-r-20">Huyền Nacy</span>
                                                        <span class="fs-18 cl11 userModel-select-none">
                                                            <i class="zmdi zmdi-star"></i>
                                                            <i class="zmdi zmdi-star"></i>
                                                            <i class="zmdi zmdi-star"></i>
                                                            <i class="zmdi zmdi-star"></i>
                                                            <i class="zmdi zmdi-star-half"></i>
													    </span>
                                                    </div>

                                                    <p class="stext-102 cl6">Chất liệu vải và kiểu dáng khá ổn</p>
                                                </div>
                                            </div>

                                            <!-- Add review -->
                                            <form class="w-full">
                                                <h5 class="mtext-108 cl2 p-b-7">Đánh giá sản phẩm</h5>
                                                <p class="stext-102 cl6">
                                                    Địa chỉ email của bạn sẽ không hiển thị công khai. Các trường bắt buộc được đánh dấu *
                                                </p>

                                                <div class="flex-w flex-m p-t-50 p-b-23">
												    <span class="stext-102 cl3 m-r-16">Xếp hạng của bạn</span>
                                                    <span class="wrap-rating fs-18 cl11 pointer">
                                                        <i class="item-rating pointer zmdi zmdi-star-outline"></i>
                                                        <i class="item-rating pointer zmdi zmdi-star-outline"></i>
                                                        <i class="item-rating pointer zmdi zmdi-star-outline"></i>
                                                        <i class="item-rating pointer zmdi zmdi-star-outline"></i>
                                                        <i class="item-rating pointer zmdi zmdi-star-outline"></i>
                                                        <input class="dis-none" type="number" name="rating">
                                                    </span>
                                                </div>

                                                <div class="row p-b-25">
                                                    <div class="col-12 p-b-5">
                                                        <label class="stext-102 cl3" for="review">Đánh giá của bạn</label>
                                                        <textarea class="size-110 bor8 stext-102 cl2 p-lr-20 p-tb-10" id="review" name="review"></textarea>
                                                    </div>

                                                    <div class="col-sm-6 p-b-5">
                                                        <label class="stext-102 cl3" for="name">Tên</label>
                                                        <input class="size-111 bor8 stext-102 cl2 p-lr-20" id="name" type="text" name="name">
                                                    </div>

                                                    <div class="col-sm-6 p-b-5">
                                                        <label class="stext-102 cl3" for="email">Email</label>
                                                        <input class="size-111 bor8 stext-102 cl2 p-lr-20" id="email" type="text" name="email">
                                                    </div>
                                                </div>

                                                <button class="flex-c-m stext-101 cl0 size-112 bg7 bor11 hov-btn3 p-lr-15 trans-04 m-b-10">Gửi</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="bg6 flex-c-m flex-w size-302 m-t-73 p-tb-15">
                <span class="stext-107 cl6 p-lr-25">SKU: SMN0047SSVA</span>
                <span class="stext-107 cl6 p-lr-25">Danh mục: Sơ mi, Sơ mi tay ngắn, Thời trang nam</span>
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
                        <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">

                            <!-- Block2 -->
                            <div class="block2">
                                <div class="block2-pic hov-img0">
                                    <img src="<c:url value="/images/products/product-01.jpg" />" alt="IMG-PRODUCT">

                                    <a class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
                                        Xem nhanh
                                    </a>
                                </div>

                                <div class="block2-txt flex-w flex-t p-t-14">
                                    <div class="block2-txt-child1 flex-col-l ">
                                        <a href="<c:url value='/views/web/product-detail.jsp' />"
                                           class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                                            Esprit Ruffle Shirt
                                        </a>
                                        <span class="stext-105 cl3">129.000đ</span>
                                    </div>

                                    <div class="block2-txt-child2 flex-r p-t-3">
                                        <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
                                            <img class="icon-heart1 dis-block trans-04"
                                                 src="<c:url value='/templates/web/icons/icon-heart-01.png' />" alt="ICON">
                                            <img class="icon-heart2 dis-block trans-04 ab-t-l"
                                                 src="<c:url value='/templates/web/icons/icon-heart-02.png' />" alt="ICON">
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
                            <!-- Block2 -->
                            <div class="block2">
                                <div class="block2-pic hov-img0">
                                    <img src="<c:url value="/images/products/product-02.jpg" />" alt="IMG-PRODUCT">

                                    <a class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
                                        Xem nhanh
                                    </a>
                                </div>

                                <div class="block2-txt flex-w flex-t p-t-14">
                                    <div class="block2-txt-child1 flex-col-l ">
                                        <a href="<c:url value='/views/web/product-detail.jsp' />"
                                           class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                                            Herschel supply
                                        </a>

                                        <span class="stext-105 cl3">258.000đ</span>
                                    </div>

                                    <div class="block2-txt-child2 flex-r p-t-3">
                                        <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
                                            <img class="icon-heart1 dis-block trans-04"
                                                 src="<c:url value='/templates/web/icons/icon-heart-01.png' />" alt="ICON">
                                            <img class="icon-heart2 dis-block trans-04 ab-t-l"
                                                 src="<c:url value='/templates/web/icons/icon-heart-02.png' />" alt="ICON">
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item men">
                            <!-- Block2 -->
                            <div class="block2">
                                <div class="block2-pic hov-img0">
                                    <img src="<c:url value="/images/products/product-03.jpg" />" alt="IMG-PRODUCT">

                                    <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
                                        Xem nhanh
                                    </a>
                                </div>

                                <div class="block2-txt flex-w flex-t p-t-14">
                                    <div class="block2-txt-child1 flex-col-l ">
                                        <a href="<c:url value='/views/web/product-detail.jsp' />" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                                            Only Check Trouser
                                        </a>

                                        <span class="stext-105 cl3">
									225.000đ
								</span>
                                    </div>

                                    <div class="block2-txt-child2 flex-r p-t-3">
                                        <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
                                            <img class="icon-heart1 dis-block trans-04"
                                                 src="<c:url value='/templates/web/icons/icon-heart-01.png' />" alt="ICON">
                                            <img class="icon-heart2 dis-block trans-04 ab-t-l"
                                                 src="<c:url value='/templates/web/icons/icon-heart-02.png' />" alt="ICON">
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
                            <!-- Block2 -->
                            <div class="block2">
                                <div class="block2-pic hov-img0">
                                    <img src="<c:url value="/images/products/product-04.jpg" />" alt="IMG-PRODUCT">

                                    <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
                                        Xem nhanh
                                    </a>
                                </div>

                                <div class="block2-txt flex-w flex-t p-t-14">
                                    <div class="block2-txt-child1 flex-col-l ">
                                        <a href="<c:url value='/views/web/product-detail.jsp' />" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                                            Classic Trench Coat
                                        </a>

                                        <span class="stext-105 cl3">825.000đ</span>
                                    </div>

                                    <div class="block2-txt-child2 flex-r p-t-3">
                                        <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
                                            <img class="icon-heart1 dis-block trans-04"
                                                 src="<c:url value='/templates/web/icons/icon-heart-01.png' />" alt="ICON">
                                            <img class="icon-heart2 dis-block trans-04 ab-t-l"
                                                 src="<c:url value='/templates/web/icons/icon-heart-02.png' />" alt="ICON">
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
                            <!-- Block2 -->
                            <div class="block2">
                                <div class="block2-pic hov-img0">
                                    <img src="<c:url value="/images/products/product-05.jpg" />" alt="IMG-PRODUCT">

                                    <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
                                        Xem nhanh
                                    </a>
                                </div>

                                <div class="block2-txt flex-w flex-t p-t-14">
                                    <div class="block2-txt-child1 flex-col-l ">
                                        <a href="<c:url value='/views/web/product-detail.jsp' />" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                                            Front Pocket Jumper
                                        </a>

                                        <span class="stext-105 cl3">400.000đ</span>
                                    </div>

                                    <div class="block2-txt-child2 flex-r p-t-3">
                                        <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
                                            <img class="icon-heart1 dis-block trans-04"
                                                 src="<c:url value='/templates/web/icons/icon-heart-01.png' />" alt="ICON">
                                            <img class="icon-heart2 dis-block trans-04 ab-t-l"
                                                 src="<c:url value='/templates/web/icons/icon-heart-02.png' />" alt="ICON">
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item watches">
                            <!-- Block2 -->
                            <div class="block2">
                                <div class="block2-pic hov-img0">
                                    <img src="<c:url value="/images/products/product-06.jpg" />" alt="IMG-PRODUCT">

                                    <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
                                        Xem nhanh
                                    </a>
                                </div>

                                <div class="block2-txt flex-w flex-t p-t-14">
                                    <div class="block2-txt-child1 flex-col-l ">
                                        <a href="<c:url value='/views/web/product-detail.jsp' />" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                                            Vintage Inspired Classic
                                        </a>

                                        <span class="stext-105 cl3">1.250.000đ</span>
                                    </div>

                                    <div class="block2-txt-child2 flex-r p-t-3">
                                        <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
                                            <img class="icon-heart1 dis-block trans-04"
                                                 src="<c:url value='/templates/web/icons/icon-heart-01.png' />" alt="ICON">
                                            <img class="icon-heart2 dis-block trans-04 ab-t-l"
                                                 src="<c:url value='/templates/web/icons/icon-heart-02.png' />" alt="ICON">
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
                            <!-- Block2 -->
                            <div class="block2">
                                <div class="block2-pic hov-img0">
                                    <img src="<c:url value="/images/products/product-07.jpg" />" alt="IMG-PRODUCT">

                                    <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
                                        Xem nhanh
                                    </a>
                                </div>

                                <div class="block2-txt flex-w flex-t p-t-14">
                                    <div class="block2-txt-child1 flex-col-l ">
                                        <a href="<c:url value='/views/web/product-detail.jsp' />" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                                            Shirt in Stretch Cotton
                                        </a>

                                        <span class="stext-105 cl3">559.000đ</span>
                                    </div>

                                    <div class="block2-txt-child2 flex-r p-t-3">
                                        <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
                                            <img class="icon-heart1 dis-block trans-04"
                                                 src="<c:url value='/templates/web/icons/icon-heart-01.png' />" alt="ICON">
                                            <img class="icon-heart2 dis-block trans-04 ab-t-l"
                                                 src="<c:url value='/templates/web/icons/icon-heart-02.png' />" alt="ICON">
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
                            <!-- Block2 -->
                            <div class="block2">
                                <div class="block2-pic hov-img0">
                                    <img src="<c:url value="/images/products/product-08.jpg" />" alt="IMG-PRODUCT">

                                    <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
                                        Xem nhanh
                                    </a>
                                </div>

                                <div class="block2-txt flex-w flex-t p-t-14">
                                    <div class="block2-txt-child1 flex-col-l ">
                                        <a href="<c:url value='/views/web/product-detail.jsp' />" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                                            Pieces Metallic Printed
                                        </a>

                                        <span class="stext-105 cl3">
									185.000đ
								</span>
                                    </div>

                                    <div class="block2-txt-child2 flex-r p-t-3">
                                        <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
                                            <img class="icon-heart1 dis-block trans-04"
                                                 src="<c:url value='/templates/web/icons/icon-heart-01.png' />" alt="ICON">
                                            <img class="icon-heart2 dis-block trans-04 ab-t-l"
                                                 src="<c:url value='/templates/web/icons/icon-heart-02.png' />" alt="ICON">
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- xem nhanh modal -->
        <%@ include file="/common/web/quick-view.jsp" %>
    </body>
</html>