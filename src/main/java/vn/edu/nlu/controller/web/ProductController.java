package vn.edu.nlu.controller.web;

import vn.edu.nlu.model.Product;
import vn.edu.nlu.service.IProductService;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/san-pham"}, name = "product-controller")
public class ProductController extends HttpServlet {

    @Inject
    private IProductService productService;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String code = "aa-test-shirt";
        String categoryCode = "so-mi";
        String name = "test shirt";
        int price = 120000;

        Product product = new Product();
        product.setCode(code);
        product.setCategoryCode(categoryCode);
        product.setName(name);
        product.setPrice(price);

        productService.save(product);

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/web/product.jsp");
        requestDispatcher.forward(request, response);
    }
}
