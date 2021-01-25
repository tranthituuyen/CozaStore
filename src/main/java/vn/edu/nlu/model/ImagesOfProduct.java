package vn.edu.nlu.model;

public class ImagesOfProduct extends AbstractModel<ImagesOfProduct> {
    private String productCode;
    private String img;

    public String getProductCode() {
        return productCode;
    }

    public String getImg() {
        return img;
    }

    public void setProductCode(String productCode) {
        this.productCode = productCode;
    }

    public void setImg(String img) {
        this.img = img;
    }
}
