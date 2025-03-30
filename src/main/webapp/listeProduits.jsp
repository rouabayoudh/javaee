<%@ page import="java.util.List, models.Produit" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Liste des Produits</title>
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

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #ffffff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 12px;
            text-align: center;
            border: 1px solid #ddd;
        }

        th {
            background-color: #007BFF;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        td img {
            width: 50px;
            height: 50px;
            object-fit: cover;
            border-radius: 5px;
        }

        a {
            text-decoration: none;
            color: #007BFF;
            padding: 5px 10px;
            border: 1px solid #007BFF;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        a:hover {
            background-color: #007BFF;
            color: white;
        }

        .actions {
            display: flex;
            justify-content: center;
            gap: 10px;
        }

        .actions a {
            padding: 5px 10px;
            font-weight: bold;
        }

        .container {
            width: 90%;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .add-product {
            display: block;
            margin: 20px auto;
            padding: 10px 20px;
            background-color: #28a745;
            color: white;
            text-align: center;
            font-size: 16px;
            border-radius: 5px;
            text-decoration: none;
        }

        .add-product:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Liste des Produits</h2>

    <table>
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
            <td><img src="<%= produit.getImage() %>" alt="<%= produit.getNom() %>"></td>
            <td class="actions">
                <a href="ProduitServlet?action=details&id=<%= produit.getId() %>">Détails</a>
                <a href="ProduitServlet?action=modifier&id=<%= produit.getId() %>">Modifier</a>
                <a href="ProduitServlet?action=supprimer&id=<%= produit.getId() %>" onclick="return confirm('Supprimer ce produit ?');">Supprimer</a>
            </td>
        </tr>
        <% } %>
    </table>

    <a href="ajouterProduit.jsp" class="add-product">Ajouter un produit</a>
</div>

</body>
</html>
