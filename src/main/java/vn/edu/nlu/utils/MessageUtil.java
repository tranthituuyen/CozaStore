package vn.edu.nlu.utils;

import javax.servlet.http.HttpServletRequest;

public class MessageUtil {
    public static void showMessage(HttpServletRequest request) {
        if (request.getParameter("message") != null) {
            String messageResponse = "";
            String alert = "";
            String message = request.getParameter("message");

            if (message.equals("insert_success")) {
                messageResponse = "Insert success";
                alert = "success";
            } else if (message.equals("update_success")) {
                messageResponse = "Update success";
                alert = "success";
            } else if (message.equals("delete_success")) {
                messageResponse = "Deleted";
                alert = "success";
            } else if (message.equals("error_system")) {
                messageResponse = "Error";
                alert = "danger";
            }
            request.setAttribute("messageResponse", messageResponse);
            request.setAttribute("alert", alert);
        }
    }
}