package online.flowers.model;

import online.flowers.entity.ProductEntity;

public class CartItem extends ProductEntity {
    private int quantity;
    private float total;

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public float getTotal() {
        return total;
    }

    public void setTotal(float total) {
        this.total = total;
    }
}
