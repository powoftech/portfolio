package murach.download.download;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import murach.cart.business.Product;
import murach.download.business.User;
import murach.download.data.ProductIO;
import murach.download.data.UserIO;
import murach.download.util.CookieUtil;

@WebServlet(urlPatterns = { "/work/exercises/download/download" }, name = "DownloadServlet")
public class DownloadServlet extends HttpServlet {
    final String subfolder = "/work/exercises/download";

    @Override
    public void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws IOException, ServletException {

        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "viewAlbums"; // default action
        }

        // perform action and set URL to appropriate page
        String url = "/index.jsp";
        if (action.equals("viewAlbums")) {
            url = "/index.jsp";
        } else if (action.equals("checkUser")) {
            url = checkUser(request, response);
        } else if (action.equals("viewCookies")) {
            url = "/view_cookies.jsp";
        } else if (action.equals("deleteCookies")) {
            url = deleteCookies(request, response);
        }

        // forward to the view
        getServletContext().getRequestDispatcher(subfolder + url).forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws IOException, ServletException {

        String action = request.getParameter("action");

        // perform action and set URL to appropriate page
        String url = "/index.jsp";
        if (action.equals("registerUser")) {
            url = registerUser(request, response);
        }

        // forward to the view
        getServletContext().getRequestDispatcher(subfolder + url).forward(request, response);
    }

    private String checkUser(HttpServletRequest request,
            HttpServletResponse response) {

        String productCode = request.getParameter("productCode");
        HttpSession session = request.getSession();

        // get Product object and set it as session attribute
        ServletContext sc = this.getServletContext();
        String productPath = sc.getRealPath(subfolder + "/products.txt");
        Product product = ProductIO.getProduct(productCode, productPath);
        session.setAttribute("product", product);

        User user = (User) session.getAttribute("user");

        String url;
        // if User object doesn't exist, check email cookie
        if (user == null) {
            Cookie[] cookies = request.getCookies();
            String emailAddress = CookieUtil.getCookieValue(cookies, "emailCookie");

            // if cookie doesn't exist, go to Registration page
            if (emailAddress == null || emailAddress.equals("")) {
                url = "/register.jsp";
            }
            // if cookie exists, create User object and go to Downloads page
            else {
                // ServletContext sc = getServletContext();
                String path = sc.getRealPath(subfolder + "/EmailList.txt");
                user = UserIO.getUser(emailAddress, path);
                session.setAttribute("user", user);
                url = "/" + productCode + "_download.jsp";
            }
        }
        // if User object exists, go to Downloads page
        else {
            url = "/" + productCode + "_download.jsp";
        }
        return url;
    }

    private String registerUser(HttpServletRequest request,
            HttpServletResponse response) {

        // get the user data
        String email = request.getParameter("email");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");

        // store the data in a User object
        User user = new User();
        user.setEmail(email);
        user.setFirstName(firstName);
        user.setLastName(lastName);

        // write the User object to a file
        ServletContext sc = getServletContext();
        String path = sc.getRealPath(subfolder + "/EmailList.txt");
        UserIO.add(user, path);

        // store the User object as a session attribute
        HttpSession session = request.getSession();
        session.setAttribute("user", user);

        // add a cookie that stores the user's email as a cookie
        Cookie userEmailCookie = new Cookie("userEmail", email);
        userEmailCookie.setMaxAge(60 * 60 * 24 * 365 * 3); // set age to 3 years
        userEmailCookie.setPath("/"); // allow entire app to access it
        response.addCookie(userEmailCookie);

        Cookie firstNameCookie = new Cookie("firstName", firstName);
        firstNameCookie.setMaxAge(60 * 60 * 24 * 365 * 3); // set age to 3 years
        firstNameCookie.setPath("/"); // allow entire app to access it
        response.addCookie(firstNameCookie);

        // create and return a URL for the appropriate Download page
        Product product = (Product) session.getAttribute("product");
        String url = "/" + product.getCode() + "_download.jsp";
        return url;
    }

    private String deleteCookies(HttpServletRequest request,
            HttpServletResponse response) {

        Cookie[] cookies = request.getCookies();
        for (Cookie cookie : cookies) {
            cookie.setMaxAge(0); // delete the cookie
            cookie.setPath("/"); // allow the download application to access it
            response.addCookie(cookie);
        }

        HttpSession session = request.getSession();
        session.removeAttribute("user");

        String url = "/delete_cookies.jsp";
        return url;
    }
}