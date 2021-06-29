package entities;

import java.io.Serializable;

public class Cart implements Serializable {
    private String title;
    private int quantity;

    public Cart() {
    }

    public Cart(String title, int quantity) {
        this.title = title;
        this.quantity = 1;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

}
