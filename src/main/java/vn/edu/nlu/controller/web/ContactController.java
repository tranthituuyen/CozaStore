package vn.edu.nlu.controller.web;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Properties;

@WebServlet(urlPatterns = {"/lien-he"})
public class ContactController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        final String username = "manman98y@gmail.com";
        final String password = "kemdanhrang1906";

        Properties prop = new Properties();
        prop.put("mail.smtp.host","smtp.gmail.com");
        prop.put("mail.smtp.port","587");
        prop.put("mail.smtp.auth","true");
        prop.put("mail.smtp.starttls.enable","true");

        Session session = Session.getInstance(prop, new javax.mail.Authenticator(){
           protected PasswordAuthentication getPasswordAuthentication(){
               return new PasswordAuthentication(username,password);
           }
        });
        String emailTo = request.getParameter("email");
        String content = request.getParameter("content");
        try{
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(username));
            message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(emailTo));
            message.setSubject("y kien gop y");
            message.setText(content);
            Transport.send(message);
            System.out.println("Done !!");

        }catch (Exception e){

        }
    response.sendRedirect(request.getContextPath() +"/lien-he");
        }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/contact.jsp");
        rd.forward(request,response);
    }
}
