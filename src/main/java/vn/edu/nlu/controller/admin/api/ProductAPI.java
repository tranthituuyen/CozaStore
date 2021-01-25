package vn.edu.nlu.controller.admin.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import vn.edu.nlu.model.Product;
import vn.edu.nlu.model.User;
import vn.edu.nlu.service.IProductService;
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
@WebServlet(urlPatterns = {"/api-admin-product"}, name = "api-product")
public class ProductAPI extends HttpServlet {

    @Inject
    private IProductService productService;

    // add
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        Product product = HttpUtil.of(request.getReader()).toModel(Product.class);
        product.setCreatedBy(((User) SessionUtil.getInstance().getValue(request, "USER")).getFullname());
        product = productService.save(product);
        mapper.writeValue(response.getOutputStream(), product);
    }

    // update
    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        Product updateProduct = HttpUtil.of(request.getReader()).toModel(Product.class);
        updateProduct.setModifiedBy(((User) SessionUtil.getInstance().getValue(request, "USER")).getFullname());
        updateProduct = productService.update(updateProduct);
        mapper.writeValue(response.getOutputStream(), updateProduct);
    }

    // delete
    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        Product product = HttpUtil.of(request.getReader()).toModel(Product.class);
        productService.delete(product.getIds());
        mapper.writeValue(response.getOutputStream(), "{}");
    }

}
