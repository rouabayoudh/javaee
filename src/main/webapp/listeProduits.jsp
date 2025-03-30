<%@ page import="java.util.List, models.Produit" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Liste des Produits</title>
</head>
<body>
    <h2>Liste des Produits</h2>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Nom</th>
            <th>Description</th>
            <th>Prix</th>
            <th>Image</th>
            <th>Actions</th>

        </tr>
        <%
            List<Produit> produits = (List<Produit>) request.getAttribute("produits");
            for (Produit produit : produits) {
        %>
        <tr>
            <td><%= produit.getId() %></td>
            <td><%= produit.getNom() %></td>
            <td><%= produit.getDescription() %></td>
            <td><%= produit.getPrix() %></td>
            <td><img src="<%= produit.getImage() %>" width="50"></td>
            <td>


                <a href="ProduitServlet?action=details&id=<%= produit.getId() %>">Détails</a> |
                <a href="ProduitServlet?action=modifier&id=<%= produit.getId() %>">Modifier</a> |
                <a href="ProduitServlet?action=supprimer&id=<%= produit.getId() %>" onclick="return confirm('Supprimer ce produit ?');">Supprimer</a>
            </td>
        </tr>
        <% } %>
    </table>
     <a href="ajouterProduit.jsp">Ajouter un produit</a>
</body>
</html>
