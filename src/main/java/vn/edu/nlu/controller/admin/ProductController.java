package vn.edu.nlu.controller.admin;

import vn.edu.nlu.constant.SystemConstant;
import vn.edu.nlu.model.Category;
import vn.edu.nlu.model.DetailProduct;
import vn.edu.nlu.model.Product;
import vn.edu.nlu.paging.PageRequest;
import vn.edu.nlu.paging.Pageable;
import vn.edu.nlu.service.ICategoryService;
import vn.edu.nlu.service.IDetailProductService;
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

    @Inject
    IDetailProductService detailProductService;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Category category = new Category();
        category.setListResult(categoryService.findAll());
        Product product = FormUtil.toModel(Product.class, request);
        DetailProduct detailProduct = FormUtil.toModel(DetailProduct.class, request);
        String view = "";

        switch (product.getType()) {
            case SystemConstant.LIST:
                Pageable pageable = new PageRequest(product.getPage(), product.getMaxPageItem(),
                        new Sorter(product.getSortName(), product.getSortBy()));

                product.setListResult(productService.findAll(pageable));
                product.setTotalItem(productService.getTotalItems());
                product.setTotalPage((int) Math.ceil((double) product.getTotalItem() / product.getMaxPageItem()));
                request.setAttribute(SystemConstant.MODEL, product);
                view = "/views/admin/product-management.jsp";
                break;
            case SystemConstant.EDIT:
                if (product.getId() != null) {
                    product = productService.findOne(product.getId());
                    product.setDetails(productService.findAllDetailOfProduct(product.getCode()));
                    product.setNumberOfProduct(productService.countProduct(product.getCode()));
                    request.setAttribute("listDetailSize", product.getDetails().size());
                    request.setAttribute(SystemConstant.MODEL, product);
                }
                view = "/views/admin/edit-product.jsp";
                break;
            case SystemConstant.BEST:
                product.setListResult(productService.findBestSelling());
                request.setAttribute(SystemConstant.MODEL, product);
                view = "/views/admin/product-management.jsp";
                break;
            case SystemConstant.DETAIL:
                String id = request.getParameter("id");
                String productcode = request.getParameter("productcode");
                System.out.println("productcode = " + productcode);

                product = productService.findOne(productcode);

                if (id != null) {
                    detailProduct = detailProductService.findOne(product.getCode(), Integer.parseInt(id));
                    request.setAttribute("detail", detailProduct);
                }

                request.setAttribute(SystemConstant.MODEL, product);
                view = "/views/admin/add-product-detail.jsp";
                break;
        }

        MessageUtil.showMessage(request);
        request.setAttribute("categories", category);
        RequestDispatcher rd = request.getRequestDispatcher(view);
        rd.forward(request, response);
    }
}
