<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ajouter un Produit</title>
</head>
<body>
    <h2>Ajouter un Nouveau Produit</h2>

    <form action="ProduitServlet" method="post">
        <label for="nom">Nom :</label>
        <input type="text" id="nom" name="nom" required>
        <br><br>

        <label for="description">Description :</label>
        <textarea id="description" name="description" required></textarea>
        <br><br>

        <label for="prix">Prix :</label>
        <input type="number" id="prix" name="prix" step="0.01" required>
        <br><br>

        <label for="image">URL de l'image :</label>
        <input type="text" id="image" name="image">
        <br><br>

        <input type="submit" value="Ajouter">
    </form>

    <br>
    <a href="ProduitServlet">Retour à la liste des produits</a>
</body>
</html>
