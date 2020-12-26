<%@ page pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>

<div class="wrap-header-cart js-panel-cart">
    <div class="s-full js-hide-cart"></div>
    <div class="header-cart flex-col-l p-l-65 p-r-25">
        <div class="header-cart-title flex-w flex-sb-m p-b-8">
            <span class="mtext-103 cl2">Giỏ hàng của bạn</span>
            <div class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-cart">
                <i class="zmdi zmdi-close"></i>
            </div>
        </div>

        <div class="header-cart-content flex-w js-pscroll">
            <ul class="header-cart-wrapitem w-full">
                <li class="header-cart-item flex-w flex-t m-b-12">
                    <div class="header-cart-item-img">
                        <img src="<c:url value='/images/products/cart-item-1.jpg' />" alt="IMG">
                    </div>
                    <div class="header-cart-item-txt p-t-8">
                        <a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">Sheer shirt</a>
                        <span class="header-cart-item-info">1 x 400.000đ</span>
                    </div>
                </li>

                <li class="header-cart-item flex-w flex-t m-b-12">
                    <div class="header-cart-item-img">
                        <img src="<c:url value='/images/products/cart-item-2.jpg' />" alt="IMG">
                    </div>
                    <div class="header-cart-item-txt p-t-8">
                        <a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">SSS. Icon Pants</a>
                        <span class="header-cart-item-info">1 x 494.000đ</span>
                    </div>
                </li>

                <li class="header-cart-item flex-w flex-t m-b-12">
                    <div class="header-cart-item-img">
                        <img src="<c:url value='/images/products/cart-item-3.jpg' />" alt="IMG">
                    </div>
                    <div class="header-cart-item-txt p-t-8">
                        <a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">SSS. Thomas Jacket</a>
                        <span class="header-cart-item-info">1 x 719.000đ</span>
                    </div>
                </li>

                <li class="header-cart-item flex-w flex-t m-b-12">
                    <div class="header-cart-item-img">
                        <img src="<c:url value='/images/products/cart-item-1.jpg' />" alt="IMG">
                    </div>

                    <div class="header-cart-item-txt p-t-8">
                        <a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">Sheer shirt</a>
                        <span class="header-cart-item-info">1 x 400.000đ</span>
                    </div>
                </li>
            </ul>

            <div class="w-full">
                <div class="header-cart-total w-full p-tb-40">Tổng cộng: 1.613.000đ</div>
                <div class="header-cart-buttons flex-w w-full">
                    <a href="shopping-cart.jsp"
                       class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-r-8 m-b-10">
                        Xem giỏ hàng
                    </a>

                    <a href="shopping-cart.jsp"
                       class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-b-10">
                        Thanh toán
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>