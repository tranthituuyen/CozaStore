package vn.edu.nlu.controller.web;

import vn.edu.nlu.model.Product;
import vn.edu.nlu.service.IProductImageService;
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
    @Inject
    private IProductImageService productImageService;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = "win-coat";
        request.setAttribute("products", productService.findAll());
        request.setAttribute("images", productImageService.findByProductId(id));
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/web/product.jsp");
        requestDispatcher.forward(request, response);
    }
}
