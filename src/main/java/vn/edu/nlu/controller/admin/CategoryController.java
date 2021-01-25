package vn.edu.nlu.controller.admin;

import vn.edu.nlu.constant.SystemConstant;
import vn.edu.nlu.model.Category;
import vn.edu.nlu.service.ICategoryService;
import vn.edu.nlu.service.IProductService;
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

@WebServlet(urlPatterns = {"/admin-quan-ly-danh-muc"}, name = "admin/category-management")
public class CategoryController extends HttpServlet {

    @Inject
    private ICategoryService categoryService;

    @Inject
    private IProductService productService;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Category model = new Category();
        Category category = FormUtil.toModel(Category.class, request);
        String type = request.getParameter("type");
        String view = "";

        if (type == null || type.equals("")) {
            model.setListResult(categoryService.findAll());
            request.setAttribute(SystemConstant.MODEL, model);
            view = "/views/admin/category-management.jsp";
        } else if (category.getType().equals(SystemConstant.EDIT)) {
            if (category.getId() != null) {
                category = categoryService.findOne(category.getId());
            }
            request.setAttribute("category", category);
            view = "/views/admin/edit-category.jsp";
        }

        MessageUtil.showMessage(request);
        RequestDispatcher rd = request.getRequestDispatcher(view);
        rd.forward(request, response);
    }
}
