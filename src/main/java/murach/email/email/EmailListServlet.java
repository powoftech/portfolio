package murach.email.email;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import murach.email.business.User;
import murach.email.data.UserDB;
import murach.email.data.UserIO;

@WebServlet(urlPatterns = { "/work/exercises/email/emailList" }, name = "EmailListServlet")
public class EmailListServlet extends HttpServlet {
    final String subfolder = "/work/exercises/email";

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();

        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "join"; // default action
        }

        // perform action and set URL to appropriate page
        String url = "/index.jsp";
        if (action.equals("join")) {
            url = "/index.jsp"; // the "join" page
        } else if (action.equals("add")) {
            // get parameters from the request
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");

            // store data in User object and save User object in database
            User user = new User(firstName, lastName, email);
            UserDB.insert(user);

            // set User object in request object and set URL
            session.setAttribute("user", user);
            url = "/thanks.jsp"; // the "thanks" page

            // create the Date object and store it in the request
            Date currentDate = new Date();
            request.setAttribute("currentDate", currentDate);

            // create users list and store it in the session
            String path = getServletContext().getRealPath(subfolder + "/EmailList.txt");
            ArrayList<User> users = UserIO.getUsers(path);
            users.add(user);
            Collections.sort(users);
            session.setAttribute("users", users);
        }

        // forward request and response objects to specified URL
        getServletContext().getRequestDispatcher(subfolder + url).forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}