package entities;

import java.util.HashMap;

public class CartBean extends HashMap {
    public CartBean() {
        super();
    }

    public void addItems(Cart items) {
        String key = items.getTitle();
        if (this.containsKey(key)) {
            int oldQuantity = ((Cart) this.get(key)).getQuantity();
            ((Cart) this.get(key)).setQuantity(oldQuantity + 1);
        } else {
            this.put(items.getTitle(), items);
        }
    }

    public boolean removeItems(String title) {
        if (this.containsKey(title)) {
            this.remove(title);
            return true;
        }
        return false;
    }

}
