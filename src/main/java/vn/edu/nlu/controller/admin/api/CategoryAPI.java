package vn.edu.nlu.controller.admin.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import vn.edu.nlu.model.Category;
import vn.edu.nlu.model.User;
import vn.edu.nlu.service.ICategoryService;
import vn.edu.nlu.utils.HttpUtil;
import vn.edu.nlu.utils.SessionUtil;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/api-admin-category"}, name = "api")
public class CategoryAPI extends HttpServlet {

    @Inject
    private ICategoryService categoryService;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        Category category = HttpUtil.of(request.getReader()).toModel(Category.class);
        category.setCreatedBy(((User) SessionUtil.getInstance().getValue(request, "USER")).getFullname());
        category = categoryService.save(category);
        mapper.writeValue(response.getOutputStream(), category);
    }

    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        Category updateCategory = HttpUtil.of(request.getReader()).toModel(Category.class);
        updateCategory.setModifiedBy(((User) SessionUtil.getInstance().getValue(request, "USER")).getFullname());
        updateCategory = categoryService.update(updateCategory);
        mapper.writeValue(response.getOutputStream(), updateCategory);
    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        Category category = HttpUtil.of(request.getReader()).toModel(Category.class);
        categoryService.delete(category.getIds());
        mapper.writeValue(response.getOutputStream(), "{}");
    }

}
