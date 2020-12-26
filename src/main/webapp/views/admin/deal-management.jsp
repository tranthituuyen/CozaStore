<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lý giao dịch</title>
        
        <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
        <%--
        <style>
            th, td {
                text-align: center;
                vertical-align:center;
            }

            ul li.pagination {
                display: block;
                min-width: 40px;
                padding: 5px;
                text-align: center;
            }

            li.pagination.active {
                background-color: rgba(78, 115, 223,0.1);
            }
            .itemcard{
                float: left;
                margin-left: 20px;
            }
            .card-body-top{
                height: 140px;
            }
            .card-body-bottom{
                float: right;
            }
            .small{
                margin-top: 2px;
            }
            .card-item{
                float: left;
                margin-left: 10px;
                width: 200px;
            }
        </style>
        --%>
    </head>

    <body>
        <div class="card">
            <div class="card-header py-3" >
                <!-- card heading -->
                <h1 class="h3 mb-2 text-gray-800">Lọc</h1>
            </div>
            <div class="card-body">
                <div id="card-body-top" style="height: 200px;margin-bottom: 10px">
                    <div class="card-item" >
                        <div class="card-header">
                            <p class=" mb-2 ">Tìm kiếm theo</p>
                        </div>
                        <div class="card-body">
                            <input type="text" class="form-control bg-gray-100 border-1 small" placeholder="Theo mã hóa đơn">
                            <input type="text" class="form-control bg-gray-100 border-1 small" placeholder="Theo mã, tên hàng">
                            <input type="text" class="form-control bg-gray-100 border-1 small" placeholder="mã vận đơn">
                        </div>
                    </div>
                    <div class="card-item" >
                        <div class="card-header">
                            <p class=" mb-2 ">Thời gian</p>
                        </div>
                        <div class="card-body">
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                                <label class="form-check-label" for="exampleRadios1">
                                    Toàn thời gian
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios2" value="option2">
                                <label class="form-check-label" for="exampleRadios2">
                                    Lựa chọn khác
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="card-item">
                        <div class="card-header">
                            <p class=" mb-2 ">Trạng thái</p>
                        </div>
                        <div class="card-body">
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1">
                                <label class="form-check-label" for="inlineCheckbox1">Đang giao hàng</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option1">
                                <label class="form-check-label" for="inlineCheckbox2">Chưa giao hàng</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option1">
                                <label class="form-check-label" for="inlineCheckbox3">Hoàn thành</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="checkbox" id="inlineCheckbox4" value="option1">
                                <label class="form-check-label" for="inlineCheckbox4">Không giao được</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="checkbox" id="inlineCheckbox5" value="option1">
                                <label class="form-check-label" for="inlineCheckbox5">Đã hủy</label>
                            </div>

                        </div>
                    </div>
                    <div class="card-item" style="width: 210px">
                        <div class="card-header">
                            <p class=" mb-2 ">Chọn đối tác giao hàng</p>
                        </div>
                        <div class="card-body">
                            <form action="" style="width: 150px;">
                                <select name="" id="select-delivery-category" style="width: 170px">
                                    <option value="tatca">Tất cả</option>
                                    <option value="grab">grab</option>
                                    <option value="shopee">Shopee</option>
                                    <option value="Tiki">Tiki</option>
                                    <option value="Lazada">Lazada</option>
                                    <option value="Fast-Delivery">Fast-Delivery</option>
                                </select>
                            </form>
                        </div>
                    </div>
                    <div class="card-item" style="width: 210px">
                        <div class="card-header">
                            <p class=" mb-2 ">Chọn chi nhánh</p>
                        </div>
                        <div class="card-body">
                            <form action="" style="width: 150px;">
                                <select name="" id="select-state-category" style="width: 170px">
                                    <option value="tatca">Tất cả</option>
                                    <option value="HCM">Hồ Chí Minh</option>
                                    <option value="Binhphuoc">Bình Phước</option>
                                    <option value="Camau">Cà mau</option>
                                    <option value="Hanoi">Hà Nội</option>
                                    <option value="Danang">Đà Nẵng</option>
                                </select>
                            </form>
                        </div>
                    </div>
                </div>
                <div id="card-body-bottom" style="height: 20px">
                    <button class="btn btn-primary" type="button" style="float: right">
                        <i class="fas fa-search fa-sm"></i>
                    </button>
                </div>
            </div>
        </div>
        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <!-- card heading  -->
                <h1 class="h3 mb-2 text-gray-800">Hóa đơn</h1>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th style="text-align: center">Mã hóa đơn</th>
                                <th style="text-align: center">Thời gian</th>
                                <th style="text-align: center">khách hàng</th>
                                <th style="text-align: center">Tổng tiền hàng</th>
                                <th style="text-align: center">giảm giá</th>
                                <th style="text-align: center">Tổng sau giảm giá</th>
                                <th style="text-align: center">#</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="align-middle"><a href="">CZ0102091</a></td>
                                <td  class="align-middle">12/02/2020</td>
                                <td  class="align-middle"><a href="">Nguyễn Tấn Tú</a></td>
                                <td class="align-middle">$350.222</td>
                                <td  class="align-middle">10%</td>
                                <td  class="align-middle">$315.222</td>

                                <!-- các btn thêm xóa sửa -->
                                <td  class="align-middle">
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
                                <td  class="align-middle"><a href="">CZ0102091</a></td>
                                <td  class="align-middle">12/02/2020</td>
                                <td  class="align-middle"><a href="">Nguyễn Tấn Tú</a></td>
                                <td  class="align-middle">$350.222</td>
                                <td  class="align-middle">10%</td>
                                <td  class="align-middle">$315.222</td>

                                <!-- các btn thêm xóa sửa -->
                                <td  class="align-middle">
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
                                <td  class="align-middle"><a href="">CZ0102091</a></td>
                                <td  class="align-middle">12/02/2020</td>
                                <td  class="align-middle"><a href="">Nguyễn Tấn Tú</a></td>
                                <td  class="align-middle">$350.222</td>
                                <td  class="align-middle">10%</td>
                                <td  class="align-middle">$315.222</td>
                                <!-- các btn thêm xóa sửa -->
                                <td  class="align-middle">
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
                                <td  class="align-middle"><a href="">CZ0102091</a></td>
                                <td  class="align-middle">12/02/2020</td>
                                <td  class="align-middle"><a href="">Nguyễn Tấn Tú</a></td>
                                <td  class="align-middle">$350.222</td>
                                <td  class="align-middle">10%</td>
                                <td  class="align-middle">$315.222</td>
                                <!-- các btn thêm xóa sửa -->
                                <td  class="align-middle">
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
                                <td  class="align-middle"><a href="">CZ0102091</a></td>
                                <td  class="align-middle">12/02/2020</td>
                                <td  class="align-middle"><a href="">Nguyễn Tấn Tú</a></td>
                                <td  class="align-middle">$350.222</td>
                                <td  class="align-middle">10%</td>
                                <td  class="align-middle">$315.222</td>
                                <!-- các btn thêm xóa sửa -->
                                <td  class="align-middle">
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
                                <td  class="align-middle"><a href="">CZ0102091</a></td>
                                <td  class="align-middle">12/02/2020</td>
                                <td  class="align-middle"><a href="">Nguyễn Tấn Tú</a></td>
                                <td  class="align-middle">$350.222</td>
                                <td  class="align-middle">10%</td>
                                <td  class="align-middle">$315.222</td>
                                <!-- các btn thêm xóa sửa -->
                                <td  class="align-middle">
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
                                <td  class="align-middle">
                                    <a href="">CZ0102091</a></td>
                                <td  class="align-middle">12/02/2020</td>
                                <td  class="align-middle">
                                    <a href="">Nguyễn Tấn Tú</a>
                                </td>
                                <td  class="align-middle">
                                    $350.222
                                </td>
                                <td  class="align-middle">10%</td>
                                <td  class="align-middle">$315.222</td>
                                <!-- các btn thêm xóa sửa -->
                                <td  class="align-middle">
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
                                <td  class="align-middle">
                                    <a href="">CZ0102091</a></td>
                                <td  class="align-middle">12/02/2020</td>
                                <td  class="align-middle">
                                    <a href="">Nguyễn Tấn Tú</a>
                                </td>
                                <td  class="align-middle">
                                    $350.222
                                </td>
                                <td  class="align-middle">10%</td>
                                <td  class="align-middle">$315.222</td>
                                <!-- các btn thêm xóa sửa -->
                                <td  class="align-middle">
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
                                <td  class="align-middle">
                                    <a href="">CZ0102091</a></td>
                                <td  class="align-middle">12/02/2020</td>
                                <td  class="align-middle">
                                    <a href="">Nguyễn Tấn Tú</a>
                                </td>
                                <td  class="align-middle">
                                    $350.222
                                </td>
                                <td  class="align-middle">10%</td>
                                <td  class="align-middle">$315.222</td>
                                <!-- các btn thêm xóa sửa -->
                                <td  class="align-middle">
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