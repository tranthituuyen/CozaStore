package vn.edu.nlu.controller.admin.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import vn.edu.nlu.model.DetailProduct;
import vn.edu.nlu.model.User;
import vn.edu.nlu.service.IDetailProductService;
import vn.edu.nlu.utils.HttpUtil;
import vn.edu.nlu.utils.SessionUtil;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

// thêm sửa xóa sản phẩm
@WebServlet(urlPatterns = {"/api-admin-detail-product"}, name = "api-admin-product")
public class DetailProductAPI extends HttpServlet {

    @Inject
    private IDetailProductService detailProductService;

    // add
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        DetailProduct product = HttpUtil.of(request.getReader()).toModel(DetailProduct.class);
        product.setCreatedBy(((User) SessionUtil.getInstance().getValue(request, "USER")).getFullname());
        product = detailProductService.save(product);
        mapper.writeValue(response.getOutputStream(), product);
    }

    // update
    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        DetailProduct updateProduct = HttpUtil.of(request.getReader()).toModel(DetailProduct.class);
        updateProduct.setModifiedBy(((User) SessionUtil.getInstance().getValue(request, "USER")).getFullname());
        updateProduct = detailProductService.update(updateProduct);
        mapper.writeValue(response.getOutputStream(), updateProduct);
    }

    // delete
    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        DetailProduct product = HttpUtil.of(request.getReader()).toModel(DetailProduct.class);
        detailProductService.delete(product.getIds());
        mapper.writeValue(response.getOutputStream(), "{}");
    }

}
