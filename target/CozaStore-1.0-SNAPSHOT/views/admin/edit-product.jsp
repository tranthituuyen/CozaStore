<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thông tin sản phẩm</title>
    </head>

    <body>
        <!-- Page Heading -->
        <h1 class="h3 mb-2 text-gray-800">Sơ mi tay ngắn vàng</h1>

        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            <div class="card-body">
                <div class="row mt-3">
                    <div class="col col-md-6 flex-grow-1">
                        <div class="form-inline mb-2">
                            <label for="maSanPham" class="d-block edit-product-label">Mã sản phẩm:</label>
                            <input class="form-control flex-grow-1" id="maSanPham" type="text" value="SMN0047"/>
                        </div>

                        <div class="form-inline mb-2">
                            <label for="maSKU" class="d-block edit-product-label">Mã SKU:</label>
                            <input class="form-control flex-grow-1" id="maSKU" type="text" value="SMN0047SSVA"/>
                        </div>

                        <div class="form-inline mb-2">
                            <label for="tenSanPham" class="d-block edit-product-label">Tên sản phẩm:</label>
                            <input class="form-control flex-grow-1" id="tenSanPham" type="text" value="Sơ mi tay ngắn vàng"/>
                        </div>

                        <div class="form-inline mb-2">
                            <label for="gia" class="d-block edit-product-label">Giá:</label>
                            <input class="form-control flex-grow-1" id="gia" type="text" value="220000"/>
                        </div>

                        <div class="form-inline mb-2">
                            <label for="moTa" class="d-block edit-product-label"></label>
                            <textarea class="form-control flex-grow-1" rows="4" id="moTa" type="text">Sơ mi tay ngắn luôn sang trọng, thoải mái. Chất vải thoáng mát và ít nhăn, thấm hút cực tốt.</textarea>
                        </div>
                    </div>

                    <div class="col col-md-6 flex-grow-1">
                        <div class="form-inline mb-2">
                            <label for="danhMuc" class="d-block edit-product-label">Danh mục:</label>
                            <select class="form-control flex-grow-1" name="danhMuc" id="danhMuc">
                                <option value="Sơ mi" selected>Sơ mi</option>
                                <option value="Áo khoác">Áo khoác</option>
                                <option value="Áo thun">Áo thun</option>
                            </select>
                        </div>

                        <div class="form-inline mb-2">
                            <label for="phanLoai" class="d-block edit-product-label">Phân loại:</label>
                            <select class="form-control flex-grow-1" name="phanLoai" id="phanLoai">
                                <option value="Sơ mi" selected>Sơ mi tay ngắn</option>
                                <option value="Áo khoác">Sơ mi tay dài</option>
                            </select>
                        </div>

                        <div class="form-inline mb-2">
                            <label for="size" class="d-block edit-product-label">Size:</label>
                            <select class="form-control flex-grow-1" name="size" id="size">
                                <option value="S" selected>S</option>
                                <option value="M">M</option>
                                <option value="L">L</option>
                                <option value="XL">XL</option>
                            </select>
                        </div>

                        <div class="form-inline mb-2">
                            <label for="mau" class="d-block edit-product-label">Màu:</label>
                            <select class="form-control flex-grow-1" name="mau" id="mau">
                                <option value="Đen">Đen</option>
                                <option value="Trắng">Trắng</option>
                                <option value="Xanh dương">Xanh dương</option>
                                <option value="Vàng" selected>Vàng</option>
                                <option value="Xanh lá">Xanh lá</option>
                            </select>
                        </div>

                        <button class="btn col-md-3 btn-ms-primary float-right" id="btn-save-change">
                            Lưu thay đổi
                        </button> <br /> <br /> <br />
                    </div>
                </div>

                <div class="row mt-2">
                    <div class="col col-md-12 mb-4">
                        <hr class="sidebar-divider mx-auto">
                        <div class="d-flex flex-column">
                            <div class="form-inline col-md-6">
                                <label class="mb-0 edit-product-label">Hình ảnh sản phẩm:
                                </label>
                                <input class="form-control d-none" type="file" id="add-product-img">
                                <label for="add-product-img">
                                    <a class="text-decoration-none">
                                        <i class="fas fa-upload"></i>
                                        Tải ảnh lên
                                    </a>
                                </label>
                                <button class="ml-auto btn btn-sm btn-ms-primary btnEditAddProductImg">Thêm</button>
                            </div>
                            <button class="ml-auto col-1 btn btn-sm btn-outline-danger userModel-select-none btnDeleteProductImg">
                                <i class="fas fa-minus-circle"></i>
                                Xóa
                            </button>
                            <div class="card mt-2">
                                <img src="<c:url value="/images/products/smkt-vang.jpg" />" alt="sơ mi tay ngắn vàng">
                            </div>
                        </div>
                    </div>

                    <div class="col col-md-12 mb-4">
                        <div class="d-flex flex-column">
                            <button class="ml-auto col-1 btn btn-sm btn-outline-danger userModel-select-none btnDeleteProductImg">
                                <i class="fas fa-minus-circle"></i>
                                Xóa
                            </button>
                            <div class="card mt-2">
                                <img src="<c:url value="/images/products/smkt-vang-2.jpg" />" alt="sơ mi tay ngắn vàng 2">
                            </div>
                        </div>
                    </div>
                    <div class="col col-md-12">
                        <div class="d-flex flex-column">
                            <button class="ml-auto col-1 btn btn-sm btn-outline-danger userModel-select-none btnDeleteProductImg">
                                <i class="fas fa-minus-circle"></i>
                                Xóa
                            </button>
                            <div class="card mt-2">
                                <img src="<c:url value="/images/products/smkt-vang-3.jpg" />" alt="sơ mi tay ngắn vàng 3">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>