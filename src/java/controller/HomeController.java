/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.implement.CategoryDAO;
import dal.implement.ProductDAO;
import entity.Category;
import entity.Product;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class HomeController extends HttpServlet {

    ProductDAO productDAO = new ProductDAO();
    CategoryDAO categoryDao = new CategoryDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Product> listProduct = findProductDoGet(request);

        //get list category
        List<Category> listCategory = categoryDao.findAll();

        //set listProduct, listCategory to session
        HttpSession session = request.getSession();
        session.setAttribute("listProduct", listProduct);
        session.setAttribute("listCategory", listCategory);
        request.getRequestDispatcher("view/homepage/home.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    private List<Product> findProductDoGet(HttpServletRequest request) {
        //get ve search
        String actionSearch = request.getParameter("search") == null
                ? "default"
                : request.getParameter("search");
        //get list product dao
        List<Product> listProduct;
        switch (actionSearch) {
            case "category":
                String categoryId = request.getParameter("categoryId");
                listProduct = productDAO.findByCategory(categoryId);
                break;
            case "searchByName":
                String keyword = request.getParameter("keyword");
                listProduct = productDAO.findByName(keyword);
                break;
            default:
                listProduct = productDAO.findAll();
        }
        return listProduct;
    }

}
