<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Thêm nhân viên</title>
</head>

    <body>
        <!-- Page Heading -->
        <h1 class="h3 mb-2 text-gray-800">Thêm nhân viên</h1>

        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            <div class="card-body">
                <div class="row d-flex justify-content-around mt-3">
                    <div class="col col-md-6 flex-grow-1">
                        <div class="form-inline d-flex justify-content-start mb-2">
                            <label for="idTaiKhoan" class="justify-content-start add-product-label">
                                ID tài khoản:
                            </label>
                            <input class="form-control flex-grow-1" id="idTaiKhoan" type="text" />
                        </div>

                        <div class="form-inline d-flex justify-content-start mb-2">
                            <label for="idNhanVien" class="justify-content-start add-product-label">
                                ID nhân viên:
                            </label>
                            <input class="form-control flex-grow-1" id="idNhanVien" type="text" />
                        </div>

                        <div class="form-inline d-flex justify-content-start mb-2">
                            <label for="hoTen" class="justify-content-start add-product-label">
                                Họ tên:
                            </label>
                            <input class="form-control flex-grow-1" id="hoTen" type="text" />
                        </div>

                        <div class="form-inline d-flex justify-content-start mb-2">
                            <label for="gioitinh" class="justify-content-start add-product-label">
                                Giới tính:
                            </label>
                            <select class="form-control flex-grow-1" name="gioitinh" id="gioitinh">
                                <option value="nam">Nam</option>
                                <option value="nu">Nữ</option>
                                <option value="khac">Khác</option>
                            </select>
                        </div>

                        <div class="form-inline d-flex justify-content-start mb-2">
                            <label for="ngaySinh" class="justify-content-start add-product-label">
                                Ngày sinh:
                            </label>
                            <input class="form-control flex-grow-1" id="ngaySinh" type="date" />
                        </div>

                        <div class="form-inline d-flex justify-content-start mb-2">
                            <label for="diaChi" class="justify-content-start add-product-label">
                                Địa chỉ:
                            </label>
                            <input class="form-control flex-grow-1" id="diaChi" type="text" />
                        </div>
                    </div>

                    <div class="col col-md-6 flex-grow-1">
                        <div class="form-inline d-flex justify-content-start mb-2">
                            <label for="tenDangNhap" class="justify-content-start add-product-label">
                                Tên đăng nhập:
                            </label>
                            <input class="form-control flex-grow-1" id="tenDangNhap" type="text" />
                        </div>

                        <div class="form-inline d-flex justify-content-start mb-2">
                            <label for="gmail" class="justify-content-start add-product-label">
                                Gmail:
                            </label>
                            <input class="form-control flex-grow-1" id="gmail" type="text" />
                        </div>

                        <div class="form-inline d-flex justify-content-start mb-2">
                            <label for="matKhau" class="justify-content-start add-product-label">
                                Mật khẩu:
                            </label>
                            <input class="form-control flex-grow-1" id="matKhau" type="text" />
                        </div>

                        <div class="form-inline d-flex justify-content-start mb-2">
                            <label for="role" class="justify-content-start add-product-label">
                                Role:
                            </label>
                            <div class="d-flex flex-grow-1 justify-content-between">
                                <select class="d-block form-control" name="role" id="role">
                                    <option value="nhân viên">Nhân viên</option>
                                    <option value="admin">Admin</option>
                                </select>

                                <div class="form-inline">
                                    <label for="vitri" class="justify-content-start">
                                        Vị trí:
                                    </label>
                                    <select class="form-control ml-4" name="vitri" id="vitri">
                                        <option value="thu ngân">Thu ngân</option>
                                        <option value="sale">Sale</option>
                                        <option value="kho">Nhân viên kho</option>
                                        <option value="bảo vệ">Bảo vệ</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="form-inline d-flex justify-content-start mb-2">
                            <label for="luong" class="justify-content-start add-product-label">
                                Lương:
                            </label>
                            <input class="form-control flex-grow-1" id="luong" type="text" />
                        </div>

                        <div class="form-inline d-flex justify-content-start mb-2">
                            <label for="ngayvaolam" class="justify-content-start add-product-label">
                                Ngày vào làm:
                            </label>
                            <input class="form-control flex-grow-1" id="ngayvaolam" type="date" />
                        </div>

                        <button class="btn col-md-3 mr-auto ml-auto btn-ms-primary float-right btn-add-employee">
                            Tạo
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>