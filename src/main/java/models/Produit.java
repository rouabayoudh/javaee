package models;

public class Produit {
    private int id;
    private String nom;
    private String description;
    private double prix;
    private String image;

    public Produit() {}



    public Produit(String nom, String description, double prix, String image) {

        this.nom = nom;
        this.description = description;
        this.prix = prix;
        this.image = image;
    }

    public double getPrix() {
        return prix;
    }

    public void setPrix(double prix) {
        this.prix = prix;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }
}

