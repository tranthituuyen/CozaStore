package vn.edu.nlu.controller.admin;

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

@WebServlet(urlPatterns = {"/admin-quan-ly-san-pham"}, name = "admin/product-management")
public class ProductController extends HttpServlet {

    @Inject
    private IProductService productService;

    @Inject
    ICategoryService categoryService;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Product product = new Product();

//        String pageStr = request.getParameter("page");
//        String maxPageItemStr = request.getParameter("maxPageItem");
//
//        if (pageStr != null) {
//            product.setPage(Integer.parseInt(pageStr));
//        } else {
//            product.setPage(1);
//        }
//
//        if (maxPageItemStr != null) {
//            product.setMaxPageItem(Integer.parseInt(maxPageItemStr));
//        }
//
//        System.out.println("1. " + (product.getPage() - 1));
//        System.out.println("2. " + product.getMaxPageItem());
//        System.out.println("3. " + (product.getPage() - 1) * product.getMaxPageItem());
//        Integer offset = (product.getPage() - 1) * product.getMaxPageItem();
//        product.setListResult(productService.findAll(offset, product.getMaxPageItem()));
//        product.setTotalItem(productService.getTotalItems());
//        product.setTotalPage((int) Math.ceil((double) product.getTotalItem() / product.getMaxPageItem()));

        product.setListResult(productService.findAll());
        request.setAttribute(SystemConstant.MODEL, product);

        List<Product> bestSelling = productService.findBestSelling();
        request.setAttribute("bestSelling", bestSelling);

        Category category = new Category();
        category.setListResult(categoryService.findAll());
        request.setAttribute("categories", category);

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/admin/product-management.jsp");
        requestDispatcher.forward(request, response);
    }
}
