package vn.edu.nlu.model;

import java.io.Serializable;
import java.util.List;

public class Product extends AbstractModel<Product> implements Serializable {
    private String code;
    private String categoryCode;
    private String name;
    private int price;
    private String cover;
    private String sex;
    private String description;
    private boolean status;
    private String categoryName;
    private List<ImagesOfProduct> images;
    private List<DetailProduct> details;
    private List<Size> sizes;

    // empty constructor
    public Product() {
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getCategoryCode() {
        return categoryCode;
    }

    public void setCategoryCode(String categoryCode) {
        this.categoryCode = categoryCode;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCover() {
        return cover;
    }

    public void setCover(String cover) {
        this.cover = cover;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getSex() {
        return sex;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public List<ImagesOfProduct> getImages() {
        return images;
    }

    public void setImages(List<ImagesOfProduct> images) {
        this.images = images;
    }

    public List<DetailProduct> getDetails() {
        return details;
    }

    public void setDetails(List<DetailProduct> details) {
        this.details = details;
    }

    public List<Size> getSizes() {
        return sizes;
    }

    public void setSizes(List<Size> sizes) {
        this.sizes = sizes;
    }
}