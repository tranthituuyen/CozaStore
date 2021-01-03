<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thống kê</title>
    </head>

    <body>
        <!-- Page Heading -->
        <div class="d-sm-flex align-items-center justify-content-between mb-4 userModel-select-none">
            <h1 class="h3 mb-0 font-weight-bold">Thống kê</h1>
            <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
                <i class="fas fa-download fa-sm text-white-50"></i> Xuất báo cáo
            </a>
        </div>

        <!-- Content Row -->
        <div class="row">
            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4 userModel-select-none">
                <div class="card border-left-primary shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                    Thu nhập (hàng tháng)
                                </div>
                                <div class="h5 mb-0 font-weight-bold text-gray-800">
                                    32.000.000đ
                                </div>
                            </div>
                            <div class="col-auto">
                                <i class="fas fa-calendar fa-2x text-gray-300"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-success shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                    Thu nhập (hàng năm)
                                </div>
                                <div class="h5 mb-0 font-weight-bold text-gray-800">
                                    512.000.000đ
                                </div>
                            </div>
                            <div class="col-auto">
                                <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-info shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-info text-uppercase mb-1">
                                    Chỉ tiêu
                                </div>
                                <div class="row no-gutters align-items-center">
                                    <div class="col-auto">
                                        <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">
                                            72%
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="progress progress-sm mr-2">
                                            <div class="progress-bar bg-info" role="progressbar"
                                                 style="width: 72%" aria-valuenow="50" aria-valuemin="0"
                                                 aria-valuemax="100"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-auto">
                                <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Pending Requests Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-warning shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                    Đơn hàng mới
                                </div>
                                <div class="h5 mb-0 font-weight-bold text-gray-800">
                                    18
                                </div>
                            </div>
                            <div class="col-auto">
                                <i class="fas fa-comments fa-2x text-gray-300"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Content Row -->
        <div class="row">
            <!-- Area Chart -->
            <div class="col-xl-12 col-lg-12">
                <div class="card shadow mb-4">
                    <!-- Card Header - Dropdown -->
                    <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                        <h6 class="m-0 font-weight-bold text-primary">Tổng quan thu nhập (triệu VND)</h6>
                        <div class="dropdown no-arrow">
                            <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
                                 aria-labelledby="dropdownMenuLink">
                                <div class="dropdown-header">Tùy chọn</div>
                                <a class="dropdown-item" href="#">In báo cáo</a>
                                <a class="dropdown-item" href="#">Đến ngày</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">Làm mới</a>
                            </div>
                        </div>
                    </div>

                    <!-- Card Body -->
                    <div class="card-body">
                        <div class="chart-area">
                            <canvas id="myAreaChart"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Content Row -->
        <div class="row">

            <!-- Content Column -->
            <div class="col-lg-12 mb-4">

                <!-- Project Card Example -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Chỉ tiêu tháng 11</h6>
                    </div>

                    <div class="card-body">
                        <h4 class="small font-weight-bold">Tổng doanh thu
                            <span class="float-right">72%</span>
                        </h4>
                        <div class="progress mb-4">
                            <div class="progress-bar bg-gradient-secondary" role="progressbar" style="width: 72%"
                                 aria-valuenow="72" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                        <h4 class="small font-weight-bold">Thời trang nam
                            <span class="float-right">20%</span>
                        </h4>
                        <div class="progress mb-4">
                            <div class="progress-bar bg-gradient-danger" role="progressbar" style="width: 20%"
                                 aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                        <h4 class="small font-weight-bold">Thời trang nữ <span
                                class="float-right">66%</span></h4>
                        <div class="progress mb-4">
                            <div class="progress-bar bg-gradient-warning" role="progressbar" style="width: 66%"
                                 aria-valuenow="66" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                        <h4 class="small font-weight-bold">Balo <span
                                class="float-right">85%</span></h4>
                        <div class="progress mb-4">
                            <div class="progress-bar bg-gradient-primary" role="progressbar" style="width: 85%"
                                 aria-valuenow="85" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                        <h4 class="small font-weight-bold">Giày <span
                                class="float-right">Hoàn thành!</span></h4>
                        <div class="progress">
                            <div class="progress-bar bg-gradient-success" role="progressbar" style="width: 100%"
                                 aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                    </div>
                </div>

                <!-- Color System -->
                <div class="card">
                    <div class="card-body">
                        <h6 class="m-0 font-weight-bold text-primary mb-2">Chú thích:</h6>
                        <div>
                            <div class="row">
                                <div class="col-lg-3">
                                    <div class="card bg-gradient-success text-white shadow d-flex flex-row align-items-center">
                                        <div class="card-body">
                                            Xuất sắc
                                        </div>
                                        <div class="text-white-50 small mr-4"> > 90%</div>
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="card bg-gradient-primary text-white shadow d-flex flex-row align-items-center">
                                        <div class="card-body">
                                            Tốt
                                        </div>
                                        <div class="text-white-50 small mr-4"> > 80%</div>
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="card bg-gradient-warning text-white shadow d-flex flex-row align-items-center">
                                        <div class="card-body">
                                            Khá
                                        </div>
                                        <div class="text-white-50 small mr-4"> > 65%</div>
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="card bg-gradient-danger text-white shadow d-flex flex-row align-items-center">
                                        <div class="card-body">
                                            Tệ
                                        </div>
                                        <div class="text-white-50 small mr-4"> < 50%</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
