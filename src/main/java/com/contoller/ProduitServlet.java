package com.contoller;

import models.Produit;
import models.ProduitDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/ProduitServlet")
public class ProduitServlet extends HttpServlet {
    private ProduitDAO produitDAO;

    public ProduitServlet() {
        produitDAO = new ProduitDAO();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Produit> produits = produitDAO.getAllProduits();
        request.setAttribute("produits", produits);
        RequestDispatcher dispatcher = request.getRequestDispatcher("listeProduits.jsp");
        dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nom = request.getParameter("nom");
        String description = request.getParameter("description");
        double prix = Double.parseDouble(request.getParameter("prix"));
        String image = request.getParameter("image");

        Produit produit = new Produit(nom, description, prix, image);
        produitDAO.ajouterProduit(produit);

        response.sendRedirect("ProduitServlet");
    }
}
