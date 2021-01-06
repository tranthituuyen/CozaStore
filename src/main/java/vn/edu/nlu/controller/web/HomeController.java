package vn.edu.nlu.controller.web;

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

@WebServlet(urlPatterns = {"/trang-chu"}, name = "home-controller")
public class HomeController extends HttpServlet {

    @Inject
    private ICategoryService categoryService;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("categories", categoryService.findAll());
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/web/home.jsp");
        requestDispatcher.forward(request, response);
    }
}