<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thêm sản phẩm</title>
    </head>

    <body id="page-top">
        <!-- Page Heading -->
        <div class="mb-2">
            <a href="<c:url value="/admin-quan-ly-san-pham" />" class="user-select-none text-decoration-none">
                <i class="fas fa-angle-left"></i>
                Quay lại
            </a>
        </div>

        <!-- DataTales Example -->
        <div class="card shadow-sm px-0 mb-4">
            <div class="px-0 card-header d-flex justify-content-center">
                <h5 class="text-primary font-weight-bold mb-0">Thông tin sản phẩm</h5>
            </div>

            <div class="card-body d-flex justify-content-around">
                <div class="col-md-6 flex-grow-1">
                    <div class="form-inline mb-2">
                        <label for="maSanPham" class="justify-content-start add-product-label">Mã sản phẩm:</label>
                        <input class="form-control flex-grow-1" id="maSanPham" type="text" />
                    </div>

                    <div class="form-inline mb-2">
                        <label for="maSKU" class="justify-content-start add-product-label">Mã SKU</label>
                        <input class="form-control flex-grow-1" id="maSKU" type="text" />
                    </div>

                    <div class="form-inline mb-2">
                        <label for="tenSanPham" class="justify-content-start add-product-label">Tên sản phẩm:</label>
                        <input class="form-control flex-grow-1" id="tenSanPham" type="text" />
                    </div>

                    <div class="form-inline mb-2">
                        <label for="gia" class="justify-content-start add-product-label">Giá:</label>
                        <input class="form-control flex-grow-1" id="gia" type="text" />
                    </div>
                </div>

                <div class="col-md-5 flex-grow-1">
                    <div class="form-inline mb-2">
                        <label for="danhMuc" class="justify-content-start add-product-label">Danh mục:</label>
                        <select class="form-control flex-grow-1" name="danhMuc" id="danhMuc">
                            <option value="Sơ mi">Sơ mi</option>
                            <option value="Áo khoác">Áo khoác</option>
                            <option value="Áo thun">Áo thun</option>
                        </select>
                    </div>

                    <div class="form-inline mb-2">
                        <label for="phanLoai" class="justify-content-start add-product-label">Phân loại:</label>
                        <select class="form-control flex-grow-1" name="danhMuc" id="phanLoai">
                            <option value="1">Sơ mi tay ngắn</option>
                            <option value="2">Sơ mi tay dài</option>
                            <option value="3">Sơ mi họa tiết</option>
                            <option value="4">Sơ mi kẻ sọc</option>
                        </select>
                    </div>

                    <div class="form-inline mb-3">
                        <label for="moTa" class="justify-content-start add-product-label">Mô tả:</label>
                        <textarea class="form-control flex-grow-1" rows="4" id="moTa" type="text"></textarea>
                    </div>

                    <button class="btn btn-ms-primary ml-auto btn-add-product float-right">Tạo</button>
                </div>
            </div>
        </div>

        <div class="card shadow-sm px-0 mb-4">
            <div class="px-0 card-header d-flex justify-content-center">
                <h5 class="text-primary font-weight-bold mb-0">Chi tiết sản phẩm</h5>
            </div>

            <div class="card-body d-flex justify-content-around">
                <div class="col-md-6">
                    <div class="form-inline mb-2">
                        <label for="maSanPhamDetail" class="justify-content-start add-product-label">Mã sản phẩm:</label>
                        <input class="form-control flex-grow-1" id="maSanPhamDetail" type="text" />
                    </div>

                    <div class="form-inline mb-2">
                        <label for="size" class="justify-content-start add-product-label">Size:</label>
                        <select class="form-control flex-grow-1" name="size" id="size">
                            <option value="S">S</option>
                            <option value="M">M</option>
                            <option value="L">L</option>
                            <option value="XL">XL</option>
                        </select>
                    </div>

                    <div class="form-inline mb-2">
                        <label for="mau" class="justify-content-start add-product-label">Màu:</label>
                        <select class="form-control flex-grow-1" name="mau" id="mau">
                            <option value="Đen">Đen</option>
                            <option value="Trắng">Trắng</option>
                            <option value="Xanh dương">Xanh dương</option>
                            <option value="Xanh lá">Xanh lá</option>
                        </select>
                    </div>

                    <div class="form-inline mb-3">
                        <label for="product-imgs" class="justify-content-start add-product-label">Hình ảnh sản phẩm:</label>
                        <div class="form-group mb-2 d-flex justify-content-between">
                            <input class="d-none" type="file" id="product-imgs">
                            <label for="product-imgs">
                                <a class="btn btn-sm btn-outline-primary">
                                    <i class="fas fa-upload"></i>Tải ảnh lên
                                </a>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col-md-5">
                    <div class="form-inline mb-2">
                        <label for="soLuong" class="justify-content-start add-product-label">Số lượng:</label>
                        <input class="form-control flex-grow-1" id="soLuong" type="text" />
                    </div>

                    <div class="form-inline mb-2">
                        <label for="danhcho" class="justify-content-start add-product-label">Dành cho:</label>
                        <select class="form-control flex-grow-1" name="danhcho" id="danhcho">
                            <option value="Nam">Nam</option>
                            <option value="Nữ">Nữ</option>
                            <option value="Unisex">Unisex</option>
                        </select>
                    </div>

                    <div class="form-inline mb-2">
                        <label for="ngayNhap" class="justify-content-start add-product-label">Ngày nhập:</label>
                        <input class="form-control flex-grow-1" id="ngayNhap" type="date" />
                    </div>

                    <button class="btn btn-ms-primary ml-auto btn-add-product-detail float-right">Tạo</button>
                </div>
            </div>
        </div>
    </body>
</html>