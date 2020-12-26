<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thêm bài viết</title>
    </head>
    <body>
        <h1 class="h3 mb-2 font-weight-bold">Thêm bài viết</h1>

        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            <div class="card-body">
                <div class="row d-flex justify-content-around mt-3">
                    <div class="col col-md-6 flex-column">
                        <div class="form-inline d-flex justify-content-start mb-2">
                            <label for="tieuDe" class="justify-content-start add-product-label">
                                Tiêu đề bài viết:
                            </label>
                            <input class="form-control flex-grow-1" id="tieuDe" type="text" />
                        </div>

                        <div class="form-inline d-flex justify-content-start mb-2">
                            <label for="theloai" class="justify-content-start add-product-label">
                                Thể loại:
                            </label>

                            <form style="width: 200px;">
                                <select name="" id="theloai" class="form-control">
                                    <option value="tatca">Mẹo phối đồ</option>
                                    <option value="somi">Tin hot</option>
                                    <option value="aokhoac">Top 10</option>
                                    <option value="Flannel">Top 5</option>
                                    <option value="Áo khoác">Tin thời trang nam</option>
                                    <option value="Áo thun">Tin thời trang nữ</option>
                                </select>
                            </form>
                        </div>

                        <div class="form-inline d-flex justify-content-start mb-2">
                            <label for="moTa" class="justify-content-start add-product-label">
                                Mô tả:
                            </label>
                            <textarea class="form-control flex-grow-1 h-100" rows="4" id="moTa" type="text">thầy nói ở đây nên là một cái editor</textarea>
                        </div>

                        <div class="form-inline d-flex justify-content-start mb-2">
                            <label for="dateadd" class="justify-content-start add-product-label">
                                Ngày viết bài:
                            </label>
                            <input class="form-control flex-grow-1" id="dateadd" type="text" />
                        </div>

                        <div class="form-group form-inline">
                            <label for="category-img"  class="justify-content-start add-product-label">
                                Chọn hình ảnh:
                            </label>
                            <input type="file" class="" id="category-img">
                        </div>
                        <div class="form-group form-inline">
                            <label for="category-img"  class="justify-content-start add-product-label">
                                Chọn media:
                            </label>
                            <input type="file" class="" id="category-video">
                        </div>
                        <button class="btn col-md-3 mr-auto ml-auto btn-ms-primary float-right">
                            Tạo
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>