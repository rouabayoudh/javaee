<%@ page import="models.Produit" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Produit produit = (Produit) request.getAttribute("produit");
%>
<html>
<head>
    <title>Modifier Produit</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }

        h2 {
            color: #333;
            text-align: center;
            padding: 20px 0;
            background-color: #007BFF;
            color: white;
            margin: 0;
        }

        .container {
            width: 60%;
            margin: 40px auto;
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        label {
            font-size: 16px;
            color: #333;
        }

        input[type="text"] {
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 14px;
            width: 100%;
        }

        input[type="submit"] {
            background-color: #28a745;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #218838;
        }

        a {
            text-decoration: none;
            color: #007BFF;
            font-size: 16px;
            text-align: center;
            display: block;
            margin-top: 20px;
        }

        a:hover {
            color: #0056b3;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Modifier le Produit</h2>

    <form action="ProduitServlet" method="post">
        <input type="hidden" name="action" value="modifier">
        <input type="hidden" name="id" value="<%= produit.getId() %>">

        <label for="nom">Nom :</label>
        <input type="text" id="nom" name="nom" value="<%= produit.getNom() %>" required>

        <label for="description">Description :</label>
        <input type="text" id="description" name="description" value="<%= produit.getDescription() %>" required>

        <label for="prix">Prix :</label>
        <input type="text" id="prix" name="prix" value="<%= produit.getPrix() %>" required>

        <label for="image">Image :</label>
        <input type="text" id="image" name="image" value="<%= produit.getImage() %>" required>

        <input type="submit" value="Modifier">
    </form>

    <a href="ProduitServlet">Retour à la liste des produits</a>
</div>

</body>
</html>
