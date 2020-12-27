package vn.edu.nlu.controller.web;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

// chỗ này mai mốt đổi tên đường dẫn thành tiêu đề bài viết ha gì đó
@WebServlet(urlPatterns = {"/chi-tiet-bai-viet"}, name = "blog-detail-controller")
public class BlogDetailController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/web/blog-detail.jsp");
        requestDispatcher.forward(request, response);
    }
}
