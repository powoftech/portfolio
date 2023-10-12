package murach.cart.cart;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.util.ArrayList;

import murach.cart.data.*;
import murach.cart.business.*;

@WebServlet(urlPatterns = { "/work/exercises/cart/" }, name = "ProductServlet")
public class ProductsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        final String urlSlug = "/pages/exercises/cart";

        HttpSession session = request.getSession();
        String path = getServletContext().getRealPath(urlSlug + "/products.txt");
        ArrayList<Product> products = ProductIO.getProducts(path);
        session.setAttribute("products", products);

        String url = "/index.jsp";
        getServletContext().getRequestDispatcher(urlSlug + url).forward(request, response);
    }
}