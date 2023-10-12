package com.example;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;

@WebServlet(urlPatterns="/work/emailList")
public class EmailListServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String url = "/pages/emailList/index.jsp";

        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "join"; // default action
        }
        // perform action and set URL to appropriate page
        if (action.equals("join")) {
            url = "/pages/emailList/index.jsp"; // the "join" page
        } else if (action.equals("add")) {
            // get parameters from the request
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");
            String dateOfBirth = request.getParameter("dateOfBirth");
            String acquisition = request.getParameter("acquisition");
            String contact = request.getParameter("contact");

            // store data in User object and save User object in db
            UserExtended user = new UserExtended(firstName, lastName, email, dateOfBirth, acquisition, contact);
            // UserDB.insert(user);

            // set User object in request object and set URL
            request.setAttribute("user", user);
            url = "/pages/emailList/thanks.jsp"; // the "thanks" page
        }

        // forward request and response objects to specified URL
        getServletContext().getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}
