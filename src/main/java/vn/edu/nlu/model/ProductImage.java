package vn.edu.nlu.model;

import java.io.Serializable;

public class ProductImage implements Serializable {
    private int no;
    private String productId;
    private String productImage;

    public ProductImage() {}

    public int getNo() {
        return no;
    }

    public void setNo(int no) {
        this.no = no;
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public String getProductImage(String hinhanhsanpham) {
        return productImage;
    }

    public void setProductImage(String productImage) {
        this.productImage = productImage;
    }
}
