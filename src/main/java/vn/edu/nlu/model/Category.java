package vn.edu.nlu.model;

import java.io.Serializable;

public class Category extends AbstractModel<Category> implements Serializable {
    private String code;
    private String name;
    private int numberOfProduct;

    public Category() {}

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getNumberOfProduct() {
        return numberOfProduct;
    }

    public void setNumberOfProduct(int numberOfProduct) {
        this.numberOfProduct = numberOfProduct;
    }
}