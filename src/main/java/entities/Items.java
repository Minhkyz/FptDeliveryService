package entities;

public class Items {
    private int id;
    private double price;
    private String name;
    private String image;
    private String description;
    private int categoryID;
    public int getAmount() {
        if(amount == 0 ){
            return 1;
        }
        else return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }
    private int amount;
    public Items() {
    }

    public Items(int id, double price, String name, String image, String description, int categoryID) {
        this.id = id;
        this.price = price;
        this.name = name;
        this.image = image;
        this.description = description;
        this.categoryID = categoryID;
    }
    public Items(int id, double price, String name, String image, String description, int categoryID, int amount) {
        this.id = id;
        this.price = price;
        this.name = name;
        this.image = image;
        this.description = description;
        this.categoryID = categoryID;
        this.amount = amount;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(int categoryID) {
        this.categoryID = categoryID;
    }

    @Override
    public String toString() {
        return "Items{" +
                "id=" + id +
                ", price=" + price +
                ", name='" + name + '\'' +
                ", image='" + image + '\'' +
                ", description='" + description + '\'' +
                ", categoryID=" + categoryID +
                '}';
    }
}
