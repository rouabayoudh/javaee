<%@ page import="models.Produit" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Modifier Produit</title>
</head>
<body>
    <h2>Modifier le Produit</h2>
    <%
        Produit produit = (Produit) request.getAttribute("produit");
    %>
    <form action="ProduitServlet" method="post">
        <input type="hidden" name="action" value="modifier">
        <input type="hidden" name="id" value="<%= produit.getId() %>">
        Nom: <input type="text" name="nom" value="<%= produit.getNom() %>"><br>
        Description: <input type="text" name="description" value="<%= produit.getDescription() %>"><br>
        Prix: <input type="text" name="prix" value="<%= produit.getPrix() %>"><br>
        Image: <input type="text" name="image" value="<%= produit.getImage() %>"><br>
        <input type="submit" value="Modifier">
    </form>
</body>
</html>
