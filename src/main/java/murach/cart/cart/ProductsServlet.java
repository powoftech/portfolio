package murach.cart.cart;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import murach.cart.business.Product;
import murach.cart.data.ProductIO;

@WebServlet(urlPatterns = { "/work/exercises/cart/","/work/exercises/cart/loadProducts"}, name = "ProductServlet")
public class ProductsServlet extends HttpServlet {
    final String subfolder = "/work/exercises/cart";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        String path = getServletContext().getRealPath(subfolder + "/products.txt");
        ArrayList<Product> products = ProductIO.getProducts(path);
        session.setAttribute("products", products);

        String url = "/index.jsp";
        getServletContext().getRequestDispatcher(subfolder + url).forward(request, response);
    }
}