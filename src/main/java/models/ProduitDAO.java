package models;

import java.sql.*;

import java.util.ArrayList;
import java.util.List;

public class ProduitDAO {
    private Connection connection;

    public ProduitDAO() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root", "azerty");
        } catch (ClassNotFoundException e) {
            System.err.println("Driver JDBC non trouvé !");
            e.printStackTrace();
        } catch (SQLException e) {
            System.err.println("Erreur de connexion à la base de données !");
            e.printStackTrace();
        }
    }

    public List<Produit> getAllProduits() {
        List<Produit> produits = new ArrayList<>();
        try {
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM produits");

            while (rs.next()) {
                Produit p = new Produit();
                p.setId(rs.getInt("id"));
                p.setNom(rs.getString("nom"));
                p.setDescription(rs.getString("description"));
                p.setPrix(rs.getDouble("prix"));
                p.setImage(rs.getString("image"));
                produits.add(p);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return produits;
    }
    public Produit getProduitById(int id) {
        Produit produit = null;
        try {
            PreparedStatement ps = connection.prepareStatement("SELECT * FROM produits WHERE id = ?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                produit = new Produit();
                produit.setId(rs.getInt("id"));
                produit.setNom(rs.getString("nom"));
                produit.setDescription(rs.getString("description"));
                produit.setPrix(rs.getDouble("prix"));
                produit.setImage(rs.getString("image"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return produit;
    }


    public void ajouterProduit(Produit produit) {
        try {
            PreparedStatement ps = connection.prepareStatement(
                    "INSERT INTO produits (id, nom, description, prix, image) VALUES (?, ?, ?, ?, ?)"
            );
            ps.setInt(1, produit.getId()); // Ajout de l'ID
            ps.setString(2, produit.getNom());
            ps.setString(3, produit.getDescription());
            ps.setDouble(4, produit.getPrix());
            ps.setString(5, produit.getImage());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void updateProduit(Produit produit) {
        try {
            PreparedStatement ps = connection.prepareStatement(
                    "UPDATE produits SET nom = ?, description = ?, prix = ?, image = ? WHERE id = ?"
            );
            ps.setString(1, produit.getNom());
            ps.setString(2, produit.getDescription());
            ps.setDouble(3, produit.getPrix());
            ps.setString(4, produit.getImage());
            ps.setInt(5, produit.getId());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteProduit(int id) {
        try {
            PreparedStatement ps = connection.prepareStatement("DELETE FROM produits WHERE id = ?");
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }



}
