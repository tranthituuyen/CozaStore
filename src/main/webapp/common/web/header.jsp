<%@ page language="java" pageEncoding="UTF-8" %>

<!-- Header desktop -->
<div class="container-menu-desktop">
    <!-- Topbar -->
    <div class="top-bar">
        <div class="content-topbar flex-sb-m h-full container">
            <!-- topbar menu -->
            <div class="left-top-bar user-select-none">Free ship toàn quốc với đơn hàng > 500k</div>
            <div class="right-top-bar flex-w h-full user-select-none">
                <a href="<c:url value="/lien-he" />" class="flex-c-m trans-04 p-lr-25">Hỗ trợ</a>
                <c:if test="${not empty USER}">
                    <a class="flex-c-m trans-04 p-lr-25" href='#'>Xin chào, ${USER.fullname}</a>
                    <a class="flex-c-m trans-04 p-lr-25" href="<c:url value='/thoat?action=logout'/>">Thoát</a>
                </c:if>
                <c:if test="${empty USER}">
                    <a class="flex-c-m trans-04 p-lr-25" href="<c:url value='/dang-nhap?action=login' />">Đăng nhập</a>
                </c:if>
            </div>
        </div>
    </div>

    <!-- menu desktop -->
    <div class="wrap-menu-desktop user-select-none">
        <nav class="limiter-menu-desktop container">
            <!-- Logo desktop -->
            <a href="<c:url value='/trang-chu' />" class="logo">
                <img src="<c:url value='/templates/web/icons/logo-01.png' />" alt="IMG-LOGO">
            </a>

            <!-- Menu desktop -->
            <div class="menu-desktop">
                <ul class="main-menu">
                    <li class="active-menu"><a href="<c:url value='/trang-chu' />">Trang chủ</a></li>
                    <li><a href="<c:url value='/san-pham' />">Cửa hàng</a></li>
                    <li class="label1" data-label1="hot"><a href="">Xu hướng</a></li>
                    <li><a href="<c:url value='/bai-viet' />">Blog</a></li>
                    <li><a href="<c:url value='/ve-chung-toi' />">Về chúng tôi</a></li>
                    <li><a href="<c:url value='/lien-he' />">Liên hệ</a></li>
                </ul>
            </div>

            <!-- Icon header -->
            <div class="wrap-icon-header flex-w flex-r-m">
                <div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search">
                    <i class="zmdi zmdi-search"></i>
                </div>
                <div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart"
                     data-notify="2">
                    <i class="zmdi zmdi-shopping-cart"></i>
                </div>
                <a class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti"
                   data-notify="0" href="#">
                    <i class="zmdi zmdi-favorite-outline"></i>
                </a>
            </div>
        </nav>
    </div>
</div>

<!-- Header Mobile -->
<div class="wrap-header-mobile">
    <!-- Logo moblie -->
    <div class="logo-mobile">
        <a href="#" class="logo"><img src="<c:url value='/templates/web/icons/logo-01.png' />" alt="IMG-LOGO"></a>
    </div>
    <!-- Icon header -->
    <div class="wrap-icon-header flex-w flex-r-m m-r-15">
        <div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 js-show-modal-search">
            <i class="zmdi zmdi-search"></i>
        </div>
        <div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti js-show-cart"
             data-notify="2">
            <i class="zmdi zmdi-shopping-cart"></i>
        </div>
        <a class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti"
           data-notify="0" href="#">
            <i class="zmdi zmdi-favorite-outline"></i>
        </a>
    </div>

    <!-- Button show menu -->
    <div class="btn-show-menu-mobile hamburger hamburger--squeeze">
        <span class="hamburger-box"><span class="hamburger-inner"></span></span>
    </div>
</div>

<!-- Menu Mobile -->
<div class="menu-mobile">
    <!-- mobile topbar menu -->
    <ul class="topbar-mobile">
        <li>
            <div class="left-top-bar">Free ship toàn quốc với đơn hàng > 500k</div>
        </li>
        <li>
            <div class="right-top-bar flex-w h-full">
                <a href="#" class="flex-c-m p-lr-10 trans-04">Hỗ trợ</a>
                <a href="<c:url value="dang-nhap" />" class="flex-c-m p-lr-10 trans-04">Tài khoản</a>
                <a href="#" class="flex-c-m p-lr-10 trans-04">EN</a>
                <a href="#" class="flex-c-m p-lr-10 trans-04">USD</a>
            </div>
        </li>
    </ul>
    <!-- mobile main mobile -->
    <ul class="main-menu-m">
        <li><a href="<c:url value='/trang-chu' />">Home</a></li>
        <li><a href="<c:url value='/san-pham' />.html">Cửa hàng</a></li>
        <li><a href="<c:url value='/san-pham' />.html">Xu hướng</a></li>
        <li><a href="<c:url value='/bai-viet' />">Blog</a></li>
        <li><a href="<c:url value='/ve-chung-toi' />">Về chúng tôi</a></li>
        <li><a href="<c:url value='/lien-he' />">Liên hệ</a></li>
    </ul>
</div>

<!-- Modal Search -->
<div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
    <div class="container-search-header">
        <button class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
            <a href="#" class="logo">
                <img src="<c:url value='/templates/web/icons/icon-close2.png' />" alt="IMG-LOGO">
            </a>
        </button>
        <!-- form tìm kiếm -->
        <form class="wrap-search-header flex-w p-l-15">
            <button class="flex-c-m trans-04"><i class="zmdi zmdi-search"></i></button>
            <input class="plh3" type="text" name="search" placeholder="Tìm kiếm...">
        </form>
    </div>
</div>
