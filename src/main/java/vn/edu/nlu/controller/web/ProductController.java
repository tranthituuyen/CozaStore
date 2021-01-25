package vn.edu.nlu.controller.web;

import vn.edu.nlu.constant.SystemConstant;
import vn.edu.nlu.model.Category;
import vn.edu.nlu.model.Product;
import vn.edu.nlu.service.ICategoryService;
import vn.edu.nlu.service.IProductService;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/san-pham"}, name = "product-controller")
public class ProductController extends HttpServlet {

    @Inject
    private IProductService productService;

    @Inject
    private ICategoryService categoryService;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String view = "";
        String productCode = request.getParameter("productcode");
        Category categories = new Category();
        Product product = new Product();

        String detail = request.getParameter("type");
        if (detail != null && detail.equals(SystemConstant.DETAIL)) {
            product = productService.findOne(productCode);
            List<Product> relatedProducts = productService.findByCategoryCode(product.getCategoryCode());

            System.out.println(product.getDescription());
            request.setAttribute("relatedProducts", relatedProducts);
            view = "/views/web/product-detail.jsp";
        } else if (detail == null || detail.equals("")) {
            categories.setListResult(categoryService.findAll());
            product.setListResult(productService.findAll());

            request.setAttribute("categories", categories);
            view = "/views/web/product.jsp";
        }


        //=============================================================================================



        request.setAttribute(SystemConstant.MODEL, product);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher(view);
        requestDispatcher.forward(request, response);
    }
}
