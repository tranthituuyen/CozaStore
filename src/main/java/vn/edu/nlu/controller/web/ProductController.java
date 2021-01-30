package vn.edu.nlu.controller.web;

import vn.edu.nlu.constant.SystemConstant;
import vn.edu.nlu.model.Category;
import vn.edu.nlu.model.DetailProduct;
import vn.edu.nlu.model.Product;
import vn.edu.nlu.service.ICategoryService;
import vn.edu.nlu.service.IDetailProductService;
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

    @Inject
    private IDetailProductService detailProductService;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String view = "";
        String type = request.getParameter("type");
        String fromStr = request.getParameter("from");
        String search = request.getParameter("search");
        int from = 0;
        Product product = new Product();

        if (type != null) {
            switch (type) {
                case SystemConstant.DETAIL:
                    String productCode = request.getParameter("productcode");
                    product = productService.findOne(productCode);
                    List<Product> relatedProducts = productService.findByCategoryCode(product.getCategoryCode());
                    product.setImages(productService.findAllImgOfProduct(productCode));
                    product.setColors(detailProductService.findAllColor(productCode));
                    product.setSizes(detailProductService.findAllSize(productCode));
                    product.setShortDescription(detailProductService.getInfo(productCode));

                    request.setAttribute("relatedProducts", relatedProducts);
                    view = "/views/web/product-detail.jsp";
                    break;
                case SystemConstant.FILTER:
                    String find = request.getParameter("find");
                    product.setListResult(productService.findByFilter(find));
                    view = "/views/web/product.jsp";
                    break;
                case SystemConstant.LIST:
                    if (fromStr != null) {
                        from = Integer.parseInt(fromStr);
                    }
                    product.setListResult(productService.findAllLimit(from, 20));
                    view = "/views/web/product.jsp";
                    break;
            }
        } else if (search != null) {
            product.setListResult(productService.findByKeyword(search));
            view = "/views/web/product.jsp";
        } else {
            product.setListResult(productService.findAllLimit(0, 20));
            view = "/views/web/product.jsp";
        }
        Category categories = new Category();
        categories.setListResult(categoryService.findAll());
        request.setAttribute("categories", categories);
        request.setAttribute(SystemConstant.MODEL, product);
        request.setAttribute("from", from + 20);

        RequestDispatcher requestDispatcher = request.getRequestDispatcher(view);
        requestDispatcher.forward(request, response);
    }
}
