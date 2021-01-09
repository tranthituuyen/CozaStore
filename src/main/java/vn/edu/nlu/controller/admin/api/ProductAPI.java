package vn.edu.nlu.controller.admin.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import vn.edu.nlu.model.Product;
import vn.edu.nlu.service.IProductService;
import vn.edu.nlu.utils.HttpUtil;

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

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        Product product = HttpUtil.of(request.getReader()).toModel(Product.class);
        product = productService.save(product);
        System.out.println(product);
        mapper.writeValue(response.getOutputStream(), product);
    }

    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        Product updateProduct = HttpUtil.of(request.getReader()).toModel(Product.class);
        updateProduct = productService.update(updateProduct);
        mapper.writeValue(response.getOutputStream(), updateProduct);
    }

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
