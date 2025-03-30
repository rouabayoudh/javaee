<%@ page import="java.util.List" %>
<%@ page import="models.Produit" %>
<html>
<head>
    <title>Liste des Produits</title>
</head>
<body>
    <h2>Liste des Produits</h2>
    <table border="1">
        <tr>
            <th>Nom</th>
            <th>Description</th>
            <th>Prix</th>
            <th>Image</th>
            <th>Actions</th>
        </tr>
        <%
            List<Produit> produits = (List<Produit>) request.getAttribute("produits");
            for (Produit p : produits) {
        %>
        <tr>
            <td><%= p.getNom() %></td>
            <td><%= p.getDescription() %></td>
            <td><%= p.getPrix() %> €</td>
            <td><img src="<%= p.getImage() %>" width="50"></td>
            <td>
                <a href="modifierProduit.jsp?id=<%= p.getId() %>">Modifier</a>
                <a href="supprimerProduit?id=<%= p.getId() %>">Supprimer</a>
            </td>
        </tr>
        <% } %>
    </table>
    <a href="ajouterProduit.jsp">Ajouter un produit</a>
</body>
</html>
