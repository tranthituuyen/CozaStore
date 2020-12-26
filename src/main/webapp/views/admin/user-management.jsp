<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thống kê - Quản lý người dùng</title>
    </head>
    <body>

        <!-- Page Heading -->
        <h1 class="h3 mb-2 text-gray-800">Danh mục người dùng</h1>

        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th style="text-align: center">STT</th>
                                <th style="text-align: center">Mã người dùng</th>
                                <th style="text-align: center">Họ và tên</th>
                                <th style="text-align: center">email</th>
                                <th style="text-align: center">username</th>
                                <th style="text-align: center">password</th>
                                <th style="text-align: center">#</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="vertical-align: middle">001</td>
                                <td style="vertical-align: middle">
                                    20201111
                                </td>
                                <td style="vertical-align: middle">
                                    Hoàng văn Khoa
                                </td>
                                <td style="vertical-align: middle">@gmail.com</td>
                                <td>vankhoa1234</td>
                                <td>***********</td>
                                <!-- các btn thêm xóa sửa -->
                                <td style="vertical-align: middle">
                                    <button class="border-0" onclick="window.location.href='edit-category.html'"
                                            style="background-color: #1b93e1; width: 24px; height: 24px; border-radius: 3px">
                                        <i class="fas fa-pencil-alt " style="font-size: 15px;color: whitesmoke"></i>
                                    </button>
                                    <button class="border-0" data-toggle="modal" data-target="#delete-modal"
                                            style="background-color: #ff253a; width: 24px; height: 24px; border-radius: 3px">
                                        <i class="fas fa-trash-alt mr-0 ml-0" style="font-size: 15px;color: whitesmoke"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td style="vertical-align: middle">002</td>
                                <td style="vertical-align: middle">
                                    20208574
                                </td>
                                <td style="vertical-align: middle">
                                    Bùi Viện
                                </td>
                                <td style="vertical-align: middle">Buivien1224@gmail.com</td>
                                <td>Vienvien1234</td>
                                <td>***********</td>
                                <!-- các btn thêm xóa sửa -->
                                <td style="vertical-align: middle">
                                    <button class="border-0" onclick="window.location.href='edit-category.html'"
                                            style="background-color: #1b93e1; width: 24px; height: 24px; border-radius: 3px">
                                        <i class="fas fa-pencil-alt " style="font-size: 15px;color: whitesmoke"></i>
                                    </button>
                                    <button class="border-0" data-toggle="modal" data-target="#delete-modal"
                                            style="background-color: #ff253a; width: 24px; height: 24px; border-radius: 3px">
                                        <i class="fas fa-trash-alt mr-0 ml-0" style="font-size: 15px;color: whitesmoke"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td style="vertical-align: middle">003</td>
                                <td style="vertical-align: middle">
                                    20209173
                                </td>
                                <td style="vertical-align: middle">
                                    Nguyễn Viết Lâm
                                </td>
                                <td style="vertical-align: middle">VietLam99@gmail.com</td>
                                <td>Vietlam9090</td>
                                <td>***********</td>
                                <!-- các btn thêm xóa sửa -->
                                <td style="vertical-align: middle">
                                    <button class="border-0" onclick="window.location.href='edit-category.html'"
                                            style="background-color: #1b93e1; width: 24px; height: 24px; border-radius: 3px">
                                        <i class="fas fa-pencil-alt " style="font-size: 15px;color: whitesmoke"></i>
                                    </button>
                                    <button class="border-0" data-toggle="modal" data-target="#delete-modal"
                                            style="background-color: #ff253a; width: 24px; height: 24px; border-radius: 3px">
                                        <i class="fas fa-trash-alt mr-0 ml-0" style="font-size: 15px;color: whitesmoke"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td style="vertical-align: middle">004</td>
                                <td style="vertical-align: middle">
                                    20207263
                                </td>
                                <td style="vertical-align: middle">
                                    Sinh Hoàng Bảo
                                </td>
                                <td style="vertical-align: middle">st.hoangbao12@gmail.com</td>
                                <td>hoangbao8786</td>
                                <td>***********</td>
                                <!-- các btn thêm xóa sửa -->
                                <td style="vertical-align: middle">
                                    <button class="border-0" onclick="window.location.href='edit-category.html'"
                                            style="background-color: #1b93e1; width: 24px; height: 24px; border-radius: 3px">
                                        <i class="fas fa-pencil-alt " style="font-size: 15px;color: whitesmoke"></i>
                                    </button>
                                    <button class="border-0" data-toggle="modal" data-target="#delete-modal"
                                            style="background-color: #ff253a; width: 24px; height: 24px; border-radius: 3px">
                                        <i class="fas fa-trash-alt mr-0 ml-0" style="font-size: 15px;color: whitesmoke"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td style="vertical-align: middle">005</td>
                                <td style="vertical-align: middle">
                                    20208611
                                </td>
                                <td style="vertical-align: middle">
                                    Phong Nha
                                </td>
                                <td style="vertical-align: middle">nhanha909@gmail.com</td>
                                <td>nhanhak0k</td>
                                <td>***********</td>
                                <!-- các btn thêm xóa sửa -->
                                <td style="vertical-align: middle">
                                    <button class="border-0" onclick="window.location.href='edit-category.html'"
                                            style="background-color: #1b93e1; width: 24px; height: 24px; border-radius: 3px">
                                        <i class="fas fa-pencil-alt " style="font-size: 15px;color: whitesmoke"></i>
                                    </button>
                                    <button class="border-0" data-toggle="modal" data-target="#delete-modal"
                                            style="background-color: #ff253a; width: 24px; height: 24px; border-radius: 3px">
                                        <i class="fas fa-trash-alt mr-0 ml-0" style="font-size: 15px;color: whitesmoke"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td style="vertical-align: middle">006</td>
                                <td style="vertical-align: middle">
                                    20200585
                                </td>
                                <td style="vertical-align: middle">
                                    Vũ Sĩ Hư
                                </td>
                                <td style="vertical-align: middle">SiHuHupass@gmail.com</td>
                                <td>Huhuhu12</td>
                                <td>***********</td>
                                <!-- các btn thêm xóa sửa -->
                                <td style="vertical-align: middle">
                                    <button class="border-0" onclick="window.location.href='edit-category.html'"
                                            style="background-color: #1b93e1; width: 24px; height: 24px; border-radius: 3px">
                                        <i class="fas fa-pencil-alt " style="font-size: 15px;color: whitesmoke"></i>
                                    </button>
                                    <button class="border-0" data-toggle="modal" data-target="#delete-modal"
                                            style="background-color: #ff253a; width: 24px; height: 24px; border-radius: 3px">
                                        <i class="fas fa-trash-alt mr-0 ml-0" style="font-size: 15px;color: whitesmoke"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td style="vertical-align: middle">007</td>
                                <td style="vertical-align: middle">
                                    20207263
                                </td>
                                <td style="vertical-align: middle">
                                    Đông xích Vũ
                                </td>
                                <td style="vertical-align: middle">XichVuVu1@gmail.com</td>
                                <td>Vualoalo12</td>
                                <td>***********</td>
                                <!-- các btn thêm xóa sửa -->
                                <td style="vertical-align: middle">
                                    <button class="border-0" onclick="window.location.href='edit-category.html'"
                                            style="background-color: #1b93e1; width: 24px; height: 24px; border-radius: 3px">
                                        <i class="fas fa-pencil-alt " style="font-size: 15px;color: whitesmoke"></i>
                                    </button>
                                    <button class="border-0" data-toggle="modal" data-target="#delete-modal"
                                            style="background-color: #ff253a; width: 24px; height: 24px; border-radius: 3px">
                                        <i class="fas fa-trash-alt mr-0 ml-0" style="font-size: 15px;color: whitesmoke"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td style="vertical-align: middle">008</td>
                                <td style="vertical-align: middle">
                                    20207383
                                </td>
                                <td style="vertical-align: middle">
                                    Hoài Dư
                                </td>
                                <td style="vertical-align: middle">Du09909@gmail.com</td>
                                <td>Du00000</td>
                                <td>***********</td>
                                <!-- các btn thêm xóa sửa -->
                                <td style="vertical-align: middle">
                                    <button class="border-0" onclick="window.location.href='edit-category.html'"
                                            style="background-color: #1b93e1; width: 24px; height: 24px; border-radius: 3px">
                                        <i class="fas fa-pencil-alt " style="font-size: 15px;color: whitesmoke"></i>
                                    </button>
                                    <button class="border-0" data-toggle="modal" data-target="#delete-modal"
                                            style="background-color: #ff253a; width: 24px; height: 24px; border-radius: 3px">
                                        <i class="fas fa-trash-alt mr-0 ml-0" style="font-size: 15px;color: whitesmoke"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td style="vertical-align: middle">009</td>
                                <td style="vertical-align: middle">
                                    20209918
                                </td>
                                <td style="vertical-align: middle">
                                    Đông Kinh
                                </td>
                                <td style="vertical-align: middle">KinhDong00@gmail.com</td>
                                <td>dongdong98</td>
                                <td>***********</td>
                                <!-- các btn thêm xóa sửa -->
                                <td style="vertical-align: middle">
                                    <button class="border-0" onclick="window.location.href='edit-category.html'"
                                            style="background-color: #1b93e1; width: 24px; height: 24px; border-radius: 3px">
                                        <i class="fas fa-pencil-alt " style="font-size: 15px;color: whitesmoke"></i>
                                    </button>
                                    <button class="border-0" data-toggle="modal" data-target="#delete-modal"
                                            style="background-color: #ff253a; width: 24px; height: 24px; border-radius: 3px">
                                        <i class="fas fa-trash-alt mr-0 ml-0" style="font-size: 15px;color: whitesmoke"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td style="vertical-align: middle">010</td>
                                <td style="vertical-align: middle">
                                    20208171
                                </td>
                                <td style="vertical-align: middle">
                                    Tôn Song Bá
                                </td>
                                <td style="vertical-align: middle">Ba.st124@gmail.com</td>
                                <td>BaBakaka</td>
                                <td>***********</td>
                                <!-- các btn thêm xóa sửa -->
                                <td style="vertical-align: middle">
                                    <button class="border-0" onclick="window.location.href='edit-category.html'"
                                            style="background-color: #1b93e1; width: 24px; height: 24px; border-radius: 3px">
                                        <i class="fas fa-pencil-alt " style="font-size: 15px;color: whitesmoke"></i>
                                    </button>
                                    <button class="border-0" data-toggle="modal" data-target="#delete-modal"
                                            style="background-color: #ff253a; width: 24px; height: 24px; border-radius: 3px">
                                        <i class="fas fa-trash-alt mr-0 ml-0" style="font-size: 15px;color: whitesmoke"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td style="vertical-align: middle">011</td>
                                <td style="vertical-align: middle">
                                    20201817
                                </td>
                                <td style="vertical-align: middle">
                                    Khắc Học Sĩ
                                </td>
                                <td style="vertical-align: middle">SiKhiGio99@gmail.com</td>
                                <td>giogio3232</td>
                                <td>***********</td>
                                <!-- các btn thêm xóa sửa -->
                                <td style="vertical-align: middle">
                                    <button class="border-0" onclick="window.location.href='edit-category.html'"
                                            style="background-color: #1b93e1; width: 24px; height: 24px; border-radius: 3px">
                                        <i class="fas fa-pencil-alt " style="font-size: 15px;color: whitesmoke"></i>
                                    </button>
                                    <button class="border-0" data-toggle="modal" data-target="#delete-modal"
                                            style="background-color: #ff253a; width: 24px; height: 24px; border-radius: 3px">
                                        <i class="fas fa-trash-alt mr-0 ml-0" style="font-size: 15px;color: whitesmoke"></i>
                                    </button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>

            <!-- phân trang -->
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">
                    <ul class="pagination justify-content-end">
                        <li class="page-item"><a class="page-link" href="#">Trước</a></li>
                        <li class="page-item active"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item"><a class="page-link" href="#">4</a></li>
                        <li class="page-item"><a class="page-link" href="#">5</a></li>
                        <li class="page-item"><a class="page-link" href="#">Sau</a></li>
                    </ul>
                </h6>
            </div>
        </div>
    </body>
</html>