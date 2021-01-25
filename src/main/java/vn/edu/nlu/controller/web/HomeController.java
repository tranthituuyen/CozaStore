package vn.edu.nlu.controller.web;

import vn.edu.nlu.model.Category;
import vn.edu.nlu.model.Product;
import vn.edu.nlu.model.User;
import vn.edu.nlu.service.ICategoryService;
import vn.edu.nlu.service.IProductService;
import vn.edu.nlu.service.IUserService;
import vn.edu.nlu.utils.FormUtil;
import vn.edu.nlu.utils.SessionUtil;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ResourceBundle;

@WebServlet(urlPatterns = {"/trang-chu", "/dang-nhap", "/thoat"}, name = "home-controller")
public class HomeController extends HttpServlet {

    ResourceBundle bundle = ResourceBundle.getBundle("message");

    @Inject
    private IUserService userService;

    @Inject
    private IProductService productService;

    @Inject
    private ICategoryService categoryService;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action != null) {
            if (action.equals("login")) {
                User model = FormUtil.toModel(User.class, request);
                model = userService.findByUserNameAndPasswordAndStatus(model.getUsername(), model.getPassword(), 1);

                if (model != null) {
                    SessionUtil.getInstance().putValue(request, "USER", model);
                    if (model.getRole().getCode().equals("user")) {
                        response.sendRedirect(request.getContextPath() + "/trang-chu");
                    } else if (model.getRole().getCode().equals("admin")) {
                        response.sendRedirect(request.getContextPath() + "/admin-trang-chu");
                    }
                } else {
                    response.sendRedirect(request.getContextPath() +
                            "/dang-nhap?action=login&message=username_password_invalid&alert=danger");
                }
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action != null) {
            if (action.equals("login")) {
                String message = request.getParameter("message");
                String alert = request.getParameter("alert");

                if (message != null && alert != null) {
                    request.setAttribute("message", bundle.getString(message));
                    request.setAttribute("alert", alert);
                }

                RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/web/login.jsp");
                requestDispatcher.forward(request, response);
            } else if (action.equals("logout")) {
                SessionUtil.getInstance().removeValue(request, "USER");
                response.sendRedirect(request.getContextPath() + "/trang-chu");
            }
        } else {
            Category categories = new Category();
            Product product = new Product();

            categories.setListResult(categoryService.findAll());
            product.setListResult(productService.findAllLimit(0, 8));

            request.setAttribute("categories", categories);
            request.setAttribute("products", product);

            RequestDispatcher rd = request.getRequestDispatcher("/views/web/home.jsp");
            rd.forward(request, response);
        }
    }
}
