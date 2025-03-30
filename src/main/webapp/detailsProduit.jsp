<%@ page import="models.Produit" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Produit produit = (Produit) request.getAttribute("produit");
%>
<html>
<head>
    <title>Détails du Produit</title>
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

        .product-details {
            font-size: 18px;
            color: #333;
        }

        .product-details p {
            margin: 10px 0;
        }

        .product-details strong {
            color: #007BFF;
        }

        .product-image {
            text-align: center;
            margin-top: 20px;
        }

        .product-image img {
            max-width: 100%;
            max-height: 300px;
            object-fit: contain;
            border-radius: 8px;
        }

        a {
            display: block;
            text-decoration: none;
            color: #007BFF;
            font-size: 16px;
            text-align: center;
            margin-top: 20px;
        }

        a:hover {
            color: #0056b3;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Détails du Produit</h2>

    <div class="product-details">
        <p><strong>ID:</strong> <%= produit.getId() %></p>
        <p><strong>Nom:</strong> <%= produit.getNom() %></p>
        <p><strong>Description:</strong> <%= produit.getDescription() %></p>
        <p><strong>Prix:</strong> <%= produit.getPrix() %> €</p>
    </div>

    <div class="product-image">
        <img src="<%= produit.getImage() %>" alt="<%= produit.getNom() %>">
    </div>

    <a href="ProduitServlet">Retour</a>
</div>

</body>
</html>
