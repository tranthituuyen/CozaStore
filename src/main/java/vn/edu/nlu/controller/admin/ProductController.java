package vn.edu.nlu.controller.admin;

import vn.edu.nlu.constant.SystemConstant;
import vn.edu.nlu.model.Category;
import vn.edu.nlu.model.Product;
import vn.edu.nlu.paging.PageRequest;
import vn.edu.nlu.paging.Pageable;
import vn.edu.nlu.service.ICategoryService;
import vn.edu.nlu.service.IProductService;
import vn.edu.nlu.sort.Sorter;
import vn.edu.nlu.utils.FormUtil;
import vn.edu.nlu.utils.MessageUtil;

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
        Category category = new Category();
        category.setListResult(categoryService.findAll());
        Product product = FormUtil.toModel(Product.class, request);
        List<Product> bestSelling = productService.findBestSelling();
        String view = "";

        if (product.getType().equals(SystemConstant.LIST)) {
            Pageable pageable = new PageRequest(product.getPage(), product.getMaxPageItem(),
                    new Sorter(product.getSortName(), product.getSortBy()));

            product.setListResult(productService.findAll(pageable));
            product.setTotalItem(productService.getTotalItems());
            product.setTotalPage((int) Math.ceil((double) product.getTotalItem() / product.getMaxPageItem()));

            request.setAttribute("bestSelling", bestSelling);

            view = "/views/admin/product-management.jsp";
        } else if (product.getType().equals(SystemConstant.EDIT)) {
            if (product.getId() != null) {
                product = productService.findOne(product.getId());
            }
            view = "/views/admin/edit-product.jsp";
        }

        MessageUtil.showMessage(request);
        request.setAttribute("categories", category);
        request.setAttribute(SystemConstant.MODEL, product);
        RequestDispatcher rd = request.getRequestDispatcher(view);
        rd.forward(request, response);
    }
}
