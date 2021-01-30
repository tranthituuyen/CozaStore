package vn.edu.nlu.controller.admin.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import vn.edu.nlu.model.User;
import vn.edu.nlu.service.IUserService;
import vn.edu.nlu.utils.HttpUtil;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/api-admin-ruser")
public class RUserAPI extends HttpServlet {

    @Inject
    private IUserService userService;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        User user = HttpUtil.of(request.getReader()).toModel(User.class);
        user.setCreatedBy(user.getFullname());
        user = userService.save(user);
        mapper.writeValue(response.getOutputStream(), user);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
