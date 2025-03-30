<%@ page import="models.Produit" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Détails du Produit</title>
</head>
<body>
    <h2>Détails du Produit</h2>
    <%
        Produit produit = (Produit) request.getAttribute("produit");
    %>
    <p><strong>ID:</strong> <%= produit.getId() %></p>
    <p><strong>Nom:</strong> <%= produit.getNom() %></p>
    <p><strong>Description:</strong> <%= produit.getDescription() %></p>
    <p><strong>Prix:</strong> <%= produit.getPrix() %> €</p>
    <p><img src="<%= produit.getImage() %>" width="150"></p>
    <a href="ProduitServlet">Retour</a>
</body>
</html>
