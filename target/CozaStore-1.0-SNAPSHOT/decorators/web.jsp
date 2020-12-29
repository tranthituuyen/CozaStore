<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title><decorator:title default="Trang chủ" /></title>
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
              rel="stylesheet">

        <!-- css -->
        <link rel="icon" type="image/png" href="<c:url value='/templates/web/icons/favicon.png' />" media="all" />
        <link rel="stylesheet" type="text/css"
              href="<c:url value='/templates/common/fonts/font-awesome-4.7.0/css/font-awesome.min.css' />" media="all" />
        <link rel="stylesheet" type="text/css" href="<c:url value='/templates/web/iconic/css/material-design-iconic-font.min.css' />" media="all" />
        <link rel="stylesheet" type="text/css" href="<c:url value='/templates/common/fonts/linearicons-v1.0.0/icon-font.min.css' />" media="all" />
        <link rel="stylesheet" type="text/css" href="<c:url value='/templates/web/animation/animate.css' />" media="all" />
        <link rel="stylesheet" type="text/css" href="<c:url value='/templates/web/css/hamburgers.min.css' />" media="all" />
        <link rel="stylesheet" type="text/css" href="<c:url value='/templates/web/animation/css/animsition.min.css' />" media="all" />
        <link rel="stylesheet" type="text/css" href="<c:url value='/templates/web/select2/select2.min.css' />" media="all" />
        <link rel="stylesheet" type="text/css" href="<c:url value='/templates/web/daterangepicker/daterangepicker.css' />" media="all" />
        <link rel="stylesheet" type="text/css" href="<c:url value='/templates/web/slick/slick.css' />" media="all" />
        <link rel="stylesheet" type="text/css" href="<c:url value='/templates/web/MagnificPopup/magnific-popup.css' />" media="all" />
        <link rel="stylesheet" type="text/css" href="<c:url value='/templates/web/perfect-scrollbar/perfect-scrollbar.css' />" media="all" />
        <link rel="stylesheet" type="text/css" href="<c:url value='/templates/common/bootstrap/css/bootstrap.min.css' />" media="all" />
        <link rel="stylesheet" type="text/css" href="<c:url value='/templates/web/styles/util.css' />" media="all" />
        <link rel="stylesheet" type="text/css" href="<c:url value='/templates/web/styles/main.css' />" media="all" />
    </head>

    <body class="animsition">

        <!-- body -->
        <decorator:body />

        <!-- footer -->
        <%@ include file="/common/web/footer.jsp" %>

        <!-- script -->
        <script src="<c:url value='/templates/common/jquery/jquery-3.2.1.min.js' />" type="text/javascript"></script>
        <script src="<c:url value='/templates/common/bootstrap/js/bootstrap.bundle.min.js' />" type="text/javascript" ></script>
        <script src="<c:url value='/templates/web/animation/js/animsition.min.js' />" type="text/javascript"></script>
        <script src="<c:url value='/templates/web/popper.min.js' />" type="text/javascript"></script>
        <script src="<c:url value='/templates/common/bootstrap/js/bootstrap.min.js' />" type="text/javascript"></script>
        <script src="<c:url value='/templates/web/select2/select2.min.js' />" type="text/javascript"></script>
        <script src="<c:url value='/templates/web/daterangepicker/moment.min.js' />" type="text/javascript"></script>
        <script src="<c:url value='/templates/web/daterangepicker/daterangepicker.js' />" type="text/javascript"></script>
        <script src="<c:url value='/templates/web/slick/slick.min.js' />" type="text/javascript"></script>
        <script src="<c:url value='/templates/web/js/slick-custom.js' />" type="text/javascript"></script>
        <script src="<c:url value='/templates/web/parallax100/parallax100.js' />" type="text/javascript"></script>
        <script src="<c:url value='/templates/web/MagnificPopup/jquery.magnific-popup.min.js' />" type="text/javascript"></script>
        <script src="<c:url value='/templates/web/isotope/isotope.pkgd.min.js' />" type="text/javascript"></script>
        <script src="<c:url value='/templates/common/sweetalert/sweetalert.min.js' />" type="text/javascript"></script>
        <script src="<c:url value='/templates/web/perfect-scrollbar/perfect-scrollbar.min.js' />" type="text/javascript"></script>
        <script src="<c:url value='/templates/web/js/main.js' />" type="text/javascript"></script>

        <%-- script --%>
        <script type="text/javascript">
            $(".js-select2").each(function(){
                $(this).select2({
                    minimumResultsForSearch: 20,
                    dropdownParent: $(this).next('.dropDownSelect2')
                });
            })
        </script>

        <%-- script --%>
        <script type="text/javascript">
            $('.parallax100').parallax100();
        </script>

        <%-- script --%>
        <script type="text/javascript">
            $('.gallery-lb').each(function() { // the containers for all your galleries
                $(this).magnificPopup({
                    delegate: 'a', // the selector for gallery item
                    type: 'image',
                    gallery: {
                        enabled:true
                    },
                    mainClass: 'mfp-fade'
                });
            });
        </script>

        <%-- script --%>
        <script type="text/javascript">
            $('.js-addwish-b2').on('click', function(e){
                e.preventDefault();
            });

            $('.js-addwish-b2').each(function(){
                var nameProduct = $(this).parent().parent().find('.js-name-b2').html();
                $(this).on('click', function(){
                    swal(nameProduct, "đã thêm vào danh sách yêu thích!", "success");

                    $(this).addClass('js-addedwish-b2');
                    $(this).off('click');
                });
            });

            $('.js-addwish-detail').each(function(){
                var nameProduct = $(this).parent().parent().parent().find('.js-name-detail').html();

                $(this).on('click', function(){
                    swal(nameProduct, "đã thêm vào danh sách yêu thích!", "success");

                    $(this).addClass('js-addedwish-detail');
                    $(this).off('click');
                });
            });

            /*---------------------------------------------*/

            $('.js-addcart-detail').each(function(){
                var nameProduct = $(this).parent().parent().parent().parent().find('.js-name-detail').html();
                $(this).on('click', function(){
                    swal(nameProduct, "đã thêm vào giỏ hàng !", "success");
                });
            });
        </script>

        <%-- script --%>
        <script type="text/javascript">
            $('.js-pscroll').each(function(){
                $(this).css('position','relative');
                $(this).css('overflow','hidden');
                const ps = new PerfectScrollbar(this, {
                    wheelSpeed: 1,
                    scrollingThreshold: 1000,
                    wheelPropagation: false,
                });

                $(window).on('resize', function(){
                    ps.update();
                })
            });
        </script>
    </body>
</html>
