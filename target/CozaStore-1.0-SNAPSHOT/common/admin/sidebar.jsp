<%@ page pageEncoding="UTF-8" %>
<ul class="navbar-nav sidebar sidebar-dark accordion dashboardSidebar" id="accordionSidebar">
    <!-- Sidebar - Brand -->
    <a href="<c:url value='/trang-chu' />" class="sidebar-brand d-flex align-items-center justify-content-center">
        <div class="sidebar-brand-icon rotate-n-15">
            <i class="fas fa-laugh-wink" style="font-size: 36px"></i>
        </div>
        <div class="sidebar-brand-text mx-3" style="font-size: 20px">CozaStore</div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider my-0" />

    <!-- Nav Item - Dashboard -->
    <li class="nav-item active">
        <a class="nav-link" href="<c:url value='/admin-trang-chu' />">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Thống kê</span>
        </a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">Quản lý chung</div>

    <!-- Nav Item - quản lý danh mục -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="<c:url value='/admin-quan-ly-danh-muc' />">
            <div class="d-inline-flex">
                <i class="fa fa-list-ul" style="width: 20px"></i>
            </div>
            <span>Quản lý danh mục</span>
        </a>
    </li>

    <!-- Nav Item - quản lý sản phẩm -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="<c:url value="/admin-quan-ly-san-pham" />"
           data-toggle="collapse" data-target="#collapse-3"
           aria-expanded="true" aria-controls="collapse-3">
            <div class="d-inline-flex">
                <i class="fa fa-cube" style="width: 20px"></i>
            </div>
            <span>Quản lý sản phẩm</span>
        </a>

        <div id="collapse-3" class="collapse" aria-labelledby="heading-3"
             data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Lựa chọn:</h6>
                <a class="collapse-item" href="<c:url value="/views/admin/add-product.jsp" />">Thêm sản phẩm</a>
                <a class="collapse-item" href="<c:url value='/admin-quan-ly-san-pham' />">Xem sản phẩm</a>
            </div>
        </div>
    </li>

    <!-- Nav Item - quản lý đơn hàng -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="<c:url value="/admin-quan-ly-don-hang" />"
           data-toggle="collapse" data-target="#collapse-6"
           aria-expanded="true" aria-controls="collapse-6">
            <div class="d-inline-flex">
                <i class="fab fa-first-order" style="width: 20px"></i>
            </div>
            <span>Quản lý đơn hàng</span>
        </a>

        <div id="collapse-6" class="collapse" aria-labelledby="heading-6"
             data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Lựa chọn:</h6>
                <a class="collapse-item" href="<c:url value="/admin-quan-ly-don-hang" />">Tất cả</a>
                <a class="collapse-item" href="#">Đang xử lý</a>
                <a class="collapse-item" href="#">Hoàn thành</a>
            </div>
        </div>
    </li>

    <!-- Nav Item - quản lý nhân sự -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#"
           data-toggle="collapse" data-target="#collapse-4"
           aria-expanded="true" aria-controls="collapse-4">
            <div class="d-inline-flex">
                <i class="fa fa-user-tie" style="width: 20px"></i>
            </div>
            <span>Quản lý nhân sự</span>
        </a>

        <div id="collapse-4" class="collapse" aria-labelledby="heading-4"
             data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Lựa chọn:</h6>
                <a class="collapse-item" href="">Thêm nhân viên</a>
                <a class="collapse-item" href="employee-management.html">Danh sách nhân viên</a>
                <a class="collapse-item" href="#">Chỉnh sửa</a>
            </div>
        </div>
    </li>

    <!-- Nav Item - quản lý người dùng -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="<c:url value="/admin-quan-ly-nguoi-dung" />"
           data-toggle="collapse" data-target="#collapse-5"
           aria-expanded="true" aria-controls="collapse-5">
            <div class="d-inline-flex">
                <i class="fa fa-user-friends" style="width: 20px"></i>
            </div>
            <span>Quản lý người dùng</span>
        </a>

        <div id="collapse-5" class="collapse" aria-labelledby="heading-5"
             data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Lựa chọn:</h6>
                <a class="collapse-item" href="<c:url value="/admin-quan-ly-nguoi-dung" />">Danh sách người dùng</a>
                <a class="collapse-item" href="#">Chỉnh sửa</a>
            </div>
        </div>
    </li>

    <!-- Nav Item - quản lý bài đăng blog -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="<c:url value="/admin-quan-ly-bai-viet" />">
            <i class="fa fa-book" style="width: 20px"></i>
            <span>Quản lý bài đăng Blog</span>
        </a>
    </li>

    <!-- Nav Item - quản lý giao dịch -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="<c:url value="/admin-quan-ly-giao-dich" />">
            <i class="fa fa-hand-holding-medical" style="width: 20px"></i>
            <span>Quản lý giao dịch</span>
        </a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">Quản lý thông tin</div>

    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="<c:url value="/lien-he" />">
            <div class="d-inline-flex">
                <i class="fas fa-location-arrow pt-1" style="width: 20px"></i>
            </div>
            <span>Thông tin liên hệ</span>
        </a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>
</ul>