<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title><decorator:title default="Đăng ký" /></title>
    <!-- css -->
    <link rel="icon" type="image/png" href="<c:url value='/templates/web/icons/favicon.png' />" media="all"/>
    <link rel="stylesheet" href="<c:url value='/templates/admin/fontawesome-5.15.1/css/all.min.css' />" media="all"/>

    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
          rel="stylesheet">

    <link rel="stylesheet" href="<c:url value='/templates/admin/css/sb-admin-2.min.css' />" media="all"/>
</head>

<body id="">
    <decorator:body />

    <!--script -->
    <script src="<c:url value='/templates/common/jquery/jquery-3.2.1.min.js' />" type="text/javascript"></script>
    <script src="<c:url value='/templates/common/bootstrap/js/bootstrap.bundle.min.js' />" type="text/javascript"></script>
    <script src="<c:url value='/templates/admin/jquery/jquery.easing.min.js' />" type="text/javascript"></script>
    <script src="<c:url value='/templates/admin/jquery/sb-admin-2.min.js' />" type="text/javascript"></script>
</body>
</html>
