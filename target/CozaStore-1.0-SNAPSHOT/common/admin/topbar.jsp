<%@ page pageEncoding="UTF-8" %>
<nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow user-select-none">
    <!-- Sidebar Toggle (Topbar) -->
    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
        <i class="fa fa-bars"></i>
    </button>
    <!-- Topbar Navbar -->
    <ul class="navbar-nav ml-auto">
        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
        <li class="nav-item dropdown no-arrow d-sm-none">
            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-search fa-fw"></i>
            </a>

            <!-- Dropdown - Messages -->
            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                 aria-labelledby="searchDropdown">
                <form class="form-inline mr-auto w-100 navbar-search">
                    <div class="input-group">
                        <input type="text" class="form-control bg-light border-0 small"
                               placeholder="Tìm kiếm..." aria-label="Search"
                               aria-describedby="basic-addon2">
                        <div class="input-group-append">
                            <button class="btn btn-primary" type="button">
                                <i class="fas fa-search fa-sm"></i>
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </li>

        <!-- Nav Item - Alerts -->
        <li class="nav-item dropdown no-arrow mx-1">
            <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button"
               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-bell fa-fw"></i>
                <!-- Counter - Alerts -->
                <span class="badge badge-danger badge-counter">3+</span>
            </a>
            <!-- Dropdown - Alerts -->
            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                 aria-labelledby="alertsDropdown">
                <h6 class="dropdown-header">
                    Trung tâm báo cáo
                </h6>
                <a class="dropdown-item d-flex align-items-center" href="#">
                    <div class="mr-3">
                        <div class="icon-circle bg-primary">
                            <i class="fas fa-file-alt text-white"></i>
                        </div>
                    </div>
                    <div>
                        <div class="small text-gray-500">12/10/2020</div>
                        <span class="font-weight-bold">Báo cáo hàng tháng sẵn sàng để tải xuống!</span>
                    </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                    <div class="mr-3">
                        <div class="icon-circle bg-success">
                            <i class="fas fa-donate text-white"></i>
                        </div>
                    </div>
                    <div>
                        <div class="small text-gray-500">07/10/2020</div>
                        $290.29 đã được gửi vào tài khoản của bạn!
                    </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                    <div class="mr-3">
                        <div class="icon-circle bg-warning">
                            <i class="fas fa-exclamation-triangle text-white"></i>
                        </div>
                    </div>
                    <div>
                        <div class="small text-gray-500">02/10/2020</div>
                        Cảnh báo chi tiêu: Chúng tôi đã nhận thấy chi tiêu cao bất thường ở tài khoản của bạn!
                    </div>
                </a>
                <a class="dropdown-item text-center small text-gray-500" href="#">Hiển thị tất cả thông báo</a>
            </div>
        </li>

        <!-- Nav Item - Messages -->
        <li class="nav-item dropdown no-arrow mx-1">
            <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button"
               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-envelope fa-fw"></i>
                <!-- Counter - Messages -->
                <span class="badge badge-danger badge-counter">7</span>
            </a>
            <!-- Dropdown - Messages -->
            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                 aria-labelledby="messagesDropdown">
                <h6 class="dropdown-header">
                    Trung tâm tin nhắn
                </h6>
                <a class="dropdown-item d-flex align-items-center" href="#">
                    <div class="dropdown-list-image mr-3">
                        <i class="rounded-circle far fa-user" style="font-size: 36px"></i>
                        <div class="status-indicator bg-success"></div>
                    </div>
                    <div class="font-weight-bold">
                        <div class="text-truncate">
                            Xin chào, tôi có một vài vấn đề, bạn có thể giúp tôi không?
                        </div>
                        <div class="small text-gray-500">Uyên Trần · 58m</div>
                    </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                    <div class="dropdown-list-image mr-3">
                        <i class="rounded-circle fas fa-user" style="font-size: 36px"></i>
                        <div class="status-indicator"></div>
                    </div>
                    <div>
                        <div class="text-truncate">Báo cáo doanh thu tháng 11...</div>
                        <div class="small text-gray-500">Mẫn Tôn · 1d</div>
                    </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                    <div class="dropdown-list-image mr-3">
                        <i class="rounded-circle far fa-user" style="font-size: 36px"></i>
                        <div class="status-indicator bg-warning"></div>
                    </div>
                    <div>
                        <div class="text-truncate">Báo cáo của tháng trước trông rất tuyệt, tôi rất vui với tiến độ cho đến nay, hãy tiếp tục công việc tốt!</div>
                        <div class="small text-gray-500">Thiên Anh · 2d</div>
                    </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                    <div class="dropdown-list-image mr-3">
                        <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60"
                             alt="">
                        <div class="status-indicator bg-success"></div>
                    </div>
                    <div>
                        <div class="text-truncate">Chúc một ngày tốt lành nhé!</div>
                        <div class="small text-gray-500">Tui là một bông hoa · 2w</div>
                    </div>
                </a>
                <a class="dropdown-item text-center small text-gray-500" href="#">Xem tất cả</a>
            </div>
        </li>

        <div class="topbar-divider d-none d-sm-block"></div>

        <!-- Nav Item - User Information -->
        <li class="nav-item dropdown no-arrow">
            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Uyên Trần</span>
                <img class="img-profile rounded-circle"
                     src="https://source.unsplash.com/Mv9hjnEUHR4/60x60" />
            </a>
            <!-- Dropdown - User Information -->
            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                 aria-labelledby="userDropdown">
                <a class="dropdown-item" href="profile.html">
                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                    Hồ sơ của bạn
                </a>
                <a class="dropdown-item" href="#">
                    <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                    Cài đặt
                </a>
                <a class="dropdown-item" href="#">
                    <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                    Nhật ký hoạt động
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="login.html" data-toggle="modal" data-target="#logoutModal">
                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                    Đăng xuất
                </a>
            </div>
        </li>
    </ul>
</nav>